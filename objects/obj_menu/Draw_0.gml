// TODO: Refactor this. The page title should be in each draw event?
var str = ""

switch (global.menu_state) {
	case MENU_MAIN:		str = "Main Menu";	MenuMainDraw();		break;
	case MENU_LOBBY:	str = "Lobby";		MenuLobbyDraw();	break;
	case MENU_OPTIONS:	str = "Options";	MenuOptionsDraw();	break;
}

var st = DrawSet([c_black, 0.2, fnt_menu_title, fa_left, fa_bottom])
draw_text(10, room_height, str);
DrawSet(st)