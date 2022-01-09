void resultados(){
    r1.display();
    r2.display();
    
   
}

void nuevoJugador(boolean display){
    if(display){
        campo("Nombre: ", 200, 300);
    }
}

void campo(String txt, float x, float y){
    text(txt, x, y);
    rect( x+ 40, y, 50.0, 7.0);
}