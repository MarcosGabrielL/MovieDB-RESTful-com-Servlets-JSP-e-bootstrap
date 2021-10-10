/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Bean.Movie;
import Dao.MoviesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marcos
 */
@WebServlet(name = "addMovie_DB", urlPatterns = {"/addMovie_DB"})
public class addMovie_DB extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String user=request.getParameter("src");  
           String pass=request.getParameter("title"); 
           String email=request.getParameter("rate");  
           String overvew=request.getParameter("overview");  
           String data=request.getParameter("data");  
           
           Movie movie = new Movie();
           movie.setPoster_Link(user);
           movie.setSeries_Title(pass);
           movie.setReleased_Year(data);
           movie.setRate(email);
           movie.setOverview(overvew);
           
           MoviesDAO mdao = new MoviesDAO();
           
           if(mdao.save(movie)){
               System.out.println("Saved");
           }else{
               System.err.println("Not");
           }
    
    
   

}
