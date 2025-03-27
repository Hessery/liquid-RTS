function NetClientStartConnection() {
	
	if (async_load[? "succeeded"] = false) { 
		NetConnectionEnd(); 
		DevConsoleLog("Failed to connect to a server"); 
		return;
	}
	
	DevConsoleLog("Connection established with host")
	
	var b = NetBufferCreate();
	buffer_write(b, buffer_u8, PACKET_CONNECTION);
	buffer_write(b, buffer_string, global.username);
	network_send_packet(global.socket, b, buffer_tell(b));
	
}