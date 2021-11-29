
//PROBLEMA BOTÓ TRAIN/PLAY!!!
// FALTA TEXT BOTONS
void p2(){

  trainingButton.display();
  trainingButton1();
  toolBar(training);
  
  if(halfB){
    halfBlackboard();
    p.displayPins1();
  } else if (!halfB) {
    fullBlackboard();

    //p.displayPins1();
    //p.displayPins2();
  }
  
  p.checkPinsMotion();
  checkChanges();
  
  if (training){
    text("TRAINING", width/2, height/2);
  } else{
    text("PLAYING", width/2, height/2);
    
    }
}
 
void halfBlackboard() {
 
  pushMatrix();
    pushStyle();
     
      rectMode(CENTER);
      fill(255);
      rect(width/2, height/2, wBlackboard, hBlackboard);
      stroke(0);
      strokeWeight(3);
      translate(width/2-wBlackboard/2,height/2-hBlackboard/2);
     
      beginShape();
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
 
void toolBar(boolean training){
  
  pushStyle();
    
    fill(255);
    stroke(0);
    strokeWeight(0);
   
    rect(width-wTB-marginW,0, wTB, height-hBanner-2*marginH);
    strokeWeight(2);
    line(width-wTB-marginW, 0, width-wTB-marginW, height-hBanner-2*marginH);
 
    if (training){
      
    }

  popStyle();
}
 
void fullBlackboard(){

  pushMatrix();
    pushStyle();
    
      rectMode(CENTER);
      fill(255);
      //rect(width/2, height/2, wBlackboard*2, hBlackboard);
      stroke(0);
      strokeWeight(3);
      translate(width/2-wBlackboard,height/2-hBlackboard/2-10);
    
      beginShape();
        vertex(0, 0);
        vertex(0, hBlackboard);
        vertex(wBlackboard*2, hBlackboard);
        vertex(wBlackboard*2, 0);
      endShape(CLOSE);
      
      line(wBlackboard, -30,wBlackboard, hBlackboard+30);
  
    popStyle();
  popMatrix();

}
 
void  trainingButton1(){
  
  if(training){
    c1 = color(150);
    c2 = color(100);
  } else {
    c1 = color(100);
    c2 = color(150);
  }


  pushStyle();

    fill(c1);
    stroke(0);
    strokeWeight(2);
    rect(width/2 - wButtonTraining/2, hButtonTraining-20, wButtonTraining/2, hButtonTraining, 10,0,0,10);
    
    fill(c2);  
    rect(width/2, hButtonTraining-20, wButtonTraining/2, hButtonTraining, 0,10,10,0);
 
  popStyle();
}

void checkChanges(){
  
  if(trainingButton.mouseOverButton() && mousePressed){
    
    training =! training;
  }
  
}