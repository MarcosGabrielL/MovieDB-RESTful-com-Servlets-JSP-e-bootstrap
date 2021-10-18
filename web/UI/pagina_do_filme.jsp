<%-- 
    Document   : pagina_do_filme
    Created on : 11/09/2021, 18:40:39
    Author     : Marcos
--%>

<%@page import="Bean.CertificationMPAA.ReleaseDate"%>
<%@page import="Dao.ReleaseCertificadoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Bean.Crew.Cast"%>
<%@page import="Dao.CastDAO"%>
<%@page import="Bean.Movie"%>
<%@page import="Dao.MoviesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en" style="background: #f3f3f3;" >
     
<head>

  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resource/favicon-16x16.png">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  	<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/UI/pagina_do_filme.css">
   <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>

<script>
    window.onload= function() {
   <% String titulo = request.getParameter("name"); 
     System.out.println("1"+titulo);
     System.out.println("2"+request.getSession().getAttribute("name"));
     String id = (String) request.getSession().getAttribute("name");
     if(titulo!=null){
        request.getSession().setAttribute("name",titulo);
     }
    
   MoviesDAO mdao = new MoviesDAO();
    Movie m = mdao.info_movie(request.getSession().getAttribute("name").toString());
    %>
        //window.history.replaceState({}, document.title, "/" + "ASA/Filme#/<%=m.getSeries_Title() %>");
    //   
    
    };
 </script>
    <title>ASA - <%=m.getSeries_Title() %></title>

<style>
html {
  font-size: 10px;
}

* {
  font-weight: 100;
  font-family: "Source Sans Pro", sans-serif;
  list-style: none;
  text-decoration: none;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

*:focus {
  outline: none;
}

h2 {
  font-weight: 700;
  margin-bottom: 1rem;
  font-size: 2.4rem;
}

h3 {
  font-size: 2rem;
  font-weight: 600;
  margin: 5px 0 12px 0;
  opacity: 0.8;
}

p {
  font-size: 1.6rem;
}
a {
  color: #fff;
}

.bg {
  display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 53rem;
    background-color: #d1d1d1;
}
.content {
  display:flex;
  width: 90%;
  height:45rem
}
.image {
  width: 30rem;
 
}
.info {
 color: #333333;
    width: 41%;
    background-color: #e8e8e8;
    padding: 2rem 2rem 4rem 2rem;
    position: absolute;
    right: 31%;
    height: 45rem;
}
.title {
  padding-bottom: 1rem
}
.title a h2 {
  display:inline-block;
  font-size: xx-large;
  color:#1b1b1b;
}
.title span {
  opacity: 0.6;
  font-size: 2.72rem;
  font-weight: 400;
}
.meta-actions {
  display:flex;
  height:6.8rem;
}
.score {
  display:flex;
  align-items: center;
}
.score h1 {
      margin-left: .6rem;
    line-height: 1.44rem;
    font-size: 1.44rem;
    font-weight: 800;
    color: #fff;
}

.percentage-circle {
  width: 6.4rem;
  height: 6.4rem;
  border-radius: 50%;
  padding: 0.4rem;
  background-color:#FF3A3A;
}
.percentage-circle-stroke {
  width: 5.6rem;
  height: 5.6rem;
  border-radius: 50%;
  padding: 0.4rem;
  background-color: #1b1b1b;
}
.percent {
  position: relative;
  display: flex;
  height: 100%;
  align-items: center;
  justify-content: center;
  font-size: 1.7rem;
  font-weight: 600;
  color: #fff;
}
.percent span sup {
  position: absolute;
  vertical-align: super;
  font-size: 1.1rem;
  font-weight: 100;
}
.meta-actions ul {
  margin-left: 1.5rem;
  width: 51%;
  display: flex;
  justify-content: space-evenly;
  align-items:center;
}
.meta-actions ul li {
  display:flex;
  justify-content: center;
  align-items:center;
  width:4rem;
  height:4rem;
  /*border: .2rem solid #FF3A3A;*/
  border-radius: 50%;
}

.meta-actions i:hover{
    color:#FF3A3A;
}

.meta-actions ul li a::before {
  font-family: "Font Awesome 5 Free";
  display: inline-block;
  padding-right: 3px;
  vertical-align: middle;
  font-weight: 900;
}
.meta-actions ul li:last-of-type {
  all: unset;
  color:green;
  font-size:1.44rem;
  margin-left:1rem;
}
.play-trailer span {
  padding-right:.5rem;
}

.about {
  height: 70%;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  
  
}
/*--------------------------------PERSON ELECO------------------------*/
/* list */
.person-list {
  padding: 0;
  list-style: none;
  color: #fff;
}

.person-item {
  padding: 16px 0;
  display: flex;
  align-items: center;
  color: #fff;
  text-decoration: none;
}
.person-item:hover {
  background-color: #eee;
}

.person-name {
  padding-left: 12px;
  flex: 1;
}
.person-nage{
    opacity: 0.5;
    font-size: 1.2rem;
    flex: 1;
   
}

.person-avatar {
      width: 60px;
    height: 60px;
    border-radius: 50%;
    margin-left: 4px;
}

/*------------------- VIDEO SLIDE -------------------------*/
.video-container {
  margin: 0 auto;
  max-width: 100%;
  height: 172px;
  position: relative;
}
/* Video Slider */
.video-slider {
  display: none;
}
/* Individual Slide: Container */
.video-slide {
  position: relative;
  margin: 0 auto;
}
/* Individual Slide: Video */
.video-slide video {
      width: 90%;
      margin-left: 5%;
    height: 172px;
}
/* Navigation */
.video-slider-btn {
  border: none;
    display: inline-block;
    color: #fff;
    font-size: 29px;
    padding: 10px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none;
    background-color: transparent;
    text-align: center;
    cursor: pointer;
    white-space: nowrap;
    z-index: 99999;
    opacity: .7;
    transition: all 350ms ease-in-out;
}
.video-slider-btn:hover {
  color: #fffc45;
  transition: all 350ms ease-in-out;
}
.video-slider-btn.left-side {
  position: absolute;
  top: 35%;
  left: 5%;
  transform: translate(0%,-50%);
  -ms-transform: translate(-0%,-50%);
}
.video-slider-btn.right-side {
  position: absolute;
  top: 35%;
  right: 5%;
  transform: translate(0%,-50%);
  -ms-transform: translate(0%,-50%);
}
/*------------------ FOTOS SLIDE -------------*/
#slider{
  width: 90%;
    margin-left: 5%;
    margin-right: 5%;
    margin-top: 5px;
    position: relative;
    overflow: hidden;
    height: 184px;
}

.slide{
  width:100%;
  display: block;
    height: 250px;
  animation-name:fade;
  animation-duration:1s;
  
}
.slide img{
 width: auto;
    /* max-width: 100%; */
    /* background-position: bottom; */
    height: inherit;
}
@keyframes fade{
  from{opacity:0.5;}
  to{opacity:1;}
}

.controls{
  position:absolute;
  top:50%;
  transform:translateY(-50%);
  font-size: 29px;
  border-radius:5px;
  color: #fff;
  cursor: pointer;
  opacity: .7;
}

.controls:hover{
  color: #fffc45;
}

.controls:active{
  color:#fffc45;
}

#left-arrow{
  
  left: 5%;
}

#right-arrow{
  right:5%;
}

#dots-con{
  
  text-align:center;
}
.dot{
  display:inline-block;
  background:grey;
  padding:8px;
  border-radius:50%;
  margin:10px 5px;
}

.active{
  background:crimson;
}

@media (max-width:576px){
  #slider{width:100%;
  
  }
  
  .controls{
    font-size:1em;
  }
  
  #dots-con{
    display:none;
  }
 
  
  
  /*------------------------- CLASSIFICAÇAO INDICATIVA -------------------- */
 .button-group {
  margin-bottom: 20px;
}
.counter {
  display: inline;
  margin-top: 0;
  margin-bottom: 0;
  margin-right: 10px;
}
.posts {
  clear: both;
  list-style: none;
  padding-left: 0;
  width: 100%;
  text-align: left;
}
.posts li {
  background-color: #fff;
  border: 1.5px solid #d8d8d8;
  border-radius: 10px;
  padding-top: 10px;
  padding-left: 20px;
  padding-right: 20px;
  padding-bottom: 10px;
  margin-bottom: 10px;
  word-wrap: break-word;
  min-height: 42px;
  box-shadow:8px 8px 5px #888888;
}
.btn-primary {
    color: #fff;
    background-color: #337ab7;
    border-color: #2e6da4;
}

</style>
</head>

<body translate="no" >
    <input type="hidden" id="role" value=<%= id %> />
  <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css"
          integrity="sha384-v8BU367qNbs/aIZIxuivaU55N5GPF89WBerHoGA4QTcbUjYiLQtKdrfXnqAcXyTv" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <title>Movie page</title>
  </head>
  <body>
      
       <div class="window-margin">
	<div class="window">

		<aside class="sidebar">
                    <div class="top-bar" style="text-align: center;" >
                        <a href="<%=request.getContextPath()%>/Home" >
                        <img style="height: 45px; width: 45px;" src="<%=request.getContextPath()%>/resource/logosemfundo.png" alt="ASA" >
                        </a></div>

			<menu class="menu">
				<p class="menu-name"><b>Categorias</b></p>
				<ul>
					<li class="active"><a href="#">Todas</a></li>
					<li><a href="#">Ação</a></li>
					<li><a href="#">Aventura</a></li>
					<li><a href="#">Chanchada</a></li>
					<li><a href="#">Comédia</a></li>
					<li><a href="#">Documentário</a></li>
					<li><a href="#">Drama</a></li>
					<li><a href="#">Faroste</a></li>
					<li><a href="#">Fantasia</a></li>
					<li><a href="#">Sci-Fi</a></li>
					<li><a href="#">Mistério</a></li>
					<li><a href="#">Musical</a></li>
					<li><a href="#">Policial</a></li>
					<li><a href="#">Romance</a></li>
					<li><a href="#">Suspense</a></li>
					<li><a href="#">Terror</a></li>
					<li><a href="#">Thriller</a></li>
					<li><a href="#">Guerra</a></li>
				</ul>

				<div class="separator"></div>

				<!-- <ul class="no-bullets">
					<li><a href="#">Latest news</a></li>
					<li><a href="#">Critic reviews</a></li>
					<li><a href="#">Box office</a></li>
					<li><a href="#">Top 250</a></li>
				</ul>

				<div class="separator"></div>
			-->
			</menu>
		</aside>


		<div class="main" role="main">

			<div class="top-bar">
	<input type="text" placeholder="Buscar Filme ..." style="
	        align-content: floa;
	    /* float: right; */
	    background: #e8e8e8;
	    /* height: 30px; */
	    /* width: 30px; */
	    border-radius: 10px;
	    display: block;
	    float: right;
	    margin-top: 10px;
	    width: 170px;
	    height: 30px;
	    border: 0;
	    padding: 10px 20px;
	    outline: none;
	    color: #999;
	    transition-duration: 0.3s;
	    margin-right: 10px;
	"/>
	<p class="fa fa-search" style="
	    /* position: absolute; */
	    top: 17px;
	    right: 10px;
	    color: #1b1b1b;
	    float: right;
	    transition-duration: 0.3s;
	    cursor: pointer;
	    /* padding: 10px 20px; */
	    position: absolute;
	    margin-right: 10px;
	"></p>
				<div  class="profile-box onclick-menu" tabindex="0">
					<% if((String) request.getSession().getAttribute("UserId")!=null){
					%><div class="circle"></div>
                                        <span class="arrow1 fa fa-angle-down"></span>
                                        <ul class="onclick-menu-content" style="    margin-top: 49px;">
                                            <li><a href="#" style="
    border: none;
    padding: 0px auto;
    /* height: 10px; */
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    width: 180px;
    margin-bottom: -1px;
">Perfil</a></li>
					<li><a href="#" style="     
    border: none;
    padding: 0px auto;
    /* height: 10px; */
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    width: 180px;
    margin-bottom: -1px;
">Críticas</a></li>
					<li ><a onclick="theFunction();" style="  
    border: none;
    padding: 0px auto;
    /* height: 10px; */
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    width: 180px;
    margin-bottom: -1px;
">Saír</a></li>
    </ul>
                                        <%}else{%>
                                        <div onclick="location.href='http://localhost:8080/ASA/UI/login_cinefilo.jsp';">
                                            <a href="http://localhost:8080/ASA/UI/login_cinefilo.jsp">
                                                <span href="http://localhost:8080/ASA/UI/login_cinefilo.jsp" style="font-size: 14px; 
                                                font-weight: bold; padding: 6px 30px;
                                                background: #fffc45;
                                                color: #515151;
                                                border-radius: 30px;
                                                margin-right: 0px;
                                                border: none;">
                                                Sign In
                                            </span>
                                            </a>
                                            
                                            </div>
                                          <%}      %>
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

			


		</div> <!-- main -->

	</div> <!-- window -->
</div> <!-- window margin -->
  
    <section class="tv-content">
         <!-- Contenedor lado -->
<div class="lado">
    <nav class="menu-left menu-left-open" style="    margin-top: 40px;
    width: 22%;
    right: 8%;
    height: 45rem;
    background-color: #e8e8e8;
    background-blend-mode: multiply;
    position: absolute;">
        <h1 style="margin-top: 0px;
    margin-left: 0;
    border: 0;
    font-size: 15px;
    text-transform: none;">Trailer</h1>
  
        <div class="video-container">
  <a class="video-slider, videobox">
    <div class="video-slide">
      <video controls>
        <source src="https://coopersferry.com/storage/app/media/uploaded-files/video-slider/CAMDEN%20OPPORTUNITY%20TO%20BUILD%20A%20SECURE%20FUTURE.mp4" type="video/mp4">
      </video>
    </div>
    <div class="video-slide">
      <video controls>
        <source src="https://coopersferry.com/storage/app/media/uploaded-files/video-slider/CAMDEN%20OUR%20COMMUNITY%20ON%20THE%20RISE.mp4" type="video/mp4">
      </video>
    </div>
    <div class="video-slide">
      <video controls>
        <source src="https://coopersferry.com/storage/app/media/uploaded-files/video-slider/CAMDEN%20BUILDING%20AN%20INNOVATION%20ECONOMY.mp4" type="video/mp4">
      </video>
    </div>
  </a>


  <button class="video-slider-btn left-side" onclick="plusDivs(-1)">&#10094;</button>
  <button class="video-slider-btn right-side" onclick="plusDivs(1)">&#10095;</button>
</div>
        
        
        <h1 style="margin-top: 0px;
    margin-left: 0;
    border: 0;
    font-size: 15px;
    text-transform: none;">Fotos</h1>
    <div id="slider">  
  <div class="slide" >
    <img src="https://veja.abril.com.br/wp-content/uploads/2016/06/os-vingadores-05032012-14-original1.jpeg" >
  </div>
  
  <div class="slide">
     <img src="https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/2/sunset-storm-haystack-rock-canon-beach-oregon-coast-tl-mair.jpg" >
  </div>
 
  <div class="slide">
    <img src=" https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/1-tourists-at-eiffel-tower-paris-panoramic-images.jpg" >
  </div>
  
  <div class="slide" >
    <img src="https://dmasia.travel/wp-content/uploads/2019/09/vit3-1000x350.jpg" >
  </div>
  
  <!--Controlling arrows-->
  <span class="controls" onclick="prevSlide(-1)" id="left-arrow"><i class="fa fa-chevron-left" aria-hidden="true"></i>
</span>
  <span class="controls" id="right-arrow" onclick="nextSlide(1)"><i class="fa fa-chevron-right" aria-hidden="true"></i>
</span>
</div>
  <div id="dots-con" style="display: none;">
 <span class="dot"></span><span class="dot"></span><span class="dot"></span><span class="dot"></span>
 </div>
    <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

</nav>
  </div>
         <div class="bg" style="background-position: center;
    background-size: auto;
    background-color: #d1d1d1;
    background-blend-mode: multiply;">
        <div class="content">
          <div class="image">
              <img  style="right: 73%; height: 72%;
    position: absolute;"src="<%=m.getPoster_Link() %>" />
          </div>
          <div class="info">
            <div class="title">
              <a href="#">
                <h2><%=m.getSeries_Title() %></h2>
              </a>
                <span><br><%=m.getReleased_Year() %></span>
            </div>
            <div class="meta-actions">
              <div class="score">
                <div class="percentage-circle">
                  <div class="percentage-circle-stroke">
                    <div class="percent">
                      <span><%=m.getIMDB_Rating() %><sup></sup>
                      </span>
                    </div>
                  </div>
                </div>
                  <h1 style="font-size: 15px;color: #333333;">Avaliação
                  <br></h1>
              </div>
              <ul style="margin-left: 25%">
                <li class="add-to-list">
                    <a href= "#"><i class="fas fa-list" style="font-size: 20px; color: #333333;"></i></a>
                </li>
                <li class="favorite">
                  <a href= "#"><i class="fas fa-heart " style="font-size: 20px; color: #333333;"></i></a>
                </li>
                <li class="add-to-watchlist">
                  <a href= "#"><i class="fas fa-info" style="font-size: 20px; color:#333333"></i></a>    
                </li>
                <li class="add-to-watchlist">
                  <a href= "#"><i class="fas fa-star" style="font-size: 20px; color: #FF3A3A;"></i></a>    
                </li>
                <li class="play-trailer">
                    <span style="color: #333333;"><i style="font-size: 20px;" class="fas fa-download"></i></span>
                </li>
              </ul>
            </div>
            <div class="about">
              <div class="overview">
                <h3>Visão geral</h3>
                <p><%=m.getOverview() %></p>
              </div>
                
             <div class="movie-data" style="font-size: 18px;">
                 <div class="details" style="border-top: 1px solid rgba(255, 255, 255, 0.07);">
                     
                     <% ReleaseCertificadoDAO redao = new ReleaseCertificadoDAO();
                     String certi = new String();
                        for(ReleaseDate res : redao.read(id)){
                            System.out.println(res.getCertification());
                            if(res.getCertification().equals("")){
                                certi = "10";
                            }else{
                              certi = res.getCertification();  
                            }
                            
   }%>
                     <i class="hd" style="padding: 7px 6px 6px 6px;
    border-radius: 2px;
    font-size: 14px;
    font-weight: 700;
    text-align: center;
    margin-right: -1px;
    color: #fff;
    background-color: #298eea;
    /* font-style: italic;*/"><%=certi%></i>
                <span id="Rated" style="display: inline-block;
    margin: 0 5px;
    color: #333333;"><%=m.getRumtime() %> Min</span><span>
        <a href="/years/2019/" rel="tag" style="color: #333333;
    text-decoration: none;
    transition: 0.3s ease;
    opacity: 0.7;"><%=m.getGenre().replace(",", " | ") %></a>
    </span><span></span>
              </div>
            </div>
                
                
              <div class="featured-crew">
                
      </div>
                
      </div>
    </div>
  </div>
          
</div>
        <div class="comments-container">
		
                
                <!-- COMMENT BOX -->
                <% if(request.getSession().getAttribute("UserId")!=null){%>
                <h1>Add your review below<a href=""></a></h1>
                <div class="container" style="width: 100%; float: left;">
                    <form style="    width: 70%; float: left;">
      <div class="form-group">
          <textarea style="height: 120px;" class="form-control status-box" rows="3" placeholder="Enter your comment here..."></textarea>
      </div>
    </form>
                    <div class="button-group pull-right" style="    margin-right: 31%;">
                        <p class="counter" style="float: left; margin: 8px;">2500</p>
                        <a href="#" style="text-decoration: none;
    width: 70px;
    line-height: 32px;
    font-weight: bold;
    background: #FF3A3A;
    border-radius: 5px;
    font-size: 14px;
    text-align: center;
    padding: 8px;
    margin-right: 5px;
    -webkit-transition: background .3s;
    transition: background .3s;">Send</a>
    </div>
    <ul class="posts">
    </ul>
  </div>
                <!-- COMMENT BOX END -->
                <%}%>
		<ul id="comments-list" class="comments-list">
                    
                    <h1 style="border-left: none !important;margin-bottom: 17px; margin-left: 80px;">Reviews<a href=""></a></h1>
			<li>
				<div class="comment-main-level" style="width: 92%; float: left;">
					<!-- Avatar -->
					<div class="comment-avatar"><img src="https://i9.photobucket.com/albums/a88/creaticode/avatar_1_zps8e1c80cd.jpg" alt=""></div>
					<!-- Contenedor del Comentario -->
                                        <div class="comment-box" style="width: 67%;float: left;"> 
						<div class="comment-head">
							<h6 class="comment-name by-author"><a href="http://creaticode.com/blog">Agustin Ortiz</a></h6>
							<span>hace 20 minutos</span>
							<i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
						</div>
						<div class="comment-content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						 </div>
					</div>
				</div>
			</li>
			<li>
				<div class="comment-main-level" style="width: 67%;float: left;">
					<!-- Avatar -->
					<div class="comment-avatar"><img src="https://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
					<!-- Contenedor del Comentario -->
					<div class="comment-box" style="width: 67%;float: left;">
						<div class="comment-head">
							<h6 class="comment-name"><a href="http://creaticode.com/blog">Lorena Rojero</a></h6>
							<span>hace 10 minutos</span>
							<i class="fa fa-reply"></i>
							<i class="fa fa-heart"></i>
						</div>
						<div class="comment-content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						</div>
					</div>
				</div>
			</li>
                        <li>
				<div class="comment-main-level" style="width: 67%;float: left;">
					<!-- Avatar -->
					<div class="comment-avatar"><img src="https://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
					<!-- Contenedor del Comentario -->
					<div class="comment-box" style="width: 67%;float: left;">
						<div class="comment-head">
							<h6 class="comment-name"><a href="http://creaticode.com/blog">Lorena Rojero</a></h6>
							<span>hace 10 minutos</span>
							<i class="fa fa-reply"></i>
							<i class="fa fa-heart"></i>
						</div>
						<div class="comment-content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						</div>
					</div>
				</div>
			</li>
                        <li>
				<div class="comment-main-level" style="width: 67%;float: left;">
					<!-- Avatar -->
					<div class="comment-avatar"><img src="https://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
					<!-- Contenedor del Comentario -->
					<div class="comment-box" style="width: 67%;float: left;">
						<div class="comment-head">
							<h6 class="comment-name"><a href="http://creaticode.com/blog">Lorena Rojero</a></h6>
							<span>hace 10 minutos</span>
							<i class="fa fa-reply"></i>
							<i class="fa fa-heart"></i>
						</div>
						<div class="comment-content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						</div>
					</div>
				</div>
			</li>
                        <li>
				<div class="comment-main-level" style="width: 92%; float: left;">
					<!-- Avatar -->
					<div class="comment-avatar"><img src="https://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
					<!-- Contenedor del Comentario -->
					<div class="comment-box" style="width: 67%;float: left;">
						<div class="comment-head">
							<h6 class="comment-name"><a href="http://creaticode.com/blog">Lorena Rojero</a></h6>
							<span>hace 10 minutos</span>
							<i class="fa fa-reply"></i>
							<i class="fa fa-heart"></i>
						</div>
						<div class="comment-content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						</div>
					</div>
				</div>
			</li>
		</ul>
                <!-- Contenedor lado -->
<div class="lado">
    <nav class="menu-left menu-left-open" style="
          <% if(request.getSession().getAttribute("UserId")==null){%>
         margin-top: 10px;
         <%}%>
         right: 8%;
    opacity: 1;
    width: 22%;
    background: #fff;
    height: auto;">
    <h1>Elenco</h1>
  <ul id="aa" class="person-list">
      <% CastDAO castdao = new CastDAO();
       List<Cast> casts = new ArrayList<Cast>();
       int i = 0;
         for(Cast c : castdao.read(id)){
             i++;
             boolean existe = false;
             for(Cast b : casts){
                 if(c.getCredit_id().equals(b.getCredit_id())){existe = true;}
                 }
             if(!existe){
                     
                     %>
                    <li>
                            <a href="#" class="person-item" style="color:#333333;font-weight: bold; font-size: 1.3em;">
                            <img style="width: 60px;
    height: 60px;
    border-radius: 50%;
    background-position: center;
    margin-left: 4px;
    background-size: cover;
    background-repeat: no-repeat;
    background-image: url(<%=c.getProfile_path() %>);">
                            <span class="person-name"><%=c.getName() %></span>
                            <span class="person-nage">as <%=c.getCharacter() %></span>
                        </a>
                    </li>   
                     <%
             }
casts.add(c);
if(i>=20){
break;
}
          }%>
      
      
  </ul>
</nav>
  </div>
	</div>
</section>

<script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

  
      <script id="rendered-js" >
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i,
  x = document.getElementsByClassName("video-slide"),
  y = document.getElementsByTagName("video");

  if (n > x.length) {
    slideIndex = 1;
  }

  if (n < 1) {
    slideIndex = x.length;
  }

  for (i = 0; i < x.length; i++) {if (window.CP.shouldStopExecution(0)) break;
    x[i].style.display = "none";
    y[i].pause();
  }window.CP.exitedLoop(0);

  x[slideIndex - 1].style.display = "block";

}
//# sourceURL=pen.js
    </script>
    
    <script id="rendered-js" >
var slides = document.querySelectorAll(".slide");
var dots = document.querySelectorAll(".dot");
var index = 0;


function prevSlide(n) {
  index += n;
  console.log("prevSlide is called");
  changeSlide();
}

function nextSlide(n) {
  index += n;
  changeSlide();
}

changeSlide();

function changeSlide() {

  if (index > slides.length - 1)
  index = 0;

  if (index < 0)
  index = slides.length - 1;



  for (let i = 0; i < slides.length; i++) {if (window.CP.shouldStopExecution(0)) break;
    slides[i].style.display = "none";

    dots[i].classList.remove("active");


  }window.CP.exitedLoop(0);

  slides[index].style.display = "block";
  dots[index].classList.add("active");



}
//# sourceURL=pen.js
    </script>

    
    
</body>

</html>
 

