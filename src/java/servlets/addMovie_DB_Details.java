/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;


import Bean.Movie;
import Bean.CertificationMPAA.ReleaseDate;
import Bean.CertificationMPAA.Result;
import Bean.CertificationMPAA.Root;
import Bean.Crew.Cast;
import Bean.Crew.Crew;
import Bean.Crew.RootCrew;
import Dao.CastDAO;
import Dao.MoviesDAO;
import Dao.ReleaseCertificadoDAO;
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

    private static final long serialVersionUID = 1L;

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        Movie movie = new Movie();
        
       /* String title=request.getParameter("movieTitle");  
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
            movie.setRumtime(runtime);*/
        String movieid =request.getParameter("movieid");
            movie.setTMDBId(movieid);
        
        String release = request.getParameter("movierelease");
           ObjectMapper objectMapper1 = new ObjectMapper();
           String certification = "";
           Root c = objectMapper1.readValue(release, Root.class);
           ReleaseCertificadoDAO rcerti = new ReleaseCertificadoDAO();
           for(Result b : c.getResults()){
               if(b.getIso_3166_1().toString().equals("US")){
                for(ReleaseDate a : b.getRelease_dates()){
                    //SALVA OS CERTIFICADOS
           if(rcerti.save(a, movie.getTMDBId())){}else{System.err.println("Not - Certificado");}
                   // certification = a.getCertification();
                    break;
                }
               }
           }
           //movie.setCertificate(certification);
           
           String moviecrew = request.getParameter("moviecrew");
           String crew = "";
           String Director = "";
           ObjectMapper objectMapper2 = new ObjectMapper();
           RootCrew rootcrew = objectMapper2.readValue(moviecrew, RootCrew.class);
           CastDAO castdao = new CastDAO();
           for(Cast cast : rootcrew.getCast()){
               //if(cast.getKnown_for_department().equals("Acting")){
                   //SALVA OS ATORES
           if(castdao.save(cast, movie.getTMDBId())){}else{System.err.println("Not - Cast");}
                  // Director = Director.concat(cast.getName().toString()+",");
               //}
           }
          // movie.setDirector(Director);
           //movie.setElenco(moviecrew);
           
           
           
           //SALVA O FILME
           //MoviesDAO mdao = new MoviesDAO();
           //if(mdao.savedetales(movie)){
           //}else{
           //   System.err.println("Not");
          // }
    
    
    }

}
