function NetClientDataGameStart() {
    
    var packet = async_load[? "buffer"];
    start_second = buffer_read(packet, buffer_u8);
    seed = buffer_read(packet, buffer_u16);
    
    obj_dev_console.open = false;
    
}