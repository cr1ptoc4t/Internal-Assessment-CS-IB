void template() {
  background(platinum);
 
  //banner
  fill(blackCoral);
  rect(marginW, marginH, width-2*marginW, bannerH);
  
  //logo
  fill(prussianBlue);
  rect(marginW+10, marginH+10, logoW, bannerH-20);

  for (int i=width/3, s=0; i< (width-marginW); i+=140, s++) {
    fill(255, 255, 255);
    text("Sección "+s, i, bannerH/2 + marginH);
  }

  //zona libre

  fill(200, 200, 200);
  rect(marginW, bannerH+marginH, width-2*marginW, height - 2*marginH - bannerH);
}
