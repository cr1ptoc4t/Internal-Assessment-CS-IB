Button b1;
Button miEquipo;
Button pizarra;
Button resultados;
Button guardados;
Button sobreNosotros;



void setup() {
  b1 = new Button("a", width/2 - wButton/2, height/2, wButton, hButton, true);
  miEquipo =    new Button("", 250 +1*(width- 120)/6, hBanner/5, wButton, hButton, false);
  pizarra =     new Button("", 250 +2*(width- 120)/6, hBanner/5, wButton, hButton, false);
  resultados =  new Button("", 250 +3*(width- 120)/6, hBanner/5, wButton, hButton, false);
  guardados =   new Button("", 250 +4*(width- 120)/6, hBanner/5, wButton, hButton, false);
  sobreNosotros=new Button("", 250 +5*(width- 120)/6, hBanner/5, wButton, hButton, true);

  size(1200, 780);
  noStroke();
  textAlign(CENTER);
  textSize(18);
}

//
enum pantallas {
  MIEQUIPO, PIZARRA, RESULTADOS, GUARDADOS, SOBRENOSOTROS
};


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
