function NetClientServerAlive() {
    
    server_alive -- 
    if (server_alive <= 0) { 
    	DevConsoleLog("Server conenction lost");
    	NetConnectionEnd();
    }
    
}