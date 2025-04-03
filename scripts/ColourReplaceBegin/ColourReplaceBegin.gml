function ColourReplaceBegin(colour) {
    
    shader_set(sh_replace_colour);

    var color_old1 = shader_get_uniform(sh_replace_colour, "color_old1");
    var color_new1 = shader_get_uniform(sh_replace_colour, "color_new1")
    
    var r = colour_get_red(colour);
    var g = colour_get_green(colour);
    var b = colour_get_blue(colour);
    
    shader_set_uniform_f(color_old1, 1, 0, 1, 10/255);
    shader_set_uniform_f(color_new1, r/255, g/255, b/255);
    
}