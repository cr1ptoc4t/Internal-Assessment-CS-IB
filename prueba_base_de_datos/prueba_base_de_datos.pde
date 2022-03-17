import processing.core.PApplet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


void setup(){
  connexio();
}

public void connexio(){
  try {
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:8889/voley", "admin", "12345");
    Statement stmt=con.createStatement();
    System.out.println("Connected");
    ResultSet rs=stmt.executeQuery("select * from competicion");
    while (rs.next()) {
      System.out.println(rs.getInt(1) + ": " + rs.getString(2));
    }
    con.close();
  }
  catch(Exception e) {
    System.out.println(e);
  }
}