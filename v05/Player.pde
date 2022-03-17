class Player{
    String name;
    String surname;
    String gender;

    String firstPos, secPos,email;
    int age, numb, telefono, year, day, month;


    Player(String name, String surname , String gender, String firstPos, String secPos, int numb, int telefono, int year, int day, int month, String email){
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.gender = gender;
        
        
        this.year = year;
        this.day = day;
        this.month = month;

        this.telefono = telefono;
        this.email = email;

        this.firstPos = firstPos;
        this.secPos = secPos;
        this.numb = numb;

    }


    void display(){
        pushStyle();
            fill(0);
            cabecera();
            datosPersonales();
            datosDeportivos();
        popStyle();
    }

    void cabecera(){
        textAlign(LEFT);
        pushStyle();
            image(usuario, 130, 70, 50, 50);
            textSize(100);
            textFont(fuente2);
            fill(255);
            text(this.surname+ ", "+ this.name, 198, 98);
            fill(royalBlueDark);
            text(this.surname+ ", "+ this.name, 200, 100);
        popStyle();

        textSize(15); fill(0);
        //text(this.day +"/"+ this.month+ "/"+ this.year, 205, 120);
    }


    void datosPersonales(){
        //titulo
        //falta translate con push y pop matrix
        
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

            text(this.day + "/" + this.month + "/" +this.year,150+160, 250);
            text(this.telefono, 150 + 140, 300);
            text(this.email, 100 + 200, 350);

            pushStyle();
                textFont(fuente1);
                fill(blackCoral);
                textSize(16);
                text("Fecha de nacimiento:",150, 250);
                text("Telefono personal:", 150, 300);
                text("Correo electrónico: ",150, 350);
                text("DNI: ",150, 400);
            popStyle();
        popStyle();

    }

    void datosDeportivos(){
        //rect!!
        pushStyle();
            fill(blackCoral);
            textFont(fuente2);
            textSize(25);
            text("Datos deportivos: ", width/2 + 120, 200);
        popStyle();

        textSize(18);

        text(this.numb,width/2+120, 250);
        text(this.firstPos, width/2+120, 300);
        text(this.secPos, width/2+380, 300);

        pushStyle();
            textFont(fuente1);
            fill(blackCoral);
            textSize(16);
            text("Número dorsal: ", width/2+150, 250);
            text("Primera posición: ", width/2 +150, 300);
            text("Segunda posición: ",  width/2+150, 300);
        popStyle();
    }

    String getName(){
        return this.name;
    }
}