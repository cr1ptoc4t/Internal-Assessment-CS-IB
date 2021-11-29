class Player{
    String name;
    String surname;
    String gender;

    String firstPos, secPos;
    int age, numb, telefono, year, day, month;


    Player(String name, String surname , String gender, String firstPos, String secPos, int numb, int telefono, int year, int day, int month){
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.gender = gender;
        this.firstPos = firstPos;
        this.secPos = secPos;
        this.numb = numb;
        this.year = year;


    }


    void display(){
        cabecera();
        datosPersonales();
        datosDeportivos();
    }

    void cabecera(){
        textAlign(LEFT);
        text(this.surname+ ", "+ this.name, width/2, height/2);
    }


    void datosPersonales(){
        //titulo
        //falta translate con push y pop matrix
        
        popStyle();
        textSize(10);
        text("Datos personales: " , width/5, 300);
        pushStyle();
        text("Fecha de nacimiento: " + this.day + "/" + this.month + "/" +this.year, width/5+100, 400);
        text("Telefono personal: " + this.telefono, width/5+100, 500);
        text("", width/5+100, 600);


    }

    void datosDeportivos(){
        //rect!!
        popStyle();
        textSize(10);
        text("Datos deportivos: ", 3*width/5, 300);
        pushStyle();
        text("Número dorsal: "    + this.numb, 3*width/5+100, 400);
        text("Primera posición: " + this.firstPos, 3*width/5+100, 500);
        text("Segunda posición: " + this.secPos, 3* width/5+100, 600);
    }
}