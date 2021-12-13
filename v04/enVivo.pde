void enVivo(Player p){
    pushStyle();
        strokeWeight(1);
        fill(blackCoral);
        line(width/2, 0, width/2, height-hBanner);
        
        rectMode(CENTER);
        rect(150,50, 200, 50, 10);
        fill(255);
        text("Pick a player", 150, 55);
        

        if(p.firstPos=="Col"){
            String hability1 = "colocación";
            String hability2 = "finta";
            String hability3 = "ace";
            String hability4 = "bloqueo";
            String hability5 = "otro";
        } if(p.firstPos=="Punta"||p.firstPos=="Opuesto"||p.firstPos=="central"){
            String hability1 = "finta";
            String hability2 = "remate";
            String hability3 = "ace";
            String hability4 = "bloqueo";
            String hability5 = "otro";
        } if(p.firstPos=="Libero"){
            String hability1 = "doble positiva";
            String hability2 = "positiva";
            String hability3 = "negativa";
            String hability4 = "doble negativa";
            String hability5 = "otro";
        }

        text(hability1+":", 160, 1*(width - hBanner- 200)/6);
        text(hability2+":", 160, 2*(width - hBanner- 200)/6);
        text(hability3+":", 160, 3*(width - hBanner- 200)/6);
        text(hability4+":", 160, 4*(width - hBanner- 200)/6);
        text(hability5+":", 160, 5*(width - hBanner- 200)/6);
       

    popStyle();
}