/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

/**
 *
 * @author Marcos
 */
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;


public class DB_Connection {
    
  public static void main(String[] args) {
   DB_Connection ob_DB_Connection = new DB_Connection();
   System.out.println(ob_DB_Connection.getConnection());
  }
  
  public Connection getConnection(){
   Connection con=null;
   System.out.println("Connection called");
   
  try {
      Class.forName("com.mysql.jdbc.Driver");
      
      String dbURL = "jdbc:mysql://localhost:3306/data?autoReconnect=true&useSSL=false";
            String user = "root";
            String pass = "indonesia";
            con = DriverManager.getConnection(dbURL, user, pass);
            if (con != null) {
                DatabaseMetaData dm = (DatabaseMetaData) con.getMetaData();
                System.out.println("Driver name: " + dm.getDriverName());
                System.out.println("Driver version: " + dm.getDriverVersion());
                System.out.println("Product name: " + dm.getDatabaseProductName());
                System.out.println("Product version: " + dm.getDatabaseProductVersion());
            }
  
  } catch (ClassNotFoundException e) {
    e.printStackTrace();
  } catch (SQLException e) {
    e.printStackTrace();
  }
    return con;
  }
}
