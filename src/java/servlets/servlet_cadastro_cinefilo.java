/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Bean.Cinefilo;
import Dao.Login_CinefiloDAO;
import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Marcos
 */
public class servlet_cadastro_cinefilo extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String user=request.getParameter("username");  
    String pass=request.getParameter("password"); 
    String email=request.getParameter("emailAdress");  
    
    Cinefilo cinefilo = new Cinefilo();
    cinefilo.setUser(user);
    cinefilo.setPassword(pass);
    cinefilo.setEmail(email);
          
    if(Login_CinefiloDAO.save(cinefilo)){  
         
        request.getSession().setAttribute("UserId",user);
        request.getSession().setAttribute("Cadastrado",true);
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
