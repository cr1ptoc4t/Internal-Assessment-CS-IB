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

//getter para n filas de una tabla
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

// Getter datos tabla
public String[][] getInfoTablaJugadores(){
    int numFilas = getNumRowsTaula("jugador");
    int numCols  = 3;
    
    String[][] informacionJugadores = new String[numFilas][numCols];
    try {
        ResultSet rs = query.executeQuery( "SELECT j.nombre AS nombre, j.dorsal AS dorsal, p.nombre AS posicion FROM jugador j, posicion p WHERE j.posicion_id=p.id");
        int nr = 0;
        while (rs.next()) {
            informacionJugadores[nr][1] = rs.getString("nombre");
            informacionJugadores[nr][0] = String.valueOf(rs.getInt("dorsal"));
            informacionJugadores[nr][2] = rs.getString("posicion");

            nr++;
        }
        printArray2D(informacionJugadores);
        return informacionJugadores;
    }
    catch(Exception e) {
        System.out.println(e);
        return null;
    }
}

//arreglar no funciona
public String[][] getInfoTablaEquipo(){
    int numFilas = getNumRowsTaula("equipo");
    int numCols  = 3;
    
    String[][] equipoInfo = new String[numFilas][numCols];
    try {
        ResultSet rs = query.executeQuery( "SELECT j.id AS id, j.nombre AS nombre, p.categoria AS posicion FROM jugador j, posicion p WHERE j.posicion_id=p.id");
        int nr = 0;
        while (rs.next()) {
            informacionJugadores[nr][1] = rs.getString("nombre");
            informacionJugadores[nr][0] = String.valueOf(rs.getInt("dorsal"));
            informacionJugadores[nr][2] = rs.getString("posicion");

            nr++;
        }
        printArray2D(informacionJugadores);
        return informacionJugadores;
    }
    catch(Exception e) {
        System.out.println(e);
        return null;
    }
}

//imprimir contenido array en dos dimensiones
public void printArray2D(String[][] dades){
    for(int f=0; f<dades.length; f++){
        for(int c=0; c<dades[f].length; c++){
            print(dades[f][c]+" \t ");
        }
        println();
    }
}

// Insertar nuevos datos tabla posición
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

// Actualitzar datos tabla
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

// Eliminar dato tabla
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