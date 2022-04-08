//pantalla tabla
void p1(){

  pushStyle();
    //dibujar el objeto tabla
    t.display((width-tableW)/2, 100, tableW, tableH);
    
    //dibujar los botones correspondientes
    b1.display();
    b2.display();
    
    // Actualizar forma del cursor
    updateCursor();
    
    //Dibujar el nuevo jugador como objeto
    newPlayer.display();

  popStyle();
}

//pantalla para introducir un nuevo jugador
void newPlayer(){
  textAlign(LEFT);
  pushStyle();
    image(usuario, 130, 70, 50, 50);
    textSize(100);
    textFont(fuente2);
    fill(255);
    text("Nuevo jugador", 198, 98);
    fill(royalBlueDark);
    text("Nuevo jugador", 200, 100);
  popStyle();

  textSize(15); fill(0);

  pushStyle();
    fill(blackCoral);
    fill(0);
    textAlign(LEFT);
    
    pushStyle();
      textFont(fuente2);
      textSize(25);
      fill(blackCoral);
      text("Datos personales y de contacto: " , width/10, 200);
    popStyle();

    pushStyle();
      textSize(18);
      fill(0,0,0,0);
      stroke(0);
      strokeWeight(1);

      //caja 1
      beginShape();
        vertex(width/10 - 5, 190);
        vertex(width/10 - 15, 190);
        vertex(width/10 - 15, 500);
        vertex(width/10 + 500, 500);
        vertex(width/10 + 500, 190);
        vertex(width/10 + 400, 190);
      endShape();

      //caja 2
      beginShape();
        vertex(width/2 +100 - 5, 190);
        vertex(width/2 +100 - 15, 190);
        vertex(width/2 +100 - 15, 500);
        vertex(width/2 +100 + 500, 500);
        vertex(width/2 +100 + 500, 190);
        vertex(width/2 +100 + 250, 190);
      endShape();
    popStyle();

  pushStyle();
    textFont(fuente1);
    fill(blackCoral);
    textSize(16);
    text("Fecha de nacimiento:                  /        /", 200, 250);
    text("Telefono personal:", 200, 300);
    text("Correo electrónico: ",200, 350);
    text("DNI: ",200, 400);
  popStyle();
  popStyle(); 
  pushStyle();
    fill(blackCoral);
    textFont(fuente2);
    textSize(25);
    text("Datos deportivos: ", width/2 + 120, 200);
  popStyle(); 

  pushStyle();
     textFont(fuente1);
     fill(blackCoral);
     textSize(16);
     text("Número dorsal: ", width/2+150, 250);
     text("Primera posición: ", width/2 +150, 300);
     text("Segunda posición: ",  width/2+150, 350);
     
     telefono.display();
     dni.display();
     dayn.display();
     monthn.display();
     yearn.display();
     correo.display();
     ndorsal.display();
  popStyle();

}