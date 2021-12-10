void p0(){
    //video();
    logoDrawing(width/2, (height- hBanner)/2 , 80);  
}

void video(){
    image(img[f], 0, 0, width, height);
    fill(0,0,0,150);
    rect(0,0, width, height);
    if (frameCount%2==0&& vid) {
        f++;
        }
  if (f==nFotogramas-1) {
        vid = false;
  }
}