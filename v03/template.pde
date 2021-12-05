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
  pushStyle();
    pushMatrix();
    textAlign(LEFT);
        textFont(fuente2);
        textSize(30);
        fill(redSalsa);
        text("keep the ball flying",24, 44);
        fill(255);
        text("keep the ball flying",25,45);
        fill(royalBlueDark);
        text("keep the ball flying",26,46);
    popMatrix();
  popStyle();

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
