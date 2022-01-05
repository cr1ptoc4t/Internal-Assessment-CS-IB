void resultados(){
    r1.display();
    r2.display();
    /*
    pushStyle();
        fill(100);
        rectMode(CENTER);
        noStroke();
        for (int i=120, j=0 ; (i<width/2 ) && (j<=11) ; i+= 210, j++){
            rect(width/2, i, width*2/3,200,5);
            pushStyle();
                fill(255);
                textSize(60);
                textFont(fuente1);
                textAlign(CENTER);
                fill(prussianBlue);
                text(resultados[j][0]+"-"+ resultados[j][1], width/2 - 325, i );
                
                
                textAlign(LEFT);
                textFont(fuente2);
                text(equipos[j], width/2- 220 , i);
                
                textFont(fuente1);
                textSize(20);
                fill(255);
                text(fecha[j][0] + "/"+fecha[j][1]+"/"+ fecha[j][2], width/2- 220 , i +30);
                textSize(12);
                textAlign(CENTER);
                
                if(resultados[j][0]+resultados[j][1]==3){
                    sets = resultados[j][2]+" - "+resultados[j][3]+"/"+resultados[j][4]+" - "+resultados[j][5]+"/"+resultados[j][6]+" - "+resultados[j][7];
                }else if(resultados[j][0]+resultados[j][1]==4){
                    sets = resultados[j][2]+" - "+resultados[j][3]+"/"+resultados[j][4]+" - "+resultados[j][5]+"/"+resultados[j][6]+" - "+resultados[j][7] + "/"+resultados[j][8]+" - "+resultados[j][9];
                }else if(resultados[j][0]+resultados[j][1]==5){
                    sets = resultados[j][2]+" - "+resultados[j][3]+"/"+resultados[j][4]+" - "+resultados[j][5]+"/"+resultados[j][6]+" - "+resultados[j][7] + "/"+resultados[j][8]+" - "+resultados[j][9]+ "/"+resultados[j][10]+" - "+resultados[j][11];
                }
                
                text(sets , width/2 - 325, i+ 50);
                
            popStyle();
        }
    popStyle();
    */
}
// tu equipo - equipo contrario - set 1 equipo- set 1equipo contrario - set 2 equipo...
int [][] resultados  = {
    {0, 3, 25, 19, 25, 21, 22, 25, 24, 26, 0, 0},
    {1, 3, 25, 19, 22, 25, 24, 26, 15, 25, 0, 0},
    {2, 3, 25, 19, 25, 21, 22, 25, 24, 26,20,25},
    {1, 3, 25, 19, 22, 25, 24, 26, 22, 25, 0, 0},
    {0, 3, 25, 19, 25, 21, 22, 25, 24, 26, 0, 0},
    {1, 3, 25, 19, 22, 25, 24, 26, 15, 25, 0, 0},
    {2, 3, 25, 19, 25, 21, 22, 25, 24, 26,20,25},
    {1, 3, 25, 19, 22, 25, 24, 26, 22, 25, 0, 0},
    {0, 3, 25, 19, 25, 21, 22, 25, 24, 26, 0, 0},
    {1, 3, 25, 19, 22, 25, 24, 26, 15, 25, 0, 0},
    {2, 3, 25, 19, 25, 21, 22, 25, 24, 26,20,25},
    {1, 3, 25, 19, 22, 25, 24, 26, 22, 25, 0, 0},
};
String [] equipos = {"Equipo A", "Equipo B", "Equipo C","Equipo A", "Equipo B", "Equipo C","Equipo A", "Equipo B", "Equipo C","Equipo A", "Equipo B", "Equipo C","Equipo A", "Equipo B", "Equipo C","Equipo A", "Equipo B", "Equipo C"};

String sets;

//formato DD/MM/AAAA
int[][] fecha={
    {10, 02, 2021},
    {13, 03, 2022},
    {10, 02, 2021},
    {13, 03, 2022},
    {10, 02, 2021},
    {13, 03, 2022},
    {10, 02, 2021},
    {13, 03, 2022},
    {10, 02, 2021},
    {13, 03, 2022},
    {10, 02, 2021},
    {13, 03, 2022},
};