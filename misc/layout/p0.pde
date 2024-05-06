void p0(){
  
  template();
  
  
}

void p1(){
  template();

  fill(255);
  rect(width/2 - 900/2, height/2 -200, 900, 500);

  textAlign(CENTER);
  fill(0);
  text("table of players", width/2, (height- bannerH)/2);
  
}

void p2() {
  pushMatrix();
    pushStyle();
      template();
      textMode(CENTER);
      rectMode(CENTER);
      fill(255);
      rect(width/2, height/2, 800, 500);
      fill(0);
      text("PIZARRA: \n media o completa", width/2, height/2);
    popStyle();
  popMatrix();
  toolBar();
  
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
      textSize(50);
      text("toolbar", width- 30, height/2);
    popMatrix();
  popStyle();
}
void p3(){
  template();
  fill(ming);
  pushStyle();
    rectMode(CENTER);
    int j=1;
      for(float i=1.5; i<6; i+=2){
        fill(150);
        rect(i*width/6 - 100, 400 ,350, 600, 5);
        fill(0);
        text("Resultado "+ j,i*width/6 - 100, 400);
        j++;
      }
    textMode(CENTER);
    fill(150);
    rect(width-70, height-30, 100, 40,5);
    fill(0);
    text("NEXT",width- 70, height-30);

    fill(150);
    rect(70, height-30, 100, 40, 5);
    fill(0);
    text("PREV",70, height-30);
  popStyle();
}

void p4(){
  template();
  pushStyle();
    noStroke();
    int k=0;
    for(int i=90; i<(width- 350/2); i+=350){
      for(int j=130; j<(height-80); j+=220){
        fill(125);
        rect(i,j, 320, 190,10);
        fill(0);
        text("Guardado nº"+k, i+320/2, j+190/2);
        k++;
      }
    }
  popStyle();
}

void p5(){
  template();
  pushStyle();
  textMode(CENTER);
    fill(155);
    rect(width-480, 150, 450, 300);
    rect(50, 120, 500, 600);
    fill(0);
    text("imagen 1", width-500/2, 170);
    text("texto", 300, 500);
  popStyle();
}