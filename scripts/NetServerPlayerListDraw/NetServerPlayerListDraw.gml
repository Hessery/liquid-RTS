function NetPlayerListDraw() {
    
    var st = DrawSet([])
    
    for (var i = 0; i < array_length(player_list); i ++) {
        DrawSet([c_red])
        if (player_list[i].ping < 200)  { DrawSet([c_orange]) }
        if (player_list[i].ping < 100)  { DrawSet([c_lime]) }
        if (player_list[i].ping < 10)   { DrawSet([c_aqua]) }
        if (player_list[i].ping = 999)  { DrawSet([c_white]) }
        
        var text = "(" + player_list[i].ping + "ms) " + player_list[i].name;
        draw_text(32, 64 + (i * 22), text);
    }
    
    DrawSet(st);
    
}