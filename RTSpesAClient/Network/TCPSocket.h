/*
 * TCPSocket.h
 *
 *  Created on: Aug 6, 2018
 *      Author: spec
 */

#ifndef TCPSOCKET_H_
#define TCPSOCKET_H_

#include <Poco/Net/SocketAddress.h>
#include <Poco/Net/StreamSocket.h>
#include <Poco/Net/SocketStream.h>
#include <Poco/StreamCopier.h>

namespace HYUSocket {

class TCPSocket {
public:
	TCPSocket();
	virtual ~TCPSocket();
};

} /* namespace HYUSocket */

#endif /* TCPSOCKET_H_ */
