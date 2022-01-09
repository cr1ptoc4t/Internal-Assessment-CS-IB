class Pop{

    String type;
    boolean d;

    Pop(String type, boolean d){
        this.type=type;
        this.d = d;
    }

    void display(){
        if(d){
            rectMode(CENTER);
            fill(celadonBlue);
            noStroke();
            rect(width/2, (height- hBanner)/2, 2*width/3, 2*height/3);
            textAlign(CENTER);
            text("s" + type,width/2, height/2);
            textAlign(LEFT);

            if (type == "new player"){
                campo("Nombre:", 2*width/3, height/2 -100);       
            }
            
            if (type == "Save"){

            }
        }
        
    }

    String getType(){
        return type;
    }

    void setType(String t){
        type = t;
    }

    boolean getDisplay(){
        return d;
    }

    void setDisp(boolean disp){
        d = disp;
    }

}