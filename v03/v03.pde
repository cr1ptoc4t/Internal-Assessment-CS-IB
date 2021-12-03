
PFont fuente1, fuente2;

Button goToMiEquipo, goToPizarra, goToResultados, goToGuardados, goToSobreNosotros;
Button trainingButton;
Pissarra p;
Table t;
Player p1;
Select entrenamiento,competicion;
Select mediaPista, pistaEntera;


//datos video
PImage[] img;
int nFotogramas = 44;
int f = 1;
boolean vid = true;


void setup() {

  p = new Pissarra(50, 140, 700,700, -100, width-90);

  //b1 = new Button("a", width/2 - wButton/2, height/2, wButton, hButton, true);
  goToMiEquipo      =  new Button("", 150 + 1*(width- 120)/6, hBanner/5, 150 + 2*(width- 120)/6, hButton, false);
  goToPizarra       =  new Button("", 150 + 2*(width- 120)/6, hBanner/5, 150 + 3*(width- 120)/6, hButton, false);
  goToResultados    =  new Button("", 150 + 3*(width- 120)/6, hBanner/5, 150 + 4*(width- 120)/6, hButton, false);
  goToGuardados     =  new Button("", 150 + 4*(width- 120)/6, hBanner/5, 150 + 5*(width- 120)/6, hButton, false);
  goToSobreNosotros =  new Button("", 150 + 5*(width- 120)/6, hBanner/5, 150 + 6*(width- 120)/6, hButton, false);

  trainingButton    =  new Button("", width/2 - wButtonTraining/2, hButtonTraining-20, wButtonTraining ,hButtonTraining , false);

  entrenamiento     =  new Select("Modo entrenamiento",50, 70 ,  true,   20);
  competicion       =  new Select("Modo competición",  50, 100 , false,  20);
  mediaPista        =  new Select("Media pista",       50, 150 , false,  20);
  pistaEntera       =  new Select("Pista entera",      50, 180 , true,   20);

  subeFotogramas();


  // Creació de la taula
  t = new Table(files, columnes);
  t.setHeaders(headers);
  t.setData(info);
  t.setColumnWidths(colWidths);

  //creació jugador
  p1 = new Player("Pere Joan", "Gomila" , "home", "Libero", "Col", 10, 999999999, 2001, 16, 2, "perej@mail.com");

  fuente1 = createFont("HKGrotesk-Bold.otf", 40);
  fuente2 = createFont("Coco-Sharp-Extrabold-trial.ttf", 40);

  size(1200, 780);
  noStroke();
  textAlign(CENTER);
  textSize(18);
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
  calibrateBlackboardModes();
  updateCursor();
}


void pantallas (){
  //println(pantalla);

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
    p3();
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
  if (key=='t'){
    mediaPista.setSelected(!mediaPista.getSelected());
    pistaEntera.setSelected(!mediaPista.getSelected());

  }
  if (key=='c'){
    competicion.setSelected(!competicion.getSelected());
    entrenamiento.setSelected(!competicion.getSelected());

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
  if(goToInicio()&& mousePressed){
    pantalla = 0;
  }
  
}

void calibrateBlackboardModes(){
  /*
  if(entrenamiento.getSelected()){
    competicion.setSelected(false);
  }else{
    competicion.setSelected(false);
  }
  
  competicion.setSelected(!entrenamiento.getSelected());

  mediaPista.setSelected(!pistaEntera.getSelected());
  */
  
}

boolean goToInicio(){
  return (mouseX >= marginW+10) && 
          (mouseX<=marginW + logoW) && 
          (mouseY>= marginH+10) && 
          (mouseY<= marginH+10+ hBanner-20); 
}


void subeFotogramas(){
  img = new PImage [nFotogramas] ;

  for (int i=1; i<img.length; i++) {
    img[i-1] = loadImage("fotograma"+i+".jpg");
  }
}

void ejecutaFotogramas(){
  if (frameCount%5==0&& vid) {
    image(img[f-1], 0, 101);
    f++;
  }
  if (f==nFotogramas) {
        vid = false;
  }
}