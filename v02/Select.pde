class select{
    float x, y, w;
    boolean selected;
    String txt;

    select(String txt, float x, float y, boolean selected, float w){
        this.txt = txt;

        this.x =  x;
        this.y = y;
        this.w = w;
        this.selected = selected;
    }

    void display(){
        pushStyle();
            fill(255,255,255,0);
            stroke(0);
            strokeWeight(1);
            rect(x,y, w, w);

            if(selected){
                strokeWeight(2);
                line(x,y, x+w, y+w);
                line(x, y+w, x+w,y);
            }
        popStyle();
    }
    
    void changeSelected(){
        selected = !selected;
    }



}