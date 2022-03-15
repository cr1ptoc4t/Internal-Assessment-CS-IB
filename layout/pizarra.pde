void p2() {
  template();
  halfBlackboard();
  toolBar();
}

void halfBlackboard() {
  pushMatrix();
    pushStyle();
      rectMode(CENTER);
      fill(255);
      rect(width/2, height/2, wBlackboard, hBlackboard);
      stroke(0);
      strokeWeight(3);
      beginShape();
      translate(width/2-wBlackboard/2,height/2-hBlackboard/2);
        vertex(0, 0);
        vertex(0, hBlackboard);
        vertex(wBlackboard, hBlackboard);
        vertex(wBlackboard, 0);
      endShape(CLOSE);
      line(-30, 2*hBlackboard/3, wBlackboard + 30,2*hBlackboard/3);
      line(-40, hBlackboard, wBlackboard + 40, hBlackboard);
    popStyle();
  popMatrix();
}

void toolBar(){
  pushStyle();
    fill(255);
    stroke(0);
    strokeWeight(0);
    
    rect(width-wTB-marginW,bannerH+marginH, wTB, height-bannerH-2*marginH);
    strokeWeight(2);
    line(width-wTB-marginW, bannerH+marginH, width-wTB-marginW, height-marginH);
    pushMatrix();
      fill(0);
      rotate(-HALF_PI);
      textSize(20);
      text("toolbar", width- 10, height/2);
    popMatrix();
    
  popStyle();
}
