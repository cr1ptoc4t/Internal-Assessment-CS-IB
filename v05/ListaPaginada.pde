class ListaPaginada{
    Resultado[] r;
    RoundButton bPrev, bNext;
    int currentRes=0;
    int numRes =0;
    int numResVisibles = 4;
    float x, y, w, h;

    ListaPaginada(Resultado[] r, float x, float y, float w, float h){
        this.r = r;
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
    }

    void display(){

        for(int i=currentRes*numResVisibles;i<numResVisibles+currentRes*numResVisibles; i++){
            if(r[i] != null){
                r[i].display();
            }
        }
        
        if(currentRes*numResVisibles>r.length){
            next.setEnabled(false);
        } else{
            next.setEnabled(true);
        }
        if(currentRes*numResVisibles==0){
            prev.setEnabled(false);
        } else{
            prev.setEnabled(true);
        }
        //bPrev.display();
        //bNext.display();
    }

    void setButtons(String img1, String img2) {
        PImage imgPrev = loadImage(img1);
        bPrev = new RoundButton(imgPrev, x, y + h/2, 30);

        PImage imgNext = loadImage(img2);
        bNext = new RoundButton(imgNext, x + w + 30, y + h/2, 30);
    }

    void next() {
        this.currentRes++;
        //falta hacer algun if para no exceder las casillas del array
    }

    void prev() {
        this.currentRes--;
    }
}

