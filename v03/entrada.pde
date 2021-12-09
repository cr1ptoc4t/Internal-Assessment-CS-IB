void p0(){
    video();
    pushStyle();
        textFont(fuente2);
        fill(255);
        text("keep the ball flying",width/2-2,(height-hBanner)/2 -2);
        fill(royalBlueDark);
        text("keep the ball flying",width/2,(height-hBanner)/2);
    popStyle();
    
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