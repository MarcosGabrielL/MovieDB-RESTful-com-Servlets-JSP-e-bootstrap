/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Bean.Cinefilo;
import Bean.Comentario;
import Dao.ComentarioDAO;
import Dao.Login_CinefiloDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.joda.time.DateTime;
import utils.Datas;

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
        
        try{cdao.deletid(idmovie, idperson);
        }catch(Exception e){ System.out.println("Erro: "+e.getMessage());
        }finally{  cdao.save(c,idmovie,idperson);}
        
        response.getWriter().write(getComments(idmovie));
    }
    
    public String getComments(String Movie){
        StringBuilder comentarioHTML = new StringBuilder("\n");
        Cinefilo cinefilo = new Cinefilo();
                    ComentarioDAO comentDAO = new ComentarioDAO();
                    Login_CinefiloDAO cindao = new Login_CinefiloDAO();
                    List<Comentario> coments = new ArrayList<Comentario>();
                    
        for(Comentario c : comentDAO.read(Movie)){
            cinefilo = cindao.readID(c.getID_Cinefilo());
            Locale locale = new Locale("pt","BR");
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale);
            DateTime date = null;
            String tempo = new String();
            try{
                date = new DateTime(formatter.parse(c.getData()));
            }catch(Exception e){
                
            }finally{
                DateTime agora = new DateTime(new Date());
                tempo = Datas.getTempoPassado(date, agora);
            }
            
                        
            comentarioHTML.append(" <li>\n" +
"				<div class=\"comment-main-level\" style=\"width: 85%; float: left;\">\n" +
"					<!-- Avatar -->\n" +
"					<div class=\"comment-avatar\"><img src=\"").append(cinefilo.getFoto()).append( "\" alt=\"\"></div>\n" +
"					<!-- Contenedor del Comentario -->\n" +
"                                        <div class=\"comment-box\" style=\"width: 67%;float: left;\"> \n" +
"						<div class=\"comment-head\">\n" +
"							<h6 style=\"margin-top: 3px; \" class=\"comment-name by-author\"><a href=\"\">").append(cinefilo.getNome() ).append( "</a>"
        + "                                                 <a   style=\"text-decoration: none;\n" +
"                                                                            background: #FF3A3A;\n" +
"                                                                            color: #FFF;\n" +
"                                                                            font-size: 12px;\n" +
"                                                                            padding: 3px 5px;\n" +
"                                                                            font-weight: 700;\n" +
"                                                                            border-radius: 3px;\n" +
"                                                                            margin-left: 10px;\">").append(c.getAvaliação()).append( "/10</a>"
        + "                                              </h6>\n" +
"                                                        <span style=\"margin-top: 3px; top:0px;\">").append(tempo ).append( "</span>\n" +
"							<i class=\"fa fa-star\"></i>\n" +
"                                                        <i class=\"fa fa-star\"></i>\n" +
"                                                        <i class=\"fa fa-star\"></i>\n" +
"                                                        <i class=\"fa fa-star\"></i>\n" +
"                                                        <i class=\"fa fa-star\"></i>\n" +
"						</div>\n" +
"						<div style=\"padding-top: 0px;\" class=\"comment-content\">").append(c.getCritica() ).append( "</div>\n" +
"					</div>\n" +
"				</div>\n" +
"			</li>");
                   
        }
        return comentarioHTML.toString();
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
