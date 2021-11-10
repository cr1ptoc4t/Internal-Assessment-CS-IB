PImage[] img;
int nFotogramas = 44;
int f = 1;

void setup() {
  size(1200, 700);
  background(#E2E2E2);
  textSize(40);
  textAlign(CENTER);
  fill(#0A2463);

  img = new PImage [nFotogramas] ;

  for (int i=1; i<img.length; i++) {
    img[i-1] = loadImage("fotograma"+i+".jpg");
  }
}
void draw() {


  if (frameCount%5==0) {
    image(img[f], 0, 101);
    f++;
  }
  if (f==nFotogramas) {
    noLoop();
  }
  //banner
  fill(#3f5a6e);
  rect(0, 0, width, 100);
  textSize(40);
  textAlign(CENTER);
  fill(255);
  text("keep the ball flying", width/2, 50);
}
