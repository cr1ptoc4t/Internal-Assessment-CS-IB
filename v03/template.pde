void template() {
  background(platinum);

  //banner
  fill(blackCoral);
  rect(marginW, marginH, width-2*marginW, hBanner);

  //logo
  /*
  fill(prussianBlue);
  rect(marginW+10, marginH+10, logoW, hBanner-20);
  */

  if(pantalla!=0){
    logoDrawing(160, 44, 30);
  }

  fill(255,255,255);
  
  text("Mi equipo", 250 +(width- 200)/6, hBanner/2);
  text("Pizarra", 250 +2*(width- 200)/6, hBanner/2);
  text("Resultados", 250 +3*(width- 200)/6, hBanner/2);
  text("Guardados", 250 +4*(width- 200)/6, hBanner/2);
  text("Sobre nosotros", 250 +5*(width- 200)/6, hBanner/2);
  
  pushStyle();
  
  rectMode(LEFT);

  goToMiEquipo.display();
  goToPizarra.display();
  goToResultados.display();
  goToGuardados.display();
  goToSobreNosotros.display();
  popStyle();



  //zona libre

  fill(200, 200, 200);
  rect(marginW, hBanner+marginH, width-2*marginW, height - 2*marginH - hBanner);
}


void logoDrawing(float x, float y, int z){
  pushStyle();
    pushMatrix();
    String nombre = "keep the ball flying";
        textAlign(CENTER);
        textFont(fuente2);
        textSize(z);
        fill(redSalsa);
        
        if(pantalla!=0){
          text(nombre,x, y);
          fill(255);
          text(nombre,x+1,y+1);
          fill(royalBlueDark);
          text(nombre,x+2,y+2);
        } else{
          text(nombre,x, y);
          fill(255);
          text(nombre,x+2,y+2);
          fill(royalBlueDark);
          text(nombre,x+4,y+4);
        }
    popMatrix();
  popStyle();
}