switch (async_load[? "type"]) {
	case ASYNC_DATA:				NetClientData();			break;
	case ASYNC_CLIENT_CONNECTION:	NetClientStartConnection();	break;
}