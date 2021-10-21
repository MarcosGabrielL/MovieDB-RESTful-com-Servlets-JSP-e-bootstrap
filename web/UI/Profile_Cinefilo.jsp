<%-- 
    Document   : Profile_Cinefilo
    Created on : 19/09/2021, 17:43:15
    Author     : Marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en" style="background: #fff;">
    <% 
 if(request.getSession().getAttribute("UserId")==null){
     %>
     <script>
    window.onload= function() {
       alert( " Você não esta logado, faça o login Primeiro!");
       window.location.replace("login_cinefilo.jsp");
    };
 </script>
 <%
}
 String user = (String) request.getSession().getAttribute("UserId");
 request.getSession().setAttribute("loginError",null);
%>

<head>

  <meta charset="UTF-8">

  <title>Profile - <%=user %></title>
  
  <link rel="shortcut icon" type="image/x-icon" href="../resource/favicon-16x16.png">
  
  <link rel="stylesheet" href="Profile.css">
  <link rel="stylesheet" href="../style.css">

</head>

<body translate="no"style="margin: 0px; ">
    
    
  <body>
       <div class="window-margin">
	<div class="window">

		<aside class="sidebar">
                    <div class="top-bar" style="text-align: center;">
				<a href="../Home" >
                        <img style="height: 45px; width: 45px;" src="../resource/logosemfundo.png" alt="ASA" >
                        </a>
			</div>

			<menu class="menu">
				<p class="menu-name"><b>Categorias</b></p>
				<ul>
					<li class="active"><a href="#">Todas</a></li>
					<li><a href="#">Ação</a></li>
					<li><a href="#">Aventura</a></li>
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
	    background: black;
	    /* height: 30px; */
	    /* width: 30px; */
	    border-radius: 10px;
	    display: block;
	    float: right;
	    margin-top: 10px;
	    width: 250px;
	    height: 30px;
            margin-bottom: 0px !important;
	    border: 0;
	    padding: 10px 20px;
	    outline: none;
	    color: #333333 !important;
	    transition-duration: 0.3s;
	    margin-right: 10px;
	"/>
	<p class="fa fa-search" style="
	    /* position: absolute; */
	    top: 4px;
	    right: 10px;
	    color: #fff;
	    float: right;
	    transition-duration: 0.3s;
	    cursor: pointer;
	    /* padding: 10px 20px; */
	    position: absolute;
	    margin-right: 10px;
	"></p>


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

        <div class="main-container" >

            <!-- HEADER -->
            <header class="block">
                <ul class="header-menu horizontal-list">
                    <li>
                        <a class="header-menu-tab" href="http://localhost:8080/ASA/UI/Profile/Profile_Cinefilo_Configuracao.jsp"><span class="icon entypo-cog scnd-font-color"></span>Configurações</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#2"><span class="icon fontawesome-user scnd-font-color"></span>Amigos</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#3"><span class="icon fontawesome-envelope scnd-font-color"></span>Mensagens</a>
                        <a class="header-menu-number" href="#4">5</a>
                    </li>
                     <li>
                        <a class="header-menu-tab" href="#3"><span class="icon entypo-paper-plane scnd-font-color"></span>Convites</a>
                        <a class="header-menu-number" href="#4">5</a>
                    </li>
                     <li>
                        <a class="header-menu-tab" href="#3"><span class="icon entypo-calendar scnd-font-color"></span>Eventos</a>
                        <a class="header-menu-number" href="#4">5</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#5"><span class="icon entypo-list scnd-font-color"></span>Listas</a>
                    </li>
                    
                    <li>
                        <a class="header-menu-tab" href="#5"><span class="icon fontawesome-star-empty scnd-font-color"></span>Favoritos</a>
                    </li>
                </ul>
                <div class="profile-menu">
                    <p>Eu <a href="#26"><span class="entypo-down-open scnd-font-color"></span></a></p>
                    <div class="profile-picture small-profile-picture">
                        <img width="40px" alt="Anne Hathaway picture" src="https://upload.wikimedia.org/wikipedia/commons/e/e1/Anne_Hathaway_Face.jpg">
                    </div>
                </div>
            </header>

            <!-- LEFT-CONTAINER -->
            <div class="left-container container">
                <!-- ESTATISTICAS CRITICAS (LEFT-CONTAINER) -->
                <div class="donut-chart-block block"> 
                    <h2 class="titular" style="background: #333333;
    color: #fff;
    height: 57px;
    padding: 0px;
    margin-bottom: 9px;">Estatisticas de Suas Crititicas</h2>
                    <div class="donut-chart">
                        <!-- DONUT-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
                        <div id="porcion1" class="recorte"><div class="quesito ios" data-rel="21"></div></div>
                        <div id="porcion2" class="recorte"><div class="quesito mac" data-rel="39"></div></div>
                        <div id="porcion3" class="recorte"><div class="quesito win" data-rel="31"></div></div>
                        <div id="porcionFin" class="recorte"><div class="quesito linux" data-rel="9"></div></div>
                        <!-- END DONUT-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->    
                        <p class="center-date">Junho<br><span class="scnd-font-color">2021</span></p> 
                    </div>
                    <ul class="os-percentages horizontal-list">
                        <li>
                            <p class="ios os scnd-font-color">&#9733;</p>
                            <p class="os-percentage">21<sup>%</sup></p>
                        </li>
                        <li>
                            <p class="mac os scnd-font-color">&#9733;&#9733;</p>
                            <p class="os-percentage">48<sup>%</sup></p>
                        </li>
                        <li>
                            <p class="linux os scnd-font-color">&#9733;&#9733;&#9733;</p>
                            <p class="os-percentage">9<sup>%</sup></p>
                        </li>
                        <li>
                            <p class="win os scnd-font-color">&#9733;&#9733;&#9733;&#9733;</p>
                            <p class="os-percentage">32<sup>%</sup></p>
                        </li>
                    </ul>
                </div>
                
                <div class="menu-box block"> <!-- MENU BOX (LEFT-CONTAINER) -->
                    <h2 class="titular">Estatisticas</h2>
                    
                </div>
                
                <!-- ACCOUNT (RIGHT-CONTAINER) -->
                <div class="account block" > 
                    <h2 class="titular" style="background: #333333;
    color: #fff;
    height: 57px;
    padding: 0px;
    margin-bottom: 9px;">Amigos</h2>
                    <div class="input-container">
                        <input type="text" placeholder="yourname@gmail.com" class="email text-input">
                        <div class="input-icon envelope-icon-acount"><span class="fontawesome-envelope scnd-font-color"></span></div>
                    </div>
                    <div class="input-container">
                        <input type="text" placeholder="Password" class="password text-input">
                        <div class="input-icon password-icon"><span class="fontawesome-lock scnd-font-color"></span></div>
                    </div>
                    <a class="sign-in button" href="#22">SIGN IN</a>
                    <p class="scnd-font-color">Forgot Password?</p>
                    <a class="fb-sign-in" href="58">
                        <p><span class="fb-border"><span class="icon zocial-facebook"></span></span>Sign in with Facebook</p>
                    </a>
                </div>
                
                <!-- WEATHER (MIDDLE-CONTAINER) -->
                <div class="weather block clear" style="width: 100% !important;"> 
                    <h2 class="titular" style="background: #333333;
    color: #fff;
    height: 57px;
    padding: 0px;
    margin-bottom: 9px;"><span class="icon entypo-list" style="color: #fff;"></span><strong>Suas Listas</strong></h2>
                    <ul class="next-days">
                        <li>
                            <a href="#43">
                                <p class="next-days-date"><span class="day">SAT</span> <span class="scnd-font-color">29/06</span></p>
                                <p class="next-days-temperature">25º<span class="icon icon-cloudy scnd-font-color"></span></p>
                            </a>
                        </li>
                        <li>
                            <a href="#44">
                                <p class="next-days-date"><span class="day">SUN</span> <span class="scnd-font-color">30/06</span></p>
                                <p class="next-days-temperature">22º<span class="icon icon-cloudy2 scnd-font-color"></span></p>
                            </a>
                        </li>
                        <li>
                            <a href="#45">
                                <p class="next-days-date"><span class="day">MON</span> <span class="scnd-font-color">01/07</span></p>
                                <p class="next-days-temperature">24º<span class="icon icon-cloudy2 scnd-font-color"></span></p>
                            </a>
                        </li>
                        <li>
                            <a href="#46">
                                <p class="next-days-date"><span class="day">TUE</span> <span class="scnd-font-color">02/07</span></p>
                                <p class="next-days-temperature">26º<span class="icon icon-cloudy scnd-font-color"></span></p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <p class="next-days-date"><span class="day">WED</span> <span class="scnd-font-color">03/07</span></p>
                                <p class="next-days-temperature">27º<span class="icon icon-sun scnd-font-color"></span></p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <p class="next-days-date"><span class="day">THU</span> <span class="scnd-font-color">04/07</span></p>
                                <p class="next-days-temperature">29º<span class="icon icon-sun scnd-font-color"></span></p>
                            </a>
                        </li>
                    </ul>
                </div>
                
                
            </div>

            <!-- MIDDLE-CONTAINER -->
            <div class="middle-container container">
                <!-- Your Ratings(MIDDLE-CONTAINER) -->
                <div class="profile block"> 
                    <h2 class="titular" style="background: #333333;
    color: #fff;
    height: 57px;
    padding: 0px;
    margin-bottom: 9px;"><span class="icon iconicfill-right-quote" style="color: #fff;"></span>Assisti recentemente</h2>
                    <a class="add-button" href="#28"><span class="icon entypo-plus scnd-font-color"></span></a>
                    
                    
                </div>
                
                 <!-- TWEETS (MIDDLE-CONTAINER) -->
                <div class="tweets block" >
                    <h2 class="titular" style="background: #333333;
    color: #fff;
    height: 57px;
    padding: 0px;
    margin-bottom: 9px;"><span class="icon entypo-book-open"style="color: #fff;"></span>Noticías</h2>
                    <div class="tweet first">
                        <p>Ice-cream trucks only play music when out of ice-cream. Well played dad. On <a class="tweet-link" href="#17">@Quora</a></p>
                        <p><a class="time-ago scnd-font-color" href="#18">3 minutes ago</a></p>
                    </div>
                    <div class="tweet">
                        <p>We are in the process of pushing out all of the new CC apps! We will tweet again once they are live <a class="tweet-link" href="#19">#CreativeCloud</a></p>
                        <p><a class="scnd-font-color" href="#20">6 hours ago</a></p>
                    </div>
                </div> 
            </div>

           
        </div> <!-- end main-container -->
    </body>
  
  
  
  

</body>

</html>
 

