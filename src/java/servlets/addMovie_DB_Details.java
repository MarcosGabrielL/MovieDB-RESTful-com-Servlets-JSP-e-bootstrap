/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Bean.Genero;
import Bean.Movie;
import Bean.MovieDetails;
import Dao.MoviesDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;

/**
 *
 * @author Marcos
 */
@WebServlet(name = "addMovie_DB_Details", urlPatterns = {"/addMovie_DB_Details"})
public class addMovie_DB_Details extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        StringBuilder texto = new StringBuilder("\n");
        String title=request.getParameter("movieTitle");  
        texto.append(title+"---");
           String poster=request.getParameter("moviePoster"); 
           texto.append(poster+"---");
           String Rate=request.getParameter("movieVote");  
           texto.append(Rate+"---");
           String overvew=request.getParameter("movieDesc");
           texto.append(overvew+"---");
           String data=request.getParameter("movieData");
           texto.append(data+"---");
           
           String genero = request.getParameter("moviegenres");
           ObjectMapper objectMapper = new ObjectMapper();
            JsonNode jsonNode = objectMapper.readTree(genero);
            for(int i=0;i<jsonNode.size() ;i++){
            JsonNode node = jsonNode.get(i);
            texto.append(node.get("name").toString());
            System.out.println("Genero" + node.get("name").toString());
            }
             
           String runtime=request.getParameter("movietempo");
           texto.append(runtime+"---");
           
           System.out.println("Filme:" + texto);
           
           MovieDetails movie = new MovieDetails();
           
           MoviesDAO mdao = new MoviesDAO();
           
           //if(mdao.save(movie)){
           //    System.out.println("Saved");
           //}else{
              // System.err.println("Not");
           //}
    
    
    }

}
