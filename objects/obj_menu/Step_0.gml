switch (global.menu_state) {
	case MENU_MAIN:		MenuMainStep();		break;
	case MENU_LOBBY:	MenuLobbyStep();	break;
	case MENU_OPTIONS:	MenuOptionsStep();	break;
}