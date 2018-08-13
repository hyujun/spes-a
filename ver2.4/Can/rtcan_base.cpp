/* RT Socket base on PEAK PCI
 *  2017.10.24 , biorobotic hanyang.ac.kr
 *
 */
#include "rtcan_base.h"

rtcan_base::rtcan_base()
{
	sock = -1;
	ret = 0;
	filter_count = 0;
}

rtcan_base::rtcan_base(char* dev)
{
	sock = -1;
	ret = 0;
	filter_count = 0;
}

rtcan_base::~rtcan_base()
{

}


void rtcan_base::deactivate(void)
{
    printf("\n>> RTCAN Dev & Socket cleaning up...\n");

    usleep(1000);

    if (sock >= 0)
    {
        ret = rt_dev_close(sock);
        sock  = -1;
        if (ret)
        {
            fprintf(stderr, "rt_dev_close: %s\n", strerror(-ret));
        }
    }
}

int rtcan_base::rtsock_init(char *ifname)
{
    /* Create and configure RX socket */
    ret = rt_dev_socket(PF_CAN, SOCK_RAW, CAN_RAW);

    if (ret < 0){
        fprintf(stderr, "rt_dev_socket: %s\n", strerror(-ret));
        return -1;
    }
    sock=ret;

    strncpy(ifr.ifr_name, ifname, IFNAMSIZ);

    printf("rtcan_socket=%d, ifr_name=%s\n", sock, ifr.ifr_name);

    ret = rt_dev_ioctl(sock, SIOCGIFINDEX, &ifr);
    if (ret < 0){
        fprintf(stderr, "rt_dev_ioctl: %s\n", strerror(-ret));
        goto failure;
    }
    // Suppress definiton of a default receive filter list
    memset(&tx_addr, 0, sizeof(tx_addr));

    tx_addr.can_ifindex = ifr.ifr_ifindex;
    tx_addr.can_family = AF_CAN;

    ret = rt_dev_bind(sock, (struct sockaddr *)&tx_addr, sizeof(struct sockaddr_can));
    if (ret < 0) {
		fprintf(stderr, "rt_dev_bind: %s\n", strerror(-ret));
		goto failure;
    }

    return sock;

failure:
	ret = rt_dev_close(sock);
    return -1;
}

int rtcan_base::transmitter(uint32_t id, uint8_t *data, uint8_t dlc)
{
	if(dlc > 8)
		dlc=8;

	tx_frame.can_id = id;
	tx_frame.can_dlc = dlc;

	memcpy(tx_frame.data, data, dlc);

	ret = rt_dev_sendto(sock, (void *)&tx_frame, sizeof(can_frame_t), 0,
			(struct sockaddr *)&tx_addr, sizeof(tx_addr));
	if (ret < 0) {
		switch (ret) {
		case -ETIMEDOUT:
			printf("rt_dev_send(to): timed out\n");
			break;
		case -EBADF:
			printf("rt_dev_send(to): aborted because socket was closed\n");
			break;
		default:
			fprintf(stderr, "rt_dev_send: %s\n", strerror(-ret));
			break;
		}
	}
	return ret;
}


int rtcan_base::receiver(uint32_t &id, uint8_t *data, uint8_t dlc)
{
    socklen_t addrlen = sizeof(rx_addr);

    ret = rt_dev_recvfrom(sock, (void *)&rx_frame,
    		sizeof(can_frame_t), 0, (struct sockaddr *)&rx_addr, &addrlen);
	if (ret < 0){
		switch (ret) {
		case -ETIMEDOUT:
			printf("rt_dev_recv: timed out\n");
			break;
		case -EBADF:
			printf("rt_dev_recv: aborted because socket was closed\n");
		break;
			default:
			fprintf(stderr, "rt_dev_recv: %s\n", strerror(-ret));
		}
	}
	else{
		id = rx_frame.can_id;
		memcpy(data, rx_frame.data, rx_frame.can_dlc);
	}
	return ret;
}

int rtcan_base::add_filter(u_int32_t id, u_int32_t mask)
{
	if(filter_count >= MAX_FILTER)
		return -1;
	recv_filter[filter_count].can_id = id;
	recv_filter[filter_count].can_mask = mask;
	printf("socket: %d, Filter #%d: id=0x%08x, mask=0x%08x\n", sock, filter_count, id, mask);
	filter_count++;
	return 0;
}

