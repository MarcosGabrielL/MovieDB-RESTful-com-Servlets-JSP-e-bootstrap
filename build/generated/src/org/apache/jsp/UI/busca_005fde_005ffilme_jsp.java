package org.apache.jsp.UI;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.util.List;
import Bean.Movie;
import Dao.MoviesDAO;

public final class busca_005fde_005ffilme_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    \n");
      out.write("    ");
 MoviesDAO mdao = new MoviesDAO();
    List<Movie> movies = new ArrayList<Movie>();
    movies = mdao.read();
    
      out.write("\n");
      out.write("    \n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <title>Busca de Filme</title>\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("<link rel=\"apple-touch-icon\" type=\"image/png\" href=\"https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png\">\n");
      out.write("\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"../resource/favicon-16x16.png\">\n");
      out.write("\n");
      out.write(" <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../style.css\">\n");
      out.write("\n");
      out.write("  <style>\n");
      out.write("* {\n");
      out.write("  -webkit-box-sizing: inherit;\n");
      out.write("          box-sizing: inherit;\n");
      out.write("}\n");
      out.write("\n");
      out.write("html {\n");
      out.write("  -webkit-box-sizing: border-box;\n");
      out.write("          box-sizing: border-box;\n");
      out.write("  height: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  background-color: #D1D1D1;\n");
      out.write("  color: #fff;\n");
      out.write("  font-family: sans-serif;\n");
      out.write("  font-style: 1rem;\n");
      out.write("  line-height: 1.5;\n");
      out.write("  margin: 0 auto;\n");
      out.write("  min-height: 100vh;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("figure {\n");
      out.write("  margin: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("img {\n");
      out.write("  height: auto;\n");
      out.write("  max-width: 100%;\n");
      out.write("  vertical-align: middle;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input {\n");
      out.write("  border: 0;\n");
      out.write("  font: inherit;\n");
      out.write("  margin: 0;\n");
      out.write("  padding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".search {\n");
      out.write("  font-size: 1.5rem;\n");
      out.write("  margin: 1.5em auto 3em;\n");
      out.write("  max-width: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".search [type='search'] {\n");
      out.write("  background-color: #fff;\n");
      out.write("  color: #000000;\n");
      out.write("  padding: 0.5em 2em;\n");
      out.write("  text-align: center;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".movies {\n");
      out.write("  display: grid;\n");
      out.write("  grid-gap: 3em 2em;\n");
      out.write("  grid-template-columns: repeat(auto-fill, minmax(12em, 1fr));\n");
      out.write("  list-style: none;\n");
      out.write("  margin: 5%;\n");
      out.write("  padding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".movie__figure {\n");
      out.write("  position: relative;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".movie__poster {\n");
      out.write("  -webkit-box-shadow: 0 0 1em rgba(0, 0, 0, 0.5);\n");
      out.write("          box-shadow: 0 0 1em rgba(0, 0, 0, 0.5);\n");
      out.write("  margin-bottom: 0.5em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".movie__vote {\n");
      out.write("  -webkit-box-align: center;\n");
      out.write("      -ms-flex-align: center;\n");
      out.write("          align-items: center;\n");
      out.write("  background-color: #f68d01;\n");
      out.write("  border-radius: 50%;\n");
      out.write("  -webkit-box-shadow: 0 0 1em rgba(0, 0, 0, 0.25);\n");
      out.write("          box-shadow: 0 0 1em rgba(0, 0, 0, 0.25);\n");
      out.write("  display: -webkit-box;\n");
      out.write("  display: -ms-flexbox;\n");
      out.write("  display: flex;\n");
      out.write("  height: 2.25em;\n");
      out.write("  -webkit-box-pack: center;\n");
      out.write("      -ms-flex-pack: center;\n");
      out.write("          justify-content: center;\n");
      out.write("  padding: 0.5em;\n");
      out.write("  position: absolute;\n");
      out.write("  right: 0;\n");
      out.write("  text-align: center;\n");
      out.write("  top: 75%;\n");
      out.write("  -webkit-transform: translateX(50%);\n");
      out.write("      -ms-transform: translateX(50%);\n");
      out.write("          transform: translateX(50%);\n");
      out.write("  width: 2.25em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".movie__title {\n");
      out.write("  font-size: 0.875rem;\n");
      out.write("  font-weight: 400;\n");
      out.write("  margin: 0;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("  <script>\n");
      out.write("  window.console = window.console || function(t) {};\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <script>\n");
      out.write("  if (document.location.search.match(/type=embed/gi)) {\n");
      out.write("    window.parent.postMessage(\"resize\", \"*\");\n");
      out.write("  }\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body translate=\"no\">\n");
      out.write("  <div class=\"window-margin\">\n");
      out.write("  <div class=\"window\">\n");
      out.write("\n");
      out.write("    <aside class=\"sidebar\">\n");
      out.write("      <div class=\"top-bar\">\n");
      out.write("        <p class=\"logo\">ASA</p>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      \n");
      out.write("    </aside>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"main\" role=\"main\">\n");
      out.write("\n");
      out.write("      <div class=\"top-bar\">\n");
      out.write("  \n");
      out.write("  \n");
      out.write("        <div class=\"profile-box\">\n");
      out.write("          <div class=\"circle\"></div>\n");
      out.write("          <span class=\"arrow1 fa fa-angle-down\"></span>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <ul class=\"top-menu\">\n");
      out.write("          <li class=\"menu-icon trigger-sidebar-toggle\">\n");
      out.write("            <div class=\"line\"></div>\n");
      out.write("            <div class=\"line\"></div>\n");
      out.write("            <div class=\"line\"></div>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"#\">Filmes</a></li>\n");
      out.write("          <li><a href=\"#\">Séries</a></li>\n");
      out.write("          <li class=\"active\"><a href=\"#\">Na Telona</a></li>\n");
      out.write("          <li><a href=\"#\">Noticias</a></li>\n");
      out.write("          <li><a href=\"#\">Usuario</a></li>\n");
      out.write("          <li><a href=\"#\">Artistas</a></li>\n");
      out.write("        </ul>\n");
      out.write("\n");
      out.write("      </div> <!-- top bar -->\n");
      out.write("\n");
      out.write("      \n");
      out.write("\n");
      out.write("       <!-- movie list -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div> <!-- main -->\n");
      out.write("\n");
      out.write("  </div> <!-- window -->\n");
      out.write("</div> <!-- window margin -->\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"root\">\n");
      out.write("   <div data-reactroot=\"\" class=\"app\">\n");
      out.write("      <form class=\"search\">\n");
      out.write("          <input onkeyup=\"myFunction()\" type=\"search\" value=\"\" placeholder=\"Search for Movie Title …\" name=\"name\" id=\"values\">\n");
      out.write("      </form>\n");
      out.write("      <ul id=\"aa\" class=\"movies\" style=\"margin: 5%;\">\n");
      out.write("             ");
 
                int i = 0;
                for(Movie movie : movies){
                    if(i>=20){
                        break;
                    }
                 i++;
             
      out.write("\n");
      out.write("         <li>\n");
      out.write("            <div href=\"#\" class=\"movie\">\n");
      out.write("               <figure class=\"movie__figure\">\n");
      out.write("                  <a  href=\"http://localhost:8080/ASA/Filme?name=");
      out.print(movie.getSeries_Title() );
      out.write("\">\n");
      out.write("                  <img href=\"#\" style=\"height: 100%; width: 100%;\" src=\"");
      out.print(movie.getPoster_Link() );
      out.write("\" class=\"movie__poster\">\n");
      out.write("                    </a>\n");
      out.write("                  <figcaption><span class=\"movie__vote\">");
      out.print(movie.getIMDB_Rating() );
      out.write("</span></figcaption>\n");
      out.write("                  <h2 class=\"movie__title\">");
      out.print(movie.getSeries_Title() );
      out.write("</h2>\n");
      out.write("                  </figure>\n");
      out.write("            </div>\n");
      out.write("         </li>\n");
      out.write("         ");
}
      out.write("\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("   </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("         <script>\n");
      out.write("\n");
      out.write("function myFunction() {\n");
      out.write("   const x = document.getElementById(\"values\");\n");
      out.write("   //alert(x.value);\n");
      out.write("  AddTableRow();\n");
      out.write("  }\n");
      out.write("    function AddTableRow(){\n");
      out.write("        \n");
      out.write("        var dsc = document.getElementById('values').value;\n");
      out.write("        $.ajax({\n");
      out.write("                type: \"GET\",\n");
      out.write("                url: '../buscar_filme_pagina_servlet',\n");
      out.write("                data: \"debusc=\" + dsc,\n");
      out.write("                complete: [\n");
      out.write("                    function (response) {\n");
      out.write("                        $(\"#aa\").find(\"li\").remove();\n");
      out.write("                        \n");
      out.write("                        var trHTML = response.responseText;\n");
      out.write("                        $(\"#aa\").append(trHTML);\n");
      out.write("                    }\n");
      out.write("                ]\n");
      out.write("            });\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("  \n");
      out.write("</script>\n");
      out.write("\n");
      out.write("  \n");
      out.write("             </script>\n");
      out.write(" \n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}