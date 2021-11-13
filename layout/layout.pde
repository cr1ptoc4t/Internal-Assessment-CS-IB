//dimensions logo



void setup() {
  size(1200, 780);
  noStroke();
  textAlign(CENTER);
  textSize(18);
}

void draw() {

  if (pantalla==0) { //entrada
    p0();
  }
  if (pantalla==1) { //mi equipo
    p1();
  }
  if (pantalla==2) { //
    p1();
  }
  if (pantalla==3) {
    p1();
  }
  if (pantalla==4) {
    p1();
  }
}

void keyPressed() {
  if (key=='d') {
    pantalla++;
  }
}
