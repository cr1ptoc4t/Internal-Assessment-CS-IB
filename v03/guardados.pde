void p3(){
    fondo();
}

void fondo(){
    fill(100);
    for(int i=0; i<width; i+=1){
        for(int j=0; j<height; j+=1){
            rect( 25 + i*(width/4+20), 25 + j*(20 + height/4), 300, 200, 5);
            //println(i+" "+j);
        }
    }
}