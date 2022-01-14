void resultados(){
    r1.display();
    r2.display();
    r3.display();
    
   
}

void nuevoJugador(boolean display){
    if(display){
        campo("Nombre: ", 200, 300);
    }
}

void campo(String txt, float x, float y){
    pushStyle();
        stroke(255); textAlign(CORNER);
        text(txt, x, y);
        fill(255); rectMode(CORNER);
        rect( x+ 40, y, 50.0, 7.0);
    popStyle();
}