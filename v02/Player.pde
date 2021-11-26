class Player{
    String name;
    String surname;
    int age;
    String gender;
    String firstPos;
    String secPos;
    int numb, telefono, year;


    Player(String name, String surname , int age, String gender, String firstPos, String secPos, int numb, int telefono, int year){
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
        datosPersonales();
        
    }
    void datosPersonales(){
        //titulo
        text(this.surname+ ", "+ this.name, width/2, height/2);

        text("Datos personales: " , width/5, 300);
        text("Año de nacimiento: " + this.year, width/5+100, 400);
        text("Telefono personal: " + this.telefono, width/5+100, 500);
        text("", width/5+100, 600);


    }
}