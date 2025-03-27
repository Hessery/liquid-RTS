function NetBufferCreate() {
    
    return buffer_create(1, buffer_grow, 1);
    
}