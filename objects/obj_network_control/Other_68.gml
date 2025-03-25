switch (async_load[? "type"]) {
	case NET_CONNECT:			break;
	case NET_DISCONNECT:		break;
	case NET_DATA:				break;
	case NET_CLIENT_CONNECTION:	NetStartClientConnect();	break;
}