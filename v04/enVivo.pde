void enVivo (Player p){

    //taula de doble entrada amb noms i habilitats. en funció des nom que has triat, se posaràn en gris unes habilitats o unes altres.
    //fer backeo
    //antiguo(p);
    //lib.display(300, 300, 500, 500);
    enVivoTable.display(50, 50, 1000, height-hBanner- 200);
}

void antiguo(Player p) {

    pushStyle();
        strokeWeight(1);
        fill(blackCoral);
        line(width/2, 0, width/2, height-hBanner);
        
        rectMode(CENTER);
        rect(150,50, 200, 50, 10);
        fill(255);
        text("Pick a player: ", 120, 55);
        

        if(p.firstPos=="Col"){
            hability1 = "colocación";
            hability2 = "finta";
            hability3 = "ace";
            hability4 = "bloqueo";

        } if(p.firstPos=="Punta"||p.firstPos=="Opuesto"||p.firstPos=="central"){
            hability1 = "finta";
            hability2 = "remate";
            hability3 = "ace";
            hability4 = "bloqueo";
    
        } if(p.firstPos=="Libero"){
            hability1 = "doble positiva";
            hability2 = "positiva";
            hability3 = "negativa";
            hability4 = "doble negativa";
            
        }
        hability5 = "otro";

        fill(0);

        text(hability1+":", 160, 100);
        text(hability2+":", 160, 250);
        text(hability3+":", 160, 400);
        text(hability4+":", 160, 550);
        text(hability5+":", 160, 700);
        
       

    popStyle();
}