PImage img1, img2, img3, cono;

PFont fuente1, fuente2, fuente3;

Button goToMiEquipo;
Button goToPizarra;
Button goToResultados;
Button goToGuardados;
Button goToSobreNosotros;

Button save;
Button b1,b2;

Pissarra p;
Table t;
Player p1;
Player p2;
Player p3;

Select entrenamiento,competicion;
Select mediaPista, pistaEntera;

Guardado guardado1;
Guardado guardado2;

//tipos enumerados
enum pantallas {
  START, MIEQUIPO, PIZARRA, RESULTADOS, GUARDADOS, SOBRENOSOTROS
};

enum posiciones{
  LIB, COL, OP, PUN, CENT
};

enum genre{
  HOMBRE, MUJER, OTRO
};

//datos video
PImage[] img;
int nFotogramas = 10;
int f = 1;
boolean vid = true;

int i=0;
int j=0;
int k=0;


//pop up
PopUp guardar;

// Dimensions del PopUp
float popW = 600;
float popH = 340;

// Textos del PopUp
String title = "Error!";
String message = "Error en la connexió a la BBDD.";

String hability1, hability2, hability3, hability4, hability5;

int pantalla = 0;

boolean halfB = false;
boolean training = true;

// Número de files (capçalera inclosa) i columnes de la taula
int files = 18, columnes = 7;

// Títols de les columnes 
String[] headers = {"Dorsal", "Nombre", "Apellidos", "Edad", "Sexo", "1ª p", "2ª p"};
String[] jugadores = {"", "J1", "J2", "J3", "J4", "J5", "J6", "J7", "J8"};
int nPlayers =jugadores.length;

// Amplades de les columnes
//han de sumar 100
float[] colWidths = {10, 20, 30, 10, 15, 7.5, 7.5};
float[] colWidthsPlayers = {40, 60/8, 60/8, 60/8, 60/8,60/8, 60/8, 60/8, 60/8};
// Dades de la taula
String[][] info = {
    {"1", "Pere", "Soler Miralles", "33", "Home","Lib", "Col"},                 
    {"2", "Maria", "Garcia Lopez", "25", "Dona","Lib", "Col"},
    {"3", "Joan", "Melis Cabrer",  "47", "Home","Lib", "Col"},
    {"4", "Bel", "Riera Mates",    "52", "Dona", "Lib", "Col"},
    {"5", "Jose", "Perez Galdós",  "37", "Home","Lib", "Col"},
    {"6", "Jose", "Perez Galdós",  "37", "Home","Lib", "Col"},
    {"7", "Jose", "Perez Galdós",  "37", "Home","Lib", "Col"},
    {"8", "Jose", "Perez Galdós",  "37", "Home","Lib", "Col"},
    {"9", "Jose", "Perez Galdós",  "37", "Home","Lib", "Col"},
    {"10", "Jose", "Perez Galdós",  "37", "Home","Lib", "Col"},
    {"11", "Jose", "Perez Galdós",  "37", "Home","Lib", "Col"},
    {"12", "Jose", "Perez Galdós",  "37", "Home","Lib", "Col"},
    {"13", "Jose", "Perez Galdós",  "37", "Home","Lib", "Col"},
    {"14", "Maria", "Garcia Lopez", "25", "Dona","Lib", "Col"},
    {"15", "Joan", "Melis Cabrer",  "47", "Home","Lib", "Col"},
    {"16", "Bel", "Riera Mates",    "52", "Dona", "Lib", "Col"},
    {"17", "Jose", "Perez Galdós",  "37", "Home","Lib", "Col"},            
};

String [] habilidades = {"colocación positiva", "colocación", "finta segundo toque",
                      "ace", "bloqueo", "finta", "remate", "Doble Positiva",
                      "Positiva","Negativa","Doble negativa"};

/*
int colocaciónPositiva;
int colocación;
int fintaSegundoToque;
int ace;
int bloqueo;
int finta;
int remate;
int doblePositiva, positiva;
int negativa, dobleNegativa;
*/

boolean logged = false;
TextField  nSaved, dSaved, mSaved, ySaved;
int nConos=0;