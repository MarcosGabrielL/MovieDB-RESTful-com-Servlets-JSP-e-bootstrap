/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.Cinefilo;
import Bean.Movie;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import utils.DB_Connection;

/**
 *
 * @author Marcos
 */
public class MoviesDAO {
    
   
    
    public List<Movie> read(){
    
         DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        Cinefilo adm = new Cinefilo();
        ResultSet rs = null;
        List<Movie> movies = new ArrayList<Movie>();
        
        int cont = 0;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM data.movies LIMIT 20");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
               Movie movie = new Movie();
               // System.err.println(movie.getPoster_Link());
               movie.setSeries_Title(rs.getString("Title"));
               movie.setPoster_Link(rs.getString("Poster"));
               movie.setIMDB_Rating(rs.getString("Rating"));
               movie.setTMDBId(rs.getString("TMDBId"));
                
                
                movies.add(movie);
                cont ++;
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro 3: "+ex);
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
    
    public Movie info_movie(String titulo){
    
         DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        Cinefilo adm = new Cinefilo();
        ResultSet rs = null;
        Movie movie = new Movie();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM data.movies where TMDBId like ? LIMIT 20");
            stmt.setString(1, ""+titulo+"");
              rs = stmt.executeQuery();
            
            while(rs.next()){
            
               
               movie.setSeries_Title(rs.getString("Title"));
               movie.setPoster_Link(rs.getString("Poster"));
               movie.setIMDB_Rating(rs.getString("Rating"));
               movie.setOverview(rs.getString("Overview"));
               movie.setReleased_Year(rs.getString("Released_Year").substring(0, 4));
               movie.setTMDBId(rs.getString("TMDBId"));
               //movie.setCertificate(rs.getString("Certificate"));
               movie.setRumtime(rs.getString("Runtime"));
               movie.setGenre(rs.getString("Genre"));
               
                
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro 3: "+ex);
        }finally {
  try {
   if(con!=null){
    con.close();
   }
 } catch (Exception e2) {
 // TODO: handle exception
 }
    }
        return movie;
    }
    
    public List<Movie> Procurar(String nome){
    
         DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        Cinefilo adm = new Cinefilo();
        ResultSet rs = null;
        List<Movie> movies = new ArrayList<Movie>();
        
        int cont = 0;
        
        try {
            stmt = con.prepareStatement("SELECT Title,Poster,Rating,TMDBId FROM data.movies where Title like ? LIMIT 5");
            stmt.setString(1, ""+nome+"%");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
               Movie movie = new Movie();
               movie.setSeries_Title(rs.getString("Title"));
               movie.setPoster_Link(rs.getString("Poster"));
               movie.setIMDB_Rating(rs.getString("Rating"));
               movie.setTMDBId(rs.getString("TMDBId"));
                
                movies.add(movie);
                cont ++;
            }
            
            
        } catch (SQLException ex) {
            System.out.println( "Erro 3: "+ex);
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
      
    
    public static boolean save(Movie movie){
      
  boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection connection=obj_DB_Connection.getConnection();
  PreparedStatement ps = null;
  ResultSet rs=null;
  
  try {
   ps = connection.prepareStatement("INSERT INTO data.movies_ "
           + "(Title,Poster,Released_Year,Rating,Overview) "
           + "VaLUES(?,?,?,?,?);");
   ps.setString(1,movie.getSeries_Title());
   ps.setString(2,movie.getPoster_Link());
   ps.setString(3,movie.getReleased_Year());
   ps.setString(4,movie.getRate());
   ps.setString(5,movie.getOverview());
   
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
    
    
    
    
    
    /*
    public void update(Vendidos v){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("UPDATE nossocliente.vendasprodutos SET quantidade = quantidade + ?  WHERE código = ?");
            stmt.setFloat(1,v.getQuantidade());
            stmt.setString(2,v.getCodigo());
           
            
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar1: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    
    public List<Vendidos> PorArea(String tipo){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Vendidos> vendidos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.vendasprodutos WHERE Tipo LIKE ? ORDER BY Quantidade");
            stmt.setString(1, ""+tipo+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Vendidos v = new Vendidos();
                
                v.setCodigo(rs.getString("Código"));
                v.setDescrição(rs.getString("descrição"));
                v.setTipo(rs.getString("Tipo"));
                v.setLoja(rs.getString("Loja"));
                v.setCaixa(rs.getString("Caixa"));
                v.setDataSaida(rs.getString("Datasaida"));
                v.setQuantidade(rs.getInt("Quantidade"));
                
                vendidos.add(v);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro5: 77"+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return  vendidos;
        
    
    }
    
    public List<Vendidos> PorLoja(String tipo){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Vendidos> vendidos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.vendasprodutos WHERE Loja LIKE ? ORDER BY Quantidade");
            stmt.setString(1, ""+tipo+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Vendidos v = new Vendidos();
                
                v.setCodigo(rs.getString("Código"));
                v.setDescrição(rs.getString("descrição"));
                v.setTipo(rs.getString("Tipo"));
                v.setLoja(rs.getString("Loja"));
                v.setCaixa(rs.getString("Caixa"));
                v.setDataSaida(rs.getString("Datasaida"));
                v.setQuantidade(rs.getInt("Quantidade"));
                
                vendidos.add(v);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro4: 77"+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return  vendidos;
    }
    
    public List<Vendidos> PorCaixa(String loja, String tipo){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Vendidos> vendidos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.vendasprodutos WHERE Loja LIKE ? AND Caixa LIKE ? ORDER BY Quantidade");
            stmt.setString(1, ""+loja+"");
            stmt.setString(2, ""+tipo+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Vendidos v = new Vendidos();
                
                v.setCodigo(rs.getString("Código"));
                v.setDescrição(rs.getString("descrição"));
                v.setTipo(rs.getString("Tipo"));
                v.setLoja(rs.getString("Loja"));
                v.setCaixa(rs.getString("Caixa"));
                v.setDataSaida(rs.getString("Datasaida"));
                v.setQuantidade(rs.getInt("Quantidade"));
                v.setIdVenda(rs.getInt("IdVenda"));
                
                vendidos.add(v);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro8: 77"+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return  vendidos;
    }
    
    public List<Vendidos> PorAreaMenos(String tipo){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Vendidos> vendidos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.vendasprodutos WHERE Tipo LIKE ? ORDER BY Quantidade DESC");
            stmt.setString(1, ""+tipo+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Vendidos v = new Vendidos();
                
                v.setCodigo(rs.getString("Código"));
                v.setDescrição(rs.getString("descrição"));
                v.setTipo(rs.getString("Tipo"));
                v.setLoja(rs.getString("Loja"));
                v.setCaixa(rs.getString("Caixa"));
                v.setDataSaida(rs.getString("Datasaida"));
                v.setQuantidade(rs.getInt("Quantidade"));
                
                vendidos.add(v);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro7: 77"+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return  vendidos;
        
    
    }
    
    public List<Vendidos> PorLojaMenos(String tipo){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Vendidos> vendidos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.vendasprodutos WHERE Loja LIKE ? ORDER BY Quantidade DESC");
            stmt.setString(1, ""+tipo+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Vendidos v = new Vendidos();
                
                v.setCodigo(rs.getString("Código"));
                v.setDescrição(rs.getString("descrição"));
                v.setTipo(rs.getString("Tipo"));
                v.setLoja(rs.getString("Loja"));
                v.setCaixa(rs.getString("Caixa"));
                v.setDataSaida(rs.getString("Datasaida"));
                v.setQuantidade(rs.getInt("Quantidade"));
                
                vendidos.add(v);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro6: 77"+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return  vendidos;
    }
    
    public List<Vendidos> PorCaixaMenos(String loja, String tipo){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Vendidos> vendidos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.vendasprodutos WHERE Loja LIKE ? AND Caixa LIKE ? ORDER BY Quantidade DESC");
            stmt.setString(1, ""+loja+"");
            stmt.setString(2, ""+tipo+"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Vendidos v = new Vendidos();
                
                v.setCodigo(rs.getString("Código"));
                v.setDescrição(rs.getString("descrição"));
                v.setTipo(rs.getString("Tipo"));
                v.setLoja(rs.getString("Loja"));
                v.setCaixa(rs.getString("Caixa"));
                v.setDataSaida(rs.getString("Datasaida"));
                v.setQuantidade(rs.getInt("Quantidade"));
                
                vendidos.add(v);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro12: 77"+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return  vendidos;
    }
    
    public List<Vendidos> PorIdVenda(int IdVenda, String caixa, String Loja){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Vendidos> vendidos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.vendasprodutos WHERE IdVenda = ? AND Caixa LIKE ? AND Loja LIKE ? ORDER BY Datasaida");
            stmt.setInt(1, IdVenda);
            stmt.setString(2, caixa);
            stmt.setString(3, Loja);
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Vendidos v = new Vendidos();
                
                v.setCodigo(rs.getString("Código"));
                v.setDescrição(rs.getString("descrição"));
                v.setTipo(rs.getString("Tipo"));
                v.setLoja(rs.getString("Loja"));
                v.setCaixa(rs.getString("Caixa"));
                v.setDataSaida(rs.getString("Datasaida"));
                v.setQuantidade(rs.getInt("Quantidade"));
                
                vendidos.add(v);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro8: 77"+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return  vendidos;
    }
    
    public void exclui(Vendidos v){
    
        Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM nossocliente.vendasprodutos WHERE código = ? AND IdVenda = ?");
            
            stmt.setString(1,v.getCodigo());
            stmt.setInt(2,v.getIdVenda());
            
            stmt.executeUpdate();
            
           // JOptionPane.showMessageDialog(null, "Deletado com sucesso");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao cancelar venda:"+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    
    }
    */
}
