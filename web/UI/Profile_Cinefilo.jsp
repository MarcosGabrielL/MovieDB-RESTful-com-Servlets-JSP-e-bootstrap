<%-- 
    Document   : Profile_Cinefilo
    Created on : 19/09/2021, 17:43:15
    Author     : Marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en" >
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
 request.getSession().setAttribute("loginError",null);
%>

<head>

  <meta charset="UTF-8">

  <title>Profile - User</title>
  
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
	    background: #e8e8e8;
	    /* height: 30px; */
	    /* width: 30px; */
	    border-radius: 10px;
	    display: block;
	    float: right;
	    margin-top: 10px;
	    width: 170px;
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
	    color: #1b1b1b;
	    float: right;
	    transition-duration: 0.3s;
	    cursor: pointer;
	    /* padding: 10px 20px; */
	    position: absolute;
	    margin-right: 10px;
	"></p>
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

			


		</div> <!-- main -->

	</div> <!-- window -->
</div> <!-- window margin -->

        <div class="main-container">

            <!-- HEADER -->
            <header class="block">
                <ul class="header-menu horizontal-list">
                    <li>
                        <a class="header-menu-tab" href="#1"><span class="icon entypo-cog scnd-font-color"></span>Settings</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#2"><span class="icon fontawesome-user scnd-font-color"></span>Account</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#3"><span class="icon fontawesome-envelope scnd-font-color"></span>Messages</a>
                        <a class="header-menu-number" href="#4">5</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#5"><span class="icon fontawesome-star-empty scnd-font-color"></span>Favorites</a>
                    </li>
                </ul>
                <div class="profile-menu">
                    <p>Me <a href="#26"><span class="entypo-down-open scnd-font-color"></span></a></p>
                    <div class="profile-picture small-profile-picture">
                        <img width="40px" alt="Anne Hathaway picture" src="https://upload.wikimedia.org/wikipedia/commons/e/e1/Anne_Hathaway_Face.jpg">
                    </div>
                </div>
            </header>

            <!-- LEFT-CONTAINER -->
            <div class="left-container container">
                <div class="menu-box block"> <!-- MENU BOX (LEFT-CONTAINER) -->
                    <h2 class="titular">MENU BOX</h2>
                    <ul class="menu-box-menu">
                        <li>
                            <a class="menu-box-tab" href="#6"><span class="icon fontawesome-envelope scnd-font-color"></span>Messages<div class="menu-box-number">24</div></a>                            
                        </li>
                        <li>
                            <a class="menu-box-tab" href="#8"><span class="icon entypo-paper-plane scnd-font-color"></span>Invites<div class="menu-box-number">3</div></a>                            
                        </li>
                        <li>
                            <a class="menu-box-tab" href="#10"><span class="icon entypo-calendar scnd-font-color"></span>Events<div class="menu-box-number">5</div></a>                            
                        </li>
                        <li>
                            <a class="menu-box-tab" href="#12"><span class="icon entypo-cog scnd-font-color"></span>Account Settings</a>
                        </li>
                        <li>
                            <a class="menu-box-tab" href="#13"><sapn class="icon entypo-chart-line scnd-font-color"></sapn>Statistics</a>
                        </li>                        
                    </ul>
                </div>
                <div class="donut-chart-block block"> <!-- DONUT CHART BLOCK (LEFT-CONTAINER) -->
                    <h2 class="titular">OS AUDIENCE STATS</h2>
                    <div class="donut-chart">
                        <!-- DONUT-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
                        <div id="porcion1" class="recorte"><div class="quesito ios" data-rel="21"></div></div>
                        <div id="porcion2" class="recorte"><div class="quesito mac" data-rel="39"></div></div>
                        <div id="porcion3" class="recorte"><div class="quesito win" data-rel="31"></div></div>
                        <div id="porcionFin" class="recorte"><div class="quesito linux" data-rel="9"></div></div>
                        <!-- END DONUT-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->    
                        <p class="center-date">JUNE<br><span class="scnd-font-color">2013</span></p> 
                    </div>
                    <ul class="os-percentages horizontal-list">
                        <li>
                            <p class="ios os scnd-font-color">iOS</p>
                            <p class="os-percentage">21<sup>%</sup></p>
                        </li>
                        <li>
                            <p class="mac os scnd-font-color">Mac</p>
                            <p class="os-percentage">48<sup>%</sup></p>
                        </li>
                        <li>
                            <p class="linux os scnd-font-color">Linux</p>
                            <p class="os-percentage">9<sup>%</sup></p>
                        </li>
                        <li>
                            <p class="win os scnd-font-color">Win</p>
                            <p class="os-percentage">32<sup>%</sup></p>
                        </li>
                    </ul>
                </div>
                <div class="line-chart-block block clear"> <!-- LINE CHART BLOCK (LEFT-CONTAINER) -->
                    <div class="line-chart">
                      <!-- LINE-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
                        <div class='grafico'>
                           <ul class='eje-y'>
                             <li data-ejeY='30'></li>
                             <li data-ejeY='20'></li>
                             <li data-ejeY='10'></li>
                             <li data-ejeY='0'></li>
                           </ul>
                           <ul class='eje-x'>
                             <li>Apr</li>
                             <li>May</li>
                             <li>Jun</li>
                           </ul>
                             <span data-valor='25'>
                               <span data-valor='8'>
                                 <span data-valor='13'>
                                   <span data-valor='5'>   
                                     <span data-valor='23'>   
                                     <span data-valor='12'>
                                         <span data-valor='15'>
                                         </span></span></span></span></span></span></span>
                        </div>
                        <!-- END LINE-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
                    </div>
                    <ul class="time-lenght horizontal-list">
                        <li><a class="time-lenght-btn" href="#14">Week</a></li>
                        <li><a class="time-lenght-btn" href="#15">Month</a></li>
                        <li><a class="time-lenght-btn" href="#16">Year</a></li>
                    </ul>
                    <ul class="month-data clear">
                        <li>
                            <p>APR<span class="scnd-font-color"> 2013</span></p>
                            <p><span class="entypo-plus increment"> </span>21<sup>%</sup></p>
                        </li>
                        <li>
                            <p>MAY<span class="scnd-font-color"> 2013</span></p>
                            <p><span class="entypo-plus increment"> </span>48<sup>%</sup></p>
                        </li>
                        <li>
                            <p>JUN<span class="scnd-font-color"> 2013</span></p>
                            <p><span class="entypo-plus increment"> </span>35<sup>%</sup></p>
                        </li>
                    </ul>
                </div>
                <div class="weather block clear" style="width: 100% !important;"> <!-- WEATHER (MIDDLE-CONTAINER) -->
                    <h2 class="titular"><span class="icon entypo-location"></span><strong>CLUJ-NAPOCA</strong>/RO</h2>
                    <div class="current-day">
                        <p class="current-day-date">FRI 29/06</p>
                        <p class="current-day-temperature">24º<span class="icon-cloudy"></span></p>
                    </div>
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
                
                <ul class="social horizontal-list block"> <!-- SOCIAL (LEFT-CONTAINER) -->
                    <li class="facebook"><p class="icon"><span class="zocial-facebook"></span></p><p class="number">248k</p></li>
                    <li class="twitter"><p class="icon"><span class="zocial-twitter"></span></p><p class="number">30k</p></li>
                    <li class="googleplus"><p class="icon"><span class="zocial-googleplus"></span></p><p class="number">124k</p></li>
                    <li class="mailbox"><p class="icon"><span class="fontawesome-envelope"></span></p><p class="number">89k</p></li>
                </ul>
                <div class="media block" style="visibility: hidden;"> <!-- MEDIA (LEFT-CONTAINER) -->
                    <div id="media-display">
                        <a class="media-btn play" href="#23"><span class="fontawesome-play"></span></a>
                    </div>
                    <div class="media-control-bar">
                        <a class="media-btn play" href="#23"><span class="fontawesome-play scnd-font-color"></span></a>
                        <p class="time-passed">4:15 <span class="time-duration scnd-font-color">/ 9:23</span></p>
                        <a class="media-btn volume" href="#24"><span class="fontawesome-volume-up scnd-font-color"></span></a>
                        <a class="media-btn resize" href="#25"><span class="fontawesome-resize-full scnd-font-color"></span></a>
                    </div>
                </div>
            </div>

            <!-- MIDDLE-CONTAINER -->
            <div class="middle-container container">
                <div class="profile block"> <!-- PROFILE (MIDDLE-CONTAINER) -->
                    <a class="add-button" href="#28"><span class="icon entypo-plus scnd-font-color"></span></a>
                    <div class="profile-picture big-profile-picture clear">
                        <img width="150px" alt="Anne Hathaway picture" src="https://upload.wikimedia.org/wikipedia/commons/e/e1/Anne_Hathaway_Face.jpg">
                    </div>
                    <h1 class="user-name">Anne Hathaway</h1>
                    <div class="profile-description">
                        <p class="scnd-font-color">Lorem ipsum dolor sit amet consectetuer adipiscing</p>
                    </div>
                    <ul class="profile-options horizontal-list">
                        <li><a class="comments" href="#40"><p><span class="icon fontawesome-comment-alt scnd-font-color"></span>23</li></p></a>
                        <li><a class="views" href="#41"><p><span class="icon fontawesome-eye-open scnd-font-color"></span>841</li></p></a>
                        <li><a class="likes" href="#42"><p><span class="icon fontawesome-heart-empty scnd-font-color"></span>49</li></p></a>
                    </ul>
                </div>
                <div class="weather block clear" style="visibility: hidden;"> <!-- WEATHER (MIDDLE-CONTAINER) -->
                    <h2 class="titular"><span class="icon entypo-location"></span><strong>CLUJ-NAPOCA</strong>/RO</h2>
                    <div class="current-day">
                        <p class="current-day-date">FRI 29/06</p>
                        <p class="current-day-temperature">24º<span class="icon-cloudy"></span></p>
                    </div>
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
                <div class="tweets block" style="visibility: hidden;"> <!-- TWEETS (MIDDLE-CONTAINER) -->
                    <h2 class="titular"><span class="icon zocial-twitter"></span>LATEST TWEETS</h2>
                    <div class="tweet first">
                        <p>Ice-cream trucks only play music when out of ice-cream. Well played dad. On <a class="tweet-link" href="#17">@Quora</a></p>
                        <p><a class="time-ago scnd-font-color" href="#18">3 minutes ago</a></p>
                    </div>
                    <div class="tweet">
                        <p>We are in the process of pushing out all of the new CC apps! We will tweet again once they are live <a class="tweet-link" href="#19">#CreativeCloud</a></p>
                        <p><a class="scnd-font-color" href="#20">6 hours ago</a></p>
                    </div>
                </div> 
                <ul class="social block" style="visibility: hidden;"> <!-- SOCIAL (MIDDLE-CONTAINER) -->
                    <li><a href="#50"><div class="facebook icon"><span class="zocial-facebook"></span></div><h2 class="facebook titular">SHARE TO FACEBOOK</h2></li></a>
                    <li><a href="#51"><div class="twitter icon"><span class="zocial-twitter"></span></div><h2 class="twitter titular">SHARE TO TWITTER</h2></li></a>
                    <li><a href="#52"><div class="googleplus icon"><span class="zocial-googleplus"></span></div><h2 class="googleplus titular">SHARE TO GOOGLE+</h2></li></a>
                </ul>
            </div>

            <!-- RIGHT-CONTAINER -->
            <div class="right-container container" style="visibility: hidden;">
                <div class="join-newsletter block" style="visibility: hidden;"> <!-- JOIN NEWSLETTER (RIGHT-CONTAINER) -->
                    <h2 class="titular">JOIN THE NEWSLETTER</h2>
                    <div class="input-container">
                        <input type="text" placeholder="yourname@gmail.com" class="email text-input">
                        <div class="input-icon envelope-icon-newsletter"><span class="fontawesome-envelope scnd-font-color"></span></div>
                    </div>
                    <a class="subscribe button" href="#21">SUBSCRIBE</a>
                </div>
                <div class="account block" style="visibility: hidden;"> <!-- ACCOUNT (RIGHT-CONTAINER) -->
                    <h2 class="titular">SIGN IN TO YOUR ACCOUNT</h2>
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
                <div class="loading block" style="visibility: hidden;"> <!-- LOADING (RIGHT-CONTAINER) -->
                    <div class="progress-bar downloading"></div>
                    <p><span class="icon fontawesome-cloud-download scnd-font-color"></span>Downloading...</p>
                    <p class="percentage">81<sup>%</sup></p>
                    <div class="progress-bar uploading"></div>
                    <p><span class="icon fontawesome-cloud-upload scnd-font-color"></span>Uploading...</p>
                    <p class="percentage">43<sup>%</sup></p>
                </div>
                <div class="calendar-day block" style="visibility: hidden;"> <!-- CALENDAR DAY (RIGHT-CONTAINER) -->
                    <div class="arrow-btn-container">
                        <a class="arrow-btn left" href="#200"><span class="icon fontawesome-angle-left"></span></a>
                        <h2 class="titular">WEDNESDAY</h2>
                        <a class="arrow-btn right" href="#201"><span class="icon fontawesome-angle-right"></span></a>
                    </div>
                        <p class="the-day">26</p>
                        <a class="add-event button" href="#27">ADD EVENT</a>
                </div>
                <div class="calendar-month block"style="visibility: hidden;"> <!-- CALENDAR MONTH (RIGHT-CONTAINER) -->
                    <div class="arrow-btn-container">
                        <a class="arrow-btn left" href="#202"><span class="icon fontawesome-angle-left"></span></a>
                        <h2 class="titular">APRIL 2013</h2>
                        <a class="arrow-btn right" href="#203"><span class="icon fontawesome-angle-right"></span></a>
                    </div>
                    <table class="calendar">
                        <thead class="days-week">
                            <tr>
                                <th>S</th>
                                <th>M</th>
                                <th>T</th>
                                <th>W</th>
                                <th>R</th>
                                <th>F</th>
                                <th>S</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a class="scnd-font-color" href="#100">1</a></td>
                            </tr>
                            <tr>
                                <td><a class="scnd-font-color" href="#101">2</a></td>
                                <td><a class="scnd-font-color" href="#102">3</a></td>
                                <td><a class="scnd-font-color" href="#103">4</a></td>
                                <td><a class="scnd-font-color" href="#104">5</a></td>
                                <td><a class="scnd-font-color" href="#105">6</a></td>
                                <td><a class="scnd-font-color" href="#106">7</a></td>
                                <td><a class="scnd-font-color" href="#107">8</a></td>
                            </tr>
                            <tr>
                                <td><a class="scnd-font-color" href="#108">9</a></td>
                                <td><a class="scnd-font-color" href="#109">10</a></td>
                                <td><a class="scnd-font-color" href="#110">11</a></td>
                                <td><a class="scnd-font-color" href="#111">12</a></td>
                                <td><a class="scnd-font-color" href="#112">13</a></td>
                                <td><a class="scnd-font-color" href="#113">14</a></td>
                                <td><a class="scnd-font-color" href="#114">15</a></td>
                            </tr>
                            <tr>
                                <td><a class="scnd-font-color" href="#115">16</a></td>
                                <td><a class="scnd-font-color" href="#116">17</a></td>
                                <td><a class="scnd-font-color" href="#117">18</a></td>
                                <td><a class="scnd-font-color" href="#118">19</a></td>
                                <td><a class="scnd-font-color" href="#119">20</a></td>
                                <td><a class="scnd-font-color" href="#120">21</a></td>
                                <td><a class="scnd-font-color" href="#121">22</a></td>
                            </tr>
                            <tr>
                                <td><a class="scnd-font-color" href="#122">23</a></td>
                                <td><a class="scnd-font-color" href="#123">24</a></td>
                                <td><a class="scnd-font-color" href="#124">25</a></td>
                                <td><a class="today" href="#125">26</a></td>
                                <td><a href="#126">27</a></td>
                                <td><a href="#127">28</a></td>
                                <td><a href="#128">29</a></td>
                            </tr>
                            <tr>
                                <td><a href="#129">30</a></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div> <!-- end calendar-month block --> 
            </div> <!-- end right-container -->
        </div> <!-- end main-container -->
    </body>
  
  
  
  

</body>

</html>
 

