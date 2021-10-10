/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.Cinefilo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utils.DB_Connection;


/**
 *
 * @author Marcos
 */
public class Login_CinefiloDAO {
    
public static Cinefilo validate(String User, String Pass){
      
  boolean flag=false;
  
  DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        Cinefilo adm = new Cinefilo();
        ResultSet rs = null;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM data.cinefilo where email = ? and password = ?");
            stmt.setString(1, User);
            stmt.setString(2, Pass);
            rs = stmt.executeQuery();

        if(rs.next()){
            
            System.out.println("1 -" + rs.getString("user"));
             adm.setUser(rs.getString("user"));
             adm.setNome(rs.getString("nome"));
             adm.setEmail(rs.getString("email"));
             adm.setPassword(rs.getString("password"));
             adm.setId(rs.getInt("id"));
             adm.setFoto(rs.getString("foto"));
             adm.setIdade(rs.getString("idade"));
             adm.setTelefone(rs.getString("telefone"));
             
         flag=true;
        }
   
  } catch (Exception e) {
  }finally {
  try {
   if(con!=null){
    con.close();
   }
 } catch (Exception e2) {
 // TODO: handle exception
 }
 }
 return adm;
 }


 public static boolean save(Cinefilo obj_User){
      
  boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection connection=obj_DB_Connection.getConnection();
  PreparedStatement ps = null;
  ResultSet rs=null;
  
  try {
   ps = connection.prepareStatement("INSERT INTO data.cinefilo "
           + "(user,email,password) "
           + "VaLUES(?,?,?);");
   ps.setString(1,obj_User.getUser());
   ps.setString(2,obj_User.getEmail());
   ps.setString(3,obj_User.getPassword());
   
   ps.executeUpdate();
   
    flag=true;
   
  } catch (Exception e) {
      flag = false;
   System.err.println("Erro: "+e);
    }finally {
     try {
        if(connection!=null){
         connection.close();
        }
      } catch (Exception e2) {
      // TODO: handle exception
      }
    }
 return flag;
 }

}  


