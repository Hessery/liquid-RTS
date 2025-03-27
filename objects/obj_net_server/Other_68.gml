switch (async_load[? "type"]) {
	case NET_CONNECT:			NetConnect();				break;
	case NET_DISCONNECT:		NetDisconnect();			break;
	case NET_DATA:				NetServerData();			break;
}