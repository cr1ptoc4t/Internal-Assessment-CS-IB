void p1(){

  pushStyle();
    //table();
    t.display((width-tableW)/2, 50, tableW, tableH);
    //t.display(50, 50, tableW, tableH);
    
    // Dibuixa els botons
    b1.display();
    b2.display();
    
    // Actualitza forma del cursor
    updateCursor();
    
    newPlayer.display();

  popStyle();
}

void newPlayer(){
  textAlign(LEFT);
   pushStyle();
     image(usuario, 130, 70, 50, 50);
     textSize(100);
     textFont(fuente2);
     fill(255);
     text("Nuevo jugador", 198, 98);
     fill(royalBlueDark);
     text("Nuevo jugador", 200, 100);
   popStyle();

  textSize(15); fill(0);
   pushStyle();
     fill(blackCoral);
     //rect (width/9, 220, 300, 400, 10);
     fill(0);
     textAlign(LEFT);
     pushStyle();
     textFont(fuente2);
     textSize(25);
     fill(blackCoral);
     text("Datos personales y de contacto: " , width/10, 200);
   popStyle();

  pushStyle();
     textSize(18);
     fill(0,0,0,0);
     stroke(0);
     strokeWeight(1);
     //caja 1
     beginShape();
       vertex(width/10 - 5, 190);
       vertex(width/10 - 15, 190);
       vertex(width/10 - 15, 500);
       vertex(width/10 + 500, 500);
       vertex(width/10 + 500, 190);
       vertex(width/10 + 400, 190);
     endShape();
           //caja 2
     beginShape();
       vertex(width/2 +100 - 5, 190);
       vertex(width/2 +100 - 15, 190);
       vertex(width/2 +100 - 15, 500);
       vertex(width/2 +100 + 500, 500);
       vertex(width/2 +100 + 500, 190);
       vertex(width/2 +100 + 250, 190);
     endShape();
   popStyle();

  pushStyle();
    textFont(fuente1);
    fill(blackCoral);
    textSize(16);
    text("Fecha de nacimiento:           /          /        /",150, 250);
    text("Telefono personal:", 150, 300);
    text("Correo electrónico: ",150, 350);
    text("DNI: ",150, 400);
  popStyle();
  popStyle(); 
  pushStyle();
    fill(blackCoral);
    textFont(fuente2);
    textSize(25);
    text("Datos deportivos: ", width/2 + 120, 200);
  popStyle(); 

  textSize(18); 
   //text(this.numb,width/2+120, 250);
   //text(this.firstPos, width/2+120, 300);
   //text(this.secPos, width/2+380, 300);  

  pushStyle();
     textFont(fuente1);
     fill(blackCoral);
     textSize(16);
     text("Número dorsal: ", width/2+150, 250);
     text("Primera posición: ", width/2 +150, 300);
     text("Segunda posición: ",  width/2+150, 350);
     //nombre.display();
     //apellidos.display();
     telefono.display();
     dni.display();
     dayn.display();
     monthn.display();
     yearn.display();
     correo.display();
     ndorsal.display();
  popStyle();

}
/*void table(){
  Table t;

// Dimensions de la taula
float tableW = 800, tableH = 300;

// Número de files (capçalera inclosa) i columnes de la taula
int files = 6, columnes = 5;

// Títols de les columnes 
String[] headers = {"Id", "Nom", "Llinatges", "Edat", "Sexe"};

// Amplades de les columnes
float[] colWidths = {10, 20, 40, 10, 20};

// Dades de la taula
String[][] info = {
                     {"1", "Pere", "Soler Miralles", "33", "Home"},
                     {"2", "Maria", "Garcia Lopez", "25", "Dona"},
                     {"3", "Joan", "Melis Cabrer", "47", "Home"},
                     {"4", "Bel", "Riera Mates", "52", "Dona"},
                     {"5", "Jose", "Perez Galdós", "37", "Home"},
                  };
}
*/