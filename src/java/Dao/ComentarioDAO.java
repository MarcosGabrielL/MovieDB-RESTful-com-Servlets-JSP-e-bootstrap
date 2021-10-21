/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.Comentario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import utils.DB_Connection;

/**
 *
 * @author Marcos
 */
public class ComentarioDAO {
    public static boolean save(Comentario c, String movieID, String cinefiloid){
        
        // data/hora atual
        LocalDateTime agora = LocalDateTime.now();
        // formatar a data
        DateTimeFormatter formatterData = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String dataFormatada = formatterData.format(agora);
      
  boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection connection=obj_DB_Connection.getConnection();
  PreparedStatement ps = null;
  ResultSet rs=null;
  //System.out.println(String.valueOf(c.getCast_id()));
  try {
   ps = connection.prepareStatement("INSERT INTO data.avaliacao "
           + "(movie_id, critica,ID_Cinefilo,hora,Avaliacao,star1,star2,star3,star4,star5)"
           + " VALUES(?,?,?,?,?,?,?,?,?,?);");
   ps.setString(1, movieID);
   ps.setString(2, c.getCritica());
   ps.setString(3, cinefiloid);
   ps.setString(4, dataFormatada);
   ps.setString(5, c.getAvaliação());
   ps.setString(6, c.getCurtidas_1_estrela());
   ps.setString(7, c.getCurtidas_2_estrela());
   ps.setString(8, c.getCurtidas_3_estrela());
   ps.setString(9, c.getCurtidas_4_estrela());
   ps.setString(10, c.getCurtidas_5_estrela());
   
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
     
    public  List<Comentario> read( String movieID){
    
         DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Comentario> movies = new ArrayList<Comentario>();
        
        int cont = 0;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM data.avaliacao where "
                    + "movie_id like ? order by Hora desc");
            stmt.setString(1, ""+movieID+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
               Comentario c = new Comentario();
                c.setCritica(rs.getString("critica"));
                c.setId(rs.getString("avaliacao_id"));
                c.setID_Cinefilo(rs.getString("ID_Cinefilo"));
                c.setData(rs.getString("Hora"));
                c.setAvaliação(rs.getString("Avaliacao"));
                c.setCurtidas_1_estrela(rs.getString("star1"));
                c.setCurtidas_2_estrela(rs.getString("star2"));
                c.setCurtidas_3_estrela(rs.getString("star3"));
                c.setCurtidas_4_estrela(rs.getString("star4"));
                c.setCurtidas_5_estrela(rs.getString("star5"));
                c.setScore(rs.getString("score"));
                
                movies.add(c);
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
     
     public List<Comentario> readCinefiloComent( String movieID, String cinefiloid){
    
         DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Comentario> movies = new ArrayList<Comentario>();
        
        int cont = 0;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM data.avaliacao where "
                    + "movie_id like ? and ID_Cinefilo like ?");
            stmt.setString(1, ""+movieID+"");
            stmt.setString(1, ""+cinefiloid+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
             Comentario c = new Comentario();
                c.setCritica(rs.getString("critica"));
                c.setId(rs.getString("avaliacao_id"));
                c.setID_Cinefilo(rs.getString("ID_Cinefilo"));
                c.setData(rs.getString("Hora"));
                c.setAvaliação(rs.getString("Avaliacao"));
                c.setCurtidas_1_estrela(rs.getString("star1"));
                c.setCurtidas_2_estrela(rs.getString("star2"));
                c.setCurtidas_3_estrela(rs.getString("star3"));
                c.setCurtidas_4_estrela(rs.getString("star4"));
                c.setCurtidas_5_estrela(rs.getString("star5"));
                c.setScore(rs.getString("score"));
                
                movies.add(c);
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
     
     public boolean deletid(String movieID, String personid){
    
     DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        boolean Flag = false;
        
    
        try {
            stmt = con.prepareStatement("DELETE FROM data.avaliacao where "
                    + "movie_id like ? and ID_Cinefilo like ?");
            stmt.setString(1,movieID);
            stmt.setString(2,personid);
            
            stmt.executeUpdate();
            Flag = true;
            
        } catch (SQLException ex) {
            System.out.println("Erro ao Deletar Comentario: "+ex);
        } finally{
        
        try {
            if(con!=null){con.close();}} catch (Exception e2) {}
        }
    
    return Flag;
     }
}
