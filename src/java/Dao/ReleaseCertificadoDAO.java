/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.CertificationMPAA.ReleaseDate;
import Bean.Crew.Cast;
import Bean.Movie;
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
public class ReleaseCertificadoDAO {
    
    public static boolean save(ReleaseDate a, String movieID){
      
  boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection connection=obj_DB_Connection.getConnection();
  PreparedStatement ps = null;
  ResultSet rs=null;
  
  try {
   ps = connection.prepareStatement("INSERT INTO data.mv_certificado "
           + "(TMDBId,certificado) "
           + "VaLUES(?,?);");
   ps.setString(1, movieID);
   ps.setString(2,a.getCertification());
   
   ps.executeUpdate();
   
    flag=true;
   
  } catch (Exception e) {
      flag = false;
   System.err.println("Erro: "+e);
    }finally {
      System.out.println("End Release");
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
    
    public List<ReleaseDate> read( String id){
    
         DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<ReleaseDate> movies = new ArrayList<ReleaseDate>();
        
        int cont = 0;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM data.mv_certificado where tmdbid like ?");
            stmt.setString(1, ""+id+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
               ReleaseDate release = new ReleaseDate();
               release.setCertification(rs.getString("certificado"));
               release.setNote(rs.getString("TMDBId"));
                
                
                movies.add(release);
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
