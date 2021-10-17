/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;


import Bean.CertificationMPAA.ReleaseDate;
import Bean.CertificationMPAA.Result;
import Bean.CertificationMPAA.Root;
import Bean.Crew.Crew;
import Bean.Crew.RootCrew;
import Bean.Movie;
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
public class addMovie_DB_Details extends HttpServlet {

    private static final long serialVersionUID = 1L;

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
       
       /* Movie movie = new Movie();
        
        String title=request.getParameter("movieTitle");  
            movie.setSeries_Title(title);
        String poster=request.getParameter("moviePoster"); 
            movie.setPoster_Link("https://image.tmdb.org/t/p/w500"+poster);
        String Rate=request.getParameter("movieVote");  
            movie.setRate(Rate);
        String overvew=request.getParameter("movieDesc");
            movie.setOverview(overvew);
        String data=request.getParameter("movieData");
            movie.setReleased_Year(data);
       
        String genero = request.getParameter("moviegenres");
           String Genres = "";
           ObjectMapper objectMapper = new ObjectMapper();
            JsonNode jsonNode = objectMapper.readTree(genero);
            for(int i=0;i<jsonNode.size() ;i++){
            JsonNode node = jsonNode.get(i);
            Genres = Genres.concat(node.get("name").toString().replace("\"","" )+",");
            }
            try{
            movie.setGenre(Genres.substring (0, Genres.length() - 1));
            }catch(Exception e){
                
            }
        String runtime=request.getParameter("movietempo");
            movie.setRumtime(runtime);
        String movieid =request.getParameter("movieid");
            movie.setTMDBId(movieid);
        
        String release = request.getParameter("movierelease");
           ObjectMapper objectMapper1 = new ObjectMapper();
           String certification = "";
           Root c = objectMapper1.readValue(release, Root.class);
           for(Result b : c.getResults()){
               if(b.getIso_3166_1().toString().equals("US")){
                for(ReleaseDate a : b.getRelease_dates()){
                   // System.out.println("MOVIE: "+ movie.getSeries_Title() + "\nCERTI: "+a.getCertification());
                    certification = a.getCertification();
                    break;
                }
               }
           }
           movie.setCertificate(certification);
           
           String moviecrew = request.getParameter("moviecrew");
           String crew = "";
           String Director = "";
           ObjectMapper objectMapper2 = new ObjectMapper();
           RootCrew rootcrew = objectMapper2.readValue(moviecrew, RootCrew.class);
           for(Crew cast : rootcrew.getCrew()){
               if(cast.getKnown_for_department().equals("Directing")){
                   
                   Director = Director.concat(cast.getName().toString()+",");
               }
           }
           movie.setDirector(Director);
           movie.setElenco(moviecrew);
           
           //System.out.println(movie.getPoster_Link());
           
           MoviesDAO mdao = new MoviesDAO();
           
           //if(mdao.savedetales(movie)){
           //}else{
           //   System.err.println("Not");
          // }
    */
    
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        StringBuilder texto = new StringBuilder("\n");
        Movie movie = new Movie();
        
        String release = request.getParameter("movierelease");
           ObjectMapper objectMapper1 = new ObjectMapper();
           String certification = "";
           Root c = objectMapper1.readValue(release, Root.class);
           for(Result b : c.getResults()){
               if(b.getIso_3166_1().toString().equals("US")){
                for(ReleaseDate a : b.getRelease_dates()){
                   // System.out.println("MOVIE: "+ movie.getSeries_Title() + "\nCERTI: "+a.getCertification());
                    certification = a.getCertification();
                    break;
                }
               }
           }
           movie.setCertificate(certification);
           String moviecrew = request.getParameter("moviecrew");
           String crew = "";
           String Director = "";
           ObjectMapper objectMapper2 = new ObjectMapper();
           RootCrew rootcrew = objectMapper2.readValue(moviecrew, RootCrew.class);
           for(Crew cast : rootcrew.getCrew()){
               if(cast.getKnown_for_department().equals("Directing")){
                   
                   Director = Director.concat(cast.getName().toString()+",");
               }
           }
           movie.setDirector(Director);
           movie.setElenco(moviecrew);
           response.getWriter().write(texto.toString());
       
    }
}
