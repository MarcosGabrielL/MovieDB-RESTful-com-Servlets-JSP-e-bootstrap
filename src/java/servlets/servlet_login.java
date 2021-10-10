/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;


/**
 *
 * @author Marcos
 */

import Dao.Login_CinefiloDAO;
import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
  
public class servlet_login extends HttpServlet { 
    
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("username");  
    String p=request.getParameter("userpass");  
    
    System.out.println(Login_CinefiloDAO.validate(n, p).getUser() );
          
    if(Login_CinefiloDAO.validate(n, p).getUser() != null){  
         
        request.getSession().setAttribute("UserId",n);
        response.sendRedirect("UI/Profile_Cinefilo.jsp");
        
    }  
    else{  
        //Menssagem de erro
        request.getSession().setAttribute("loginError","User or password incorrect!");
        response.sendRedirect("UI/login_cinefilo.jsp");
    }  
          
    out.close();  
    }  
}  
