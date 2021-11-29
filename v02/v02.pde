

//Button b1;
Button goToMiEquipo, goToPizarra, goToResultados, goToGuardados, goToSobreNosotros;
Button trainingButton;
Pissarra p;
Table t;
Player p1;

void setup() {

  p = new Pissarra(50, 50, 700,700);

  //b1 = new Button("a", width/2 - wButton/2, height/2, wButton, hButton, true);
  goToMiEquipo   =  new Button("", 150 + 1*(width- 120)/6, hBanner/5, 150 + 2*(width- 120)/6, hButton, false);
  goToPizarra    =  new Button("", 150 + 2*(width- 120)/6, hBanner/5, 150 + 3*(width- 120)/6, hButton, false);
  goToResultados =  new Button("", 150 + 3*(width- 120)/6, hBanner/5, 150 + 4*(width- 120)/6, hButton, false);
  goToGuardados  =  new Button("", 150 + 4*(width- 120)/6, hBanner/5, 150 + 5*(width- 120)/6, hButton, false);
  goToSobreNosotros=new Button("", 150 + 5*(width- 120)/6, hBanner/5, 150 + 6*(width- 120)/6, hButton, false);


  trainingButton = new Button("", width/2 - wButtonTraining/2, hButtonTraining-20, wButtonTraining ,hButtonTraining , false);

  // Creació de la taula
  t = new Table(files, columnes);
  t.setHeaders(headers);
  t.setData(info);
  t.setColumnWidths(colWidths);

  //creació jugador
  p1 = new Player("Pere Joan", "Gomila" , "home", "Libero", "Col", 10, 999999999, 2001, 16, 2);

  size(1200, 780);
  noStroke();
  textAlign(CENTER);
  textSize(18);
  int pantalla = 0;
  recorrArrayInfo();
  printArray(info);
}

//
enum pantallas {
  START, MIEQUIPO, PIZARRA, RESULTADOS, GUARDADOS, SOBRENOSOTROS
};


void draw() {
  template();
  pushMatrix();
  translate(marginW, hBanner+marginH);
  pantallas();
  //println(pantalla);
  //mousePointer();
  updateCursor();
}


void pantallas (){
  

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
  if ( key=='d' || key =='D') {
    pantalla++;
  }
  if ( key=='a' || key =='A') {
    pantalla--;
  }
}

void mousePointer(){
  if(mousePressed){  
    println("mouse X: "+ mouseX);
    println("mouse Y: "+ mouseY);
    
  }

  
}

void updateCursor(){
  
  if((goToMiEquipo.mouseOverButton() && goToMiEquipo.enabled)||
     (goToGuardados.mouseOverButton() && goToGuardados.enabled)||
     (goToPizarra.mouseOverButton() && goToPizarra.enabled) ||
     trainingButton.mouseOverButton()){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }

}

void mousePressed(){
  if(goToMiEquipo.mouseOverButton() && mousePressed){
    pantalla =1;
  }
  if(goToGuardados.mouseOverButton() && mousePressed){
    pantalla =3;
  }
  if(goToPizarra.mouseOverButton()  && mousePressed){
    pantalla = 2;  
  }
  if(goToSobreNosotros.mouseOverButton() && mousePressed){
    pantalla = 3;
  }
  
}
