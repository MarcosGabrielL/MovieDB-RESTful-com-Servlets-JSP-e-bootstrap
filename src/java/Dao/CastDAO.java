/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.CertificationMPAA.ReleaseDate;
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
public class CastDAO {
    
     public static boolean save(Cast c, String movieID){
      
  boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection connection=obj_DB_Connection.getConnection();
  PreparedStatement ps = null;
  ResultSet rs=null;
  //System.out.println(String.valueOf(c.getCast_id()));
  try {
   ps = connection.prepareStatement("INSERT INTO data.mv_elenco (tmdbid, titulo, nome, como, foto, atorid) VALUES(?,?,?,?,?,?);");
   ps.setString(1, movieID);
   ps.setString(2, c.getKnown_for_department());
   ps.setString(3, c.getName());
   ps.setString(4, c.getCharacter());
   ps.setString(5, "https://www.themoviedb.org/t/p/w600_and_h900_bestv2"+c.getProfile_path());
   ps.setString(6, String.valueOf(c.getCast_id()));
   
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
 return flag;
 }
     public List<Cast> read(String id){
    
         DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Cast> movies = new ArrayList<Cast>();
        
        int cont = 0;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM data.mv_elenco where tmdbid like ?");
            stmt.setString(1, ""+id+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
               Cast cast = new Cast();
               cast.setCredit_id(rs.getString("atorid"));
               cast.setKnown_for_department(rs.getString("titulo"));
               cast.setName(rs.getString("nome"));
               cast.setCharacter(rs.getString("como"));
               cast.setProfile_path(rs.getString("foto"));
               cast.setOriginal_name(rs.getString("TMDBId"));
                
                movies.add(cast);
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
        
        return movies;
        
    
    }
    }
}
