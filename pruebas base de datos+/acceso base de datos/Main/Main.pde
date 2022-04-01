import processing.core.PApplet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Main extends PApplet {

    String user     = "admin";
    String pass     = "12345";
    String database = "voley";

    Connection con;
    Statement query;

    public static void main(String[] args) {
        PApplet.main("Main", args);
    }

    public void settings(){
        size(400, 400);
        smooth(10);
    }

    public void setup(){

        size(400, 400);

        // Connecta amb BBDD
        connectBBDD();

        // Número de files d'una taula
        int n = getNumRowsTaula("equipo");
        println("\nFiles equipo:"+n);

        // Dades d'una taula (equipo)
        String[][] dades1 = getInfoTaulaEquipo();
        println("\nDades Taula Equipo:");
        printArray2D(dades1);

    }

    // Connexió a la BBDD
    public void connectBBDD(){
        try {
            con= DriverManager.getConnection("jdbc:mysql://localhost:8889/"+database, user, pass);
            query = con.createStatement();
            System.out.println("Connected");
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }

    // Retorna el número de files d'una taula
    public int getNumRowsTaula(String nomTaula){
        try {
            ResultSet rs = query.executeQuery( "SELECT COUNT(*) AS n FROM "+ nomTaula );
            rs.next();
            int numRows = rs.getInt("n");
            return numRows;
        }
        catch(Exception e) {
            System.out.println(e);
            return 0;
        }
    }

    // Retorna les dades d'una taula
    public String[][] getInfoTaulaEquipo(){
        int numFiles = getNumRowsTaula("equipo");
        int numCols  = 3;
        String[][] info = new String[numFiles][numCols];
        try {
            ResultSet rs = query.executeQuery( "SELECT * FROM equipo");
            int nr = 0;
            while (rs.next()) {
                info[nr][0] = String.valueOf(rs.getInt("id"));
                info[nr][1] = rs.getString("nombre");
                nr++;
            }
            return info;
        }
        catch(Exception e) {
            System.out.println(e);
            return null;
        }
    }

    // Imprimeix contingut array 2D
    public void printArray2D(String[][] dades){
        for(int f=0; f<dades.length; f++){
            for(int c=0; c<dades[f].length; c++){
                print(dades[f][c]+" \t ");
            }
            println();
        }
    }

    public void draw(){
    }

}