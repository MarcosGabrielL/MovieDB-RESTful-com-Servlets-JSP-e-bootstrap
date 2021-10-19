/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Bean.Comentario;
import Dao.ComentarioDAO;
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
public class comentarios_servlet extends HttpServlet {

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
            out.println("<title>Servlet comentarios_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet comentarios_servlet at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        StringBuilder texto = new StringBuilder("\n");
        
        String comentario = request.getParameter("comentario");
        String idmovie = request.getParameter("idmovie");
        String idperson = request.getParameter("idperson");
        String rate = request.getParameter("rate");
        
        Comentario c = new Comentario(); //Critica=comentario //avaliação=rate 5 estrelas
        c.setCritica(comentario);
        c.setID_Cinefilo(idperson);
        c.setId_movie(idmovie);
        //System.out.println();
        if(Integer.parseInt(rate)==1){
            c.setCurtidas_1_estrela(rate);
        }
        if(Integer.parseInt(rate)==2){
            c.setCurtidas_2_estrela(rate);
        }
        if(Integer.parseInt(rate)==3){
            c.setCurtidas_3_estrela(rate);
        }
        if(Integer.parseInt(rate)==4){
            c.setCurtidas_4_estrela(rate);
        }
        if(Integer.parseInt(rate)==5){
            c.setCurtidas_5_estrela(rate);
        }
        c.setAvaliação(String.valueOf(Integer.parseInt(rate)*2));
        ComentarioDAO cdao = new ComentarioDAO();
        cdao.save(c,idmovie,idperson);
         response.getWriter().write(texto.toString());
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
