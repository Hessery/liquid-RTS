var st = DrawSet([c_red]);
draw_rectangle(x - 16, y + 20, x + 16, y + 24, false);
DrawSet([c_lime]);
draw_rectangle(x - 16, y + 20, (x - 16) + ((hp / maxHp) * 32), y + 24, false);
DrawSet(st);