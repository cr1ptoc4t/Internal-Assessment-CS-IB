void resultados(){
    pushStyle();
        fill(100);
        rectMode(CENTER);
        noStroke();
        for(int i=150; i<height-hBanner;i+= 210){
            rect(width/2, i, width*2/3,200,5);
        }
    popStyle();
}