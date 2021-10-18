<%-- 
    Document   : newjsp
    Created on : 17/10/2021, 19:39:02
    Author     : Marcos
--%>

<%@page import="Bean.Movie"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.MoviesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <% MoviesDAO mdao = new MoviesDAO();
    List<Movie> movies = new ArrayList<Movie>();
    movies = mdao.read();
    
    
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
           <% for(Movie m : movies){
       request.getSession().setAttribute("name",m.getTMDBId()); %>
           
           <%}%>
        </script>
    </body>
    
    
</html>
