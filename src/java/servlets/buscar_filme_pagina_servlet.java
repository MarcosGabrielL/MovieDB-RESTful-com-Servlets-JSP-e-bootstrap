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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marcos
 */
public class buscar_filme_pagina_servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet buscar_filme_pagina_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet buscar_filme_pagina_servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        String nome = request.getParameter("debusc");
        StringBuilder texto = new StringBuilder("\n");
        MoviesDAO pdao = new MoviesDAO();
        
        int i = 0;
        for(Movie p : pdao.Procurar(String.valueOf(nome))){
            //System.out.println("buscar_filme_pagina..."+p.getSeries_Title());
            
            texto.append("<li>"
                    + "<div class=\"movie\"><figure class=\"movie__figure\">"
                    + "<a href=\"http://localhost:8080/ASA/Filme?name=").append(p.getTMDBId()).append("\">"
                    + "<img href=\"#\" style=\"height: 100%; width: 100%;\" src=").append(p.getPoster_Link()).append(" class=\"movie__poster\">"
                            + "</a>"
                            + "<figcaption><span class=\"movie__vote\">").append(p.getIMDB_Rating()).append("</span></figcaption><h2 class=\"movie__title\">").append(p.getSeries_Title()).append("</h2></figure></div></li>");  
        
        }
            response.getWriter().write(texto.toString());
       
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
