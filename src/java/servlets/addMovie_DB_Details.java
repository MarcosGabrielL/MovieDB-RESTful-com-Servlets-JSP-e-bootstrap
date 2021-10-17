/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;


import Bean.MovieDetails;
import Bean.ReleaseDate;
import Bean.Result;
import Bean.Root;
import Dao.MoviesDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.SerializationConfig;

/**
 *
 * @author Marcos
 */
@WebServlet(name = "addMovie_DB_Details", urlPatterns = {"/addMovie_DB_Details"})
public class addMovie_DB_Details extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        MovieDetails movie = new MovieDetails();
        String title=request.getParameter("movieTitle");  
       movie.setTitle(title);
           String poster=request.getParameter("moviePoster"); 
       movie.setPosterPath(poster);
           String Rate=request.getParameter("movieVote");  
       movie.setVoteAverage(Rate);
           String overvew=request.getParameter("movieDesc");
       movie.setOverview(overvew);
           String data=request.getParameter("movieData");
       movie.set
           String genero = request.getParameter("moviegenres");
           String Genres = "";
           ObjectMapper objectMapper = new ObjectMapper();
            JsonNode jsonNode = objectMapper.readTree(genero);
            for(int i=0;i<jsonNode.size() ;i++){
            JsonNode node = jsonNode.get(i);
            Genres = Genres.concat(node.get("name").toString().replace("\"","" )+",");
            }
             texto.append(Genres.substring (0, Genres.length() - 1));
           String runtime=request.getParameter("movietempo");
           texto.append(runtime+"\n");
           String movieid =request.getParameter("movieid");
           texto.append(movieid+"\n");
           
           
           
           String release = request.getParameter("movierelease");
           
           ObjectMapper objectMapper1 = new ObjectMapper();
           String certification = "";
           Root c = objectMapper1.readValue(release, Root.class);
           for(Result b : c.getResults()){
               if(b.getIso_3166_1().toString().equals("US")){
                for(ReleaseDate a : b.getRelease_dates()){
                    System.out.println("CERTI: "+a.getCertification());
                }
               }
           }
           texto.append(certification+"\n");
           
           if(movieid.equals("566525")){
           System.out.println("Filme:" + texto);
           }
           
           MovieDetails movie = new MovieDetails();
           
           MoviesDAO mdao = new MoviesDAO();
           
           //if(mdao.save(movie)){
           //    System.out.println("Saved");
           //}else{
              // System.err.println("Not");
           //}
    
    
    }

}
