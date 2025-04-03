function NetServerUnitIdNext() {
    
    var next_id = global.net_object.next_id;
    global.net_object.next_id ++
    return next_id;
    
}