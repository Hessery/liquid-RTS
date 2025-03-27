switch (async_load[? "type"]) {
	case ASYNC_CONNECT:		NetConnect();		break;
	case ASYNC_DISCONNECT:	NetDisconnect();	break;
	case ASYNC_DATA:		NetServerData();	break;
}