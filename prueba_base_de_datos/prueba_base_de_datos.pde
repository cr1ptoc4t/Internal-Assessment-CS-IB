
import de.bezier.data.sql.mapper.*;

// Llibreria de MySQL i Processing
import de.bezier.data.sql.*;

// Objecte de connexió a la BBDD
MySQL msql;

void setup(){
    
    size(100, 100);
  
    // Paràmetres de la connexió
    String user     = "admin";
    String pass     = "12345";   
    String database = "mydb";
    
    // Establim la connexió
    msql = new MySQL( this, "localhost:8889", database, user, pass );
    
    // Si la connexió s'ha establert
    if (msql.connect()){
        // La connexió ha funcionat!!!
        println("Connected to database!!");
    }
    else {
      // La connexió ha fallat!!!
      println("Connection failed !");
    }
}
