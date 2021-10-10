<%-- 
    Document   : busca_de_filme
    Created on : 05/09/2021, 20:44:06
    Author     : Marcos
--%>

<%@page import="Bean.Movie"%>
<%@page import="Dao.MoviesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

  <meta charset="UTF-8">
  <title>Busca de Filme</title>
  
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">

<link rel="shortcut icon" type="image/x-icon" href="../resource/favicon-16x16.png">

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel="stylesheet" href="../style.css">

  <style>
* {
  -webkit-box-sizing: inherit;
          box-sizing: inherit;
}

html {
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
  height: 100%;
}

body {
  background-color: #D1D1D1;
  color: #fff;
  font-family: sans-serif;
  font-style: 1rem;
  line-height: 1.5;
  margin: 0 auto;
  min-height: 100vh;
  width: 100%;
}

figure {
  margin: 0;
}

img {
  height: auto;
  max-width: 100%;
  vertical-align: middle;
}

input {
  border: 0;
  font: inherit;
  margin: 0;
  padding: 0;
}

.search {
  font-size: 1.5rem;
  margin: 1.5em auto 3em;
  max-width: 50%;
}

.search [type='search'] {
  background-color: #fff;
  color: #000000;
  padding: 0.5em 2em;
  text-align: center;
  width: 100%;
}

.movies {
  display: grid;
  grid-gap: 3em 2em;
  grid-template-columns: repeat(auto-fill, minmax(12em, 1fr));
  list-style: none;
  margin: 5%;
  padding: 0;
}

.movie__figure {
  position: relative;
}

.movie__poster {
  -webkit-box-shadow: 0 0 1em rgba(0, 0, 0, 0.5);
          box-shadow: 0 0 1em rgba(0, 0, 0, 0.5);
  margin-bottom: 0.5em;
}

.movie__vote {
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  background-color: #f68d01;
  border-radius: 50%;
  -webkit-box-shadow: 0 0 1em rgba(0, 0, 0, 0.25);
          box-shadow: 0 0 1em rgba(0, 0, 0, 0.25);
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  height: 2.25em;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  padding: 0.5em;
  position: absolute;
  right: 0;
  text-align: center;
  top: 75%;
  -webkit-transform: translateX(50%);
      -ms-transform: translateX(50%);
          transform: translateX(50%);
  width: 2.25em;
}

.movie__title {
  font-size: 0.875rem;
  font-weight: 400;
  margin: 0;
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
</head>

<body translate="no">
  <div class="window-margin">
  <div class="window">

    <aside class="sidebar">
      <div class="top-bar">
        <p class="logo">ASA</p>
      </div>

      
    </aside>


    <div class="main" role="main">

      <div class="top-bar">
  
  
        <div class="profile-box">
          <div class="circle"></div>
          <span class="arrow1 fa fa-angle-down"></span>
        </div>


        <ul class="top-menu">
          <li class="menu-icon trigger-sidebar-toggle">
            <div class="line"></div>
            <div class="line"></div>
            <div class="line"></div>
          </li>
          <li><a href="#">Filmes</a></li>
          <li><a href="#">Séries</a></li>
          <li class="active"><a href="#">Na Telona</a></li>
          <li><a href="#">Noticias</a></li>
          <li><a href="#">Usuario</a></li>
          <li><a href="#">Artistas</a></li>
        </ul>

      </div> <!-- top bar -->

      

       <!-- movie list -->


    </div> <!-- main -->

  </div> <!-- window -->
</div> <!-- window margin -->
  








<div id="root">
   <div data-reactroot="" class="app">
      <form class="search"><input type="search" value="" placeholder="Search for Movie Title …"></form>
      <ul class="movies" style="margin: 5%;">
             <% MoviesDAO mdao = new MoviesDAO();
                int i = 0;
                for(Movie movie : mdao.read()){
                    if(i>=100){
                        break;
                    }
                 i++;
             %>
         <li>
            <div class="movie">
               <figure class="movie__figure">
                  <img href="#" style="height: 100%; width: 100%;" src="<%=movie.getPoster_Link() %>" class="movie__poster">
                  <figcaption><span class="movie__vote"><%=movie.getIMDB_Rating() %></span></figcaption>
                  <h2 class="movie__title"><%=movie.getSeries_Title() %></h2>
                  </figure>
            </div>
         </li>
         <%}%>
        
      </ul>
   </div>
</div>













  




 
</body>
</html>
