

int nPlayers = 14;
int pantalla;

Button b1;
Button goToMiEquipo, goToPizarra, goToResultados, goToGuardados, goToSobreNosotros;

Pissarra p;


void setup() {


  //b1 = new Button("a", width/2 - wButton/2, height/2, wButton, hButton, true);
  goToMiEquipo   =  new Button("", 150 + 1*(width- 120)/6, hBanner/5, 150 + 2*(width- 120)/6, hButton, false);
  goToPizarra    =  new Button("", 150 + 2*(width- 120)/6, hBanner/5, 150 + 3*(width- 120)/6, hButton, false);
  goToResultados =  new Button("", 150 + 3*(width- 120)/6, hBanner/5, 150 + 4*(width- 120)/6, hButton, false);
  goToGuardados  =  new Button("", 150 + 4*(width- 120)/6, hBanner/5, 150 + 5*(width- 120)/6, hButton, false);
  goToSobreNosotros=new Button("", 150 + 5*(width- 120)/6, hBanner/5, 150 + 6*(width- 120)/6, hButton, false);
  p = new Pissarra(50, 50, 700,700);

  size(1200, 780);
  noStroke();
  textAlign(CENTER);
  textSize(18);
  pantalla = 2;
}

//
enum pantallas {
  START, MIEQUIPO, PIZARRA, RESULTADOS, GUARDADOS, SOBRENOSOTROS
};


void draw() {

  background(platinum);
  template();
  pushMatrix();
  translate(marginW, hBanner+marginH);
  pantallas();
  popMatrix();
  //mousePointer();
}


void pantallas (){
  
  if (pantalla==0) { //entrada
    p0();
  }
  if (pantalla==1) { //mi equipo
    p1();
  }
  if (pantalla==2) { // pizarra
    p2();
  }
  if (pantalla==3) {
    p1();
  }
  if (pantalla==4) {
    p1();
  }
  
}



void mouseDragged(){
  // Comprova si ha de moure algun pin
  p.checkPinsMotion();
}

void keyPressed(){
  if(key=='r' || key=='R'){
    // Resetea les posicions dels pins
    p.resetPinPositions();
  }
  if (key=='d') {
    pantalla++;
  }
  if (key=='a') {
    pantalla--;
  }
}



void mousePointer(){
  if(mousePressed){  
    println("mouse X: "+ mouseX);
    println("mouse Y: "+ mouseY);
  }
}