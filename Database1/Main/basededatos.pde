import processing.core.PApplet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


  String user     = "admin";
  String pass     = "12345";
  String database = "voley";

  Connection con;
  Statement query;

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
    public String[][] getInfoTaulaUnitat(){
        int numFiles = getNumRowsTaula("unitat");
        int numCols  = 2;
        String[][] info = new String[numFiles][numCols];
        try {
            ResultSet rs = query.executeQuery( "SELECT * FROM unitat");
            int nr = 0;
            while (rs.next()) {
                info[nr][0] = String.valueOf(rs.getInt("numero"));
                info[nr][1] = rs.getString("nom");
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



    // Inserta noves dades a una taula
    public void insertPosicion( String n){
        try {
            String q = "INSERT INTO posicion (id,nombre) VALUES (NULL, '"+n+"')";
            println("INSERT: "+q);
            query.execute( q);
            println("INSERT OK :)");
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }

    // Actualitza noves dades a una taula
    public void updateUnitat(int id, String n){
        try {
            String q = "UPDATE unitat SET nom='"+n+"' WHERE numero='"+id+"'";
            println("UPDATE: "+q);
            query.execute( q);
            println("UPDATE OK :)");
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }

    // Elimina dades de la taula
    public void deleteUnitat(String n){
        try {
            String q = "DELETE FROM unitat WHERE nom='"+n+"'";
            println("DELETE: "+q);
            query.execute( q);
            println("DELETE OK :)");
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }