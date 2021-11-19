//dimensions logo

Button b1;


void setup() {
  b1 = new Button("txt", width/2 - wButton/2, height/2, wButton, hButton);
  
  size(1200, 780);
  noStroke();
  textAlign(CENTER);
  textSize(18);
}

void draw() {
  template();
  pushMatrix();
  translate(marginW, hBanner+marginH);
  
  
  if (pantalla==0) { //entrada
    p0();
  }
  if (pantalla==1) { //mi equipo
    p1();
  }
  if (pantalla==2) { //
    p2();
  }
  if (pantalla==3) {
    p1();
  }
  if (pantalla==4) {
    p1();
  }
  popMatrix();
}

void keyPressed() {
  if (key=='d') {
    pantalla++;
  }
  if (key=='a') {
    pantalla--;
  }
}
