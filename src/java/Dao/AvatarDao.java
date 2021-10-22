/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.Avatar;
import Bean.Crew.Cast;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DB_Connection;

/**
 *
 * @author Marcos
 */
public class AvatarDao {
    
    public static boolean save(Avatar a){
      
  boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection connection=obj_DB_Connection.getConnection();
  PreparedStatement ps = null;
  ResultSet rs=null;
  
  if(read(a.getPerson_ID()).isEmpty()){
       try {
   ps = connection.prepareStatement("INSERT INTO data.avatar (personid, imagem) VALUES(?,?);");
   ps.setString(1, a.getPerson_ID());
   ps.setBlob(2, a.getImage());
   ps.executeUpdate();
   
    flag=true;
   
  } catch (Exception e) { flag = false; System.err.println("Erro: "+e.getMessage());
  }finally { System.out.println("End Cast");
  try {if(connection!=null){connection.close();}
  } catch (Exception e2) {}
  }   
  }else{
      try {
   ps = connection.prepareStatement("UPDATE data.avatar SET imagem = ? WHERE personid = ?;");
   ps.setString(2, a.getPerson_ID());
   ps.setBlob(1, a.getImage());
   ps.executeUpdate();
   
    flag=true;
   
  } catch (Exception e) {
      flag = false;
   System.err.println("Erro: "+e.getMessage());
    }finally {
      System.out.println("End Cast");
     try {
        if(connection!=null){
         connection.close();
        }
      } catch (Exception e2) {
      // TODO: handle exception
      }
    }   
  }
  
 
 return flag;
 }
    
    public static List<Avatar> read(String id){
    
         DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Avatar> movies = new ArrayList<Avatar>();
        
        int cont = 0;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM data.avatar where personid like ?");
            stmt.setString(1, ""+id+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
               Avatar a = new Avatar();
              a.setPerson_ID(rs.getString("personid"));
              a.setImage(rs.getBinaryStream("imagem"));
                
                movies.add(a);
                cont ++;
            }
            
            
        } catch (SQLException ex) {
           System.out.println("Erro 3: "+ex);
        }finally {
  try {
   if(con!=null){
    con.close();
   }
 } catch (Exception e2) {
 // TODO: handle exception
 }
    }
        return movies;
    }
}
