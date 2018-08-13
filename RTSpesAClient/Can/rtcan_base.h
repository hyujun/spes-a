#ifndef _RTCAN_H_
#define _RTCAN_H_

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <termios.h>
#include <time.h>

#include <sys/ioctl.h>
#include <sys/mman.h>

#include <rtdm/rtcan.h>

#define MAX_FILTER 10

typedef union{
	unsigned char 	uint8Value[4];
	unsigned short 	uint16Value[2];
	unsigned long 	uint32Value;
}DATA_OBJECT;


class rtcan_base{

public:
    rtcan_base();
    rtcan_base(char* dev);
    virtual ~rtcan_base(void);

protected:
    struct can_filter recv_filter[MAX_FILTER];
    struct ifreq ifr;
    struct can_frame tx_frame, rx_frame;
    struct sockaddr_can tx_addr, rx_addr;
    int filter_count;

    int ret;

public:

    int sock;

    int rtsock_init(char *ifname);
    void deactivate(void);

    int transmitter(uint32_t id, uint8_t *data, uint8_t dlc);
    int receiver(uint32_t &id, uint8_t *data, uint8_t dlc);
    int add_filter(u_int32_t id, u_int32_t mask);

    };
#endif
