<%-- 
    Document   : index
    Created on : 29/08/2021, 21:53:14
    Author     : Marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
      <% 
 if(request.getSession().getAttribute("Logout")!=null){
     %>
     <script>
    window.onload= function() {
       alert( "Saiu com sucesso!");
    };
 </script>
 <%
     request.getSession().setAttribute("Logout",null);
}
%>

<head>

  <meta charset="UTF-8">
  <title>ASA - Ágora da Sétima Arte</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  	<link rel="stylesheet" href="style.css">
<link rel="shortcut icon" type="image/x-icon" href="resource/favicon-16x16.png">

  <style>
    .onclick-menu {
    position: relative;
    display: inline-block;
}
.onclick-menu:focus {
    /* clicking on label should toggle the menu */
    pointer-events: none;
}
.onclick-menu:focus .onclick-menu-content {
    /*  opacity is 1 in opened state (see below) */
    opacity: 1;
    visibility: visible;

    /* don't let pointer-events affect descendant elements */
    pointer-events: auto;
}
.onclick-menu li{
    background: #333333;
    color: #fff;
}
.onclick-menu a{
    color: #fff;
}
.onclick-menu li:hover{
    background: #FF3A3A;
    transition: 0.8s;
    opacity: 0.8;
}
.onclick-menu-content {
    position: absolute;
    z-index: 1;

    /* use opacity to fake immediate toggle */
    opacity: 0;
    visibility: hidden;
    transition: visibility 0.5s;
}
  </style>
</head>

<body translate="no">
  <div class="window-margin">
	<div class="window">

		<aside href="/Home" class="sidebar">
			<div href="/Home" class="top-bar"style="text-align: center;">
				<a href="../Home" >
                        <img style="height: 45px; width: 45px;" src="resource/logosemfundo.png" alt="ASA" >
                        </a>
			</div>

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
	<input id="id_of_textbox" type="text" placeholder="Buscar Filme ..." style="
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
	    height: 10px;
	    border: 0;
	    padding: 10px 20px;
	    outline: none;
	    color: #999;
	    transition-duration: 0.3s;
	    margin-right: 10px;
	"/>
	<p id="busc" class="fa fa-search" style="
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
                                            <li><a onclick=" window.location.assign('http://localhost:8080/ASA/UI/Profile_Cinefilo.jsp')" style="
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

			<div class="window-margin">
	<div class="window">
		<div class="slider" style="background: #D1D1D1;
    margin-bottom: 6vw;">
<div class="slider-wrapper flex">
	<div class="slide flex">
		<div class="slide-image slider-link prev"><img src="https://img.elo7.com.br/product/original/2678F78/cartaz-poster-vingadores-4-ultimato-filme-marvel-avengers-colecionador.jpg"><div class="overlay"></div></div>
		<div class="slide-content">
			<div class="slide-date">Vingadores: Ultimato</div>
			<div class="slide-title">LOREM IPSUM DOLOR SITE MATE, AD EST ABHORREANT</div>
			<div class="slide-text">Lorem ipsum dolor sit amet, ad est abhorreant efficiantur, vero oporteat apeirian in vel. Et appareat electram appellantur est. Ei nec duis invenire. Cu mel ipsum laoreet, per rebum omittam ex. </div>
			<div class="slide-more">READ MORE</div>
		</div>	
	</div>
	<div class="slide flex">
		<div class="slide-image slider-link next"><img src="https://media.fstatic.com/oTEzZ557rQjZueDDptRaFvpn9Ts=/210x312/smart/media/movies/covers/2021/07/E7jF7W6X0AYucYc.jpg"><div class="overlay"></div></div>
		<div class="slide-content">
			<div class="slide-date">30.08.2017.</div>
			<div class="slide-title">LOREM IPSUM DOLOR SITE MATE, AD EST ABHORREANT</div>
			<div class="slide-text">Lorem ipsum dolor sit amet, ad est abhorreant efficiantur, vero oporteat apeirian in vel. Et appareat electram appellantur est. Ei nec duis invenire. Cu mel ipsum laoreet, per rebum omittam ex. </div>
			<div class="slide-more">READ MORE</div>
		</div>	
	</div>	
	<div class="slide flex">
		<div class="slide-image slider-link next"><img src="https://media.fstatic.com/D4i9cuFv1lJMy1WCOhY-Es0s9Hg=/210x312/smart/media/movies/covers/2019/09/kings_man_ver2.jpg"><div class="overlay"></div></div>
		<div class="slide-content">
			<div class="slide-date">30.09.2017.</div>
			<div class="slide-title">LOREM IPSUM DOLOR SITE MATE, AD EST ABHORREANT</div>
			<div class="slide-text">Lorem ipsum dolor sit amet, ad est abhorreant efficiantur, vero oporteat apeirian in vel. Et appareat electram appellantur est. Ei nec duis invenire. Cu mel ipsum laoreet, per rebum omittam ex. </div>
			<div class="slide-more">READ MORE</div>
		</div>	
	</div>
		<div class="slide flex">
		<div class="slide-image slider-link next"><img src="https://media.fstatic.com/DJsRj7JWce_W-iMmbqG1y5tE5_4=/210x312/smart/media/movies/covers/2020/07/honest_thief.jpg"><div class="overlay"></div></div>
		<div class="slide-content">
			<div class="slide-date">30.10.2017.</div>
			<div class="slide-title">LOREM IPSUM DOLOR SITE MATE, AD EST ABHORREANT</div>
			<div class="slide-text">Lorem ipsum dolor sit amet, ad est abhorreant efficiantur, vero oporteat apeirian in vel. Et appareat electram appellantur est. Ei nec duis invenire. Cu mel ipsum laoreet, per rebum omittam ex. </div>
			<div class="slide-more">READ MORE</div>
		</div>	
	</div>
</div>
<div class="arrows">
<a href="#" title="Previous" class="arrow slider-link prev"></a>
<a href="#" title="Next" class="arrow slider-link next"></a>
</div>
</div>
			</div>
		</div>

			<div class="movie-list">
				<div class="title-bar">
					<div class="left">
						<p class="bold">Filmes</p>
						<p class="grey">Todos</p>
					</div> <!-- left -->
					<div class="right">
						<a class="blue" href="#">Avaliação<i class="fa fa-angle-down" style="margin-left: 5px;"></i></a>
						<a href="#">Mais Recentes</a>
						<a href="#">Mais Antigos</a>
					</div> <!-- right -->
				</div> <!-- title-bar -->

				<ul class="list">
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140412_oavbye_1.png" alt="" class="cover" />
						<span class="movie__vote">8.9</span>
						<p class="title">Sin City: A Dame To Kill For</p>
						<p class="genre">Action, Crime</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140329_aawn02_1.png" alt="" class="cover" />
						<span class="movie__vote">5.1</span>
						<p class="title">Transcendence</p>
						<p class="genre">Action, Drama</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140239_kyg9i7_1.png" alt="" class="cover" />
						<span class="movie__vote">2.5</span>
						<p class="title">Need For Speed</p>
						<p class="genre">Action, Crime</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140052_dq4dyx_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">The Amazing Spiderman</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140104_tdgzka_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Pompeii</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140248_fmufrz_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Divergent</p>
						<p class="genre">Action, Sci-Fi</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140401_aewzsy_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Guardians of the Galaxy</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140339_wck2gw_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">X-Men: Days of Fury</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140311_rj1det_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Captain America: The Winter Soilder</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140248_fmufrz_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Divergent</p>
						<p class="genre">Action, Sci-Fi</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140132_bcnfqk_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">RoboCop (2014)</p>
						<p class="genre">Action, Crime</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140329_aawn02_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Transcendence</p>
						<p class="genre">Action, Drama</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140239_kyg9i7_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Need For Speed</p>
						<p class="genre">Action, Crime</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140104_tdgzka_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Pompeii</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140412_oavbye_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Sin City: A Dame To Kill For</p>
						<p class="genre">Action, Crime</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140339_wck2gw_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">X-Men: Days of Fury</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140052_dq4dyx_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">The Amazing Spiderman</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140248_fmufrz_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Divergent</p>
						<p class="genre">Action, Sci-Fi</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140248_fmufrz_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Divergent</p>
						<p class="genre">Action, Sci-Fi</p>
					</li>
					<li>
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/22043/2014-03-08_140248_fmufrz_1.png" alt="" class="cover" />
						<span class="movie__vote">8</span>
						<p class="title">Divergent</p>
						<p class="genre">Action, Sci-Fi</p>
					</li>
				</ul>

				<a href="#" class="load-more">Proxima pagina <span class="fa fa-chevron-right"></span></a>

			</div> <!-- movie list -->


		</div> <!-- main -->

	</div> <!-- window -->
</div> <!-- window margin -->
  

  <!-- Site footer -->
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">Scanfcode.com <i>CODE WANTS TO BE SIMPLE </i> is an initiative  to help the upcoming programmers with the code. Scanfcode focuses on providing the most efficient code or snippets as the code wants to be simple. We will help programmers build up concepts in different programming languages that include C, C++, Java, HTML, CSS, Bootstrap, JavaScript, PHP, Android, SQL and Algorithm.</p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Categories</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/category/c-language/">C</a></li>
              <li><a href="http://scanfcode.com/category/front-end-development/">UI Design</a></li>
              <li><a href="http://scanfcode.com/category/back-end-development/">PHP</a></li>
              <li><a href="http://scanfcode.com/category/java-programming-language/">Java</a></li>
              <li><a href="http://scanfcode.com/category/android/">Android</a></li>
              <li><a href="http://scanfcode.com/category/templates/">Templates</a></li>
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/about/">About Us</a></li>
              <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
              <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
              <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
              <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2017 All Rights Reserved by 
         <a href="#">Scanfcode</a>.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>

<!-- ----------------- SCRIPTS ---------------------- -->


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  
  <script>
  jQuery(document).ready(function($) {

	$('a').on('click', function(e) {
		e.preventDefault();
	});

	$('.trigger-sidebar-toggle').on('click', function() {
		$('body').toggleClass('sidebar-is-open');
	});

}); </script>

<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.1/TweenMax.min.js'></script>

      <script id="rendered-js" >
(function ($) {

  $(document).ready(function () {

    var s = $('.slider'),
    sWrapper = s.find('.slider-wrapper'),
    sItem = s.find('.slide'),
    btn = s.find('.slider-link'),
    sWidth = sItem.width(),
    sCount = sItem.length,
    slide_date = s.find('.slide-date'),
    slide_title = s.find('.slide-title'),
    slide_text = s.find('.slide-text'),
    slide_more = s.find('.slide-more'),
    slide_image = s.find('.slide-image img'),
    sTotalWidth = sCount * sWidth;

    sWrapper.css('width', sTotalWidth);
    sWrapper.css('width', sTotalWidth);

    var clickCount = 0;

    btn.on('click', function (e) {
      e.preventDefault();

      if ($(this).hasClass('next')) {

        clickCount < sCount - 1 ? clickCount++ : clickCount = 0;
      } else if ($(this).hasClass('prev')) {

        clickCount > 0 ? clickCount-- : clickCount = sCount - 1;
      }
      TweenMax.to(sWrapper, 0.4, { x: '-' + sWidth * clickCount });


      //CONTENT ANIMATIONS

      var fromProperties = { autoAlpha: 0, x: '-50', y: '-10' };
      var toProperties = { autoAlpha: 0.8, x: '0', y: '0' };

      TweenLite.fromTo(slide_image, 1, { autoAlpha: 0, y: '40' }, { autoAlpha: 1, y: '0' });
      TweenLite.fromTo(slide_date, 0.4, fromProperties, toProperties);
      TweenLite.fromTo(slide_title, 0.6, fromProperties, toProperties);
      TweenLite.fromTo(slide_text, 0.8, fromProperties, toProperties);
      TweenLite.fromTo(slide_more, 1, fromProperties, toProperties);

    });

  });
})(jQuery);

$('.overlay').addClass('overlay-blue');
//# sourceURL=pen.js
    </script>
    
    <script type="text/javascript">
    function theFunction () {
        window.location.replace("http://localhost:8080/ASA/controller/Signoutcontroller.jsp");
    }
</script>

<script>
    document.getElementById("id_of_textbox")
    .addEventListener("keyup", function(event) {
    event.preventDefault();
    if (event.keyCode === 13) {
       buttonCode();
    }
});
document.getElementById("busc")
    .addEventListener("click", function(event) {
    event.preventDefault();
    
        buttonCode();
    
});
function buttonCode(){
    var a = document.getElementById("id_of_textbox").value;
  window.location.replace("http://localhost:8080/ASA/UI/busca_de_filme.jsp?descb="+a);
}
    </script>

     <script id="rendered-js" >
const API_KEY = "249f222afb1002186f4d88b2b5418b55";

const API_SEARCH = `https://api.themoviedb.org/3/search/movie?api_key=${API_KEY}&language=en-US&query=`;

const IMAGE_PATH = "https://image.tmdb.org/t/p/w500";

//let page = "501";
let page = "1";

const API_URL = `https://api.themoviedb.org/3/discover/movie?api_key=${API_KEY}&language=en-US&sort_by=popularity.desc&include_video=true&page=`;

const mainContent = document.getElementById("movie-content");
// search form elements
const form = document.getElementById("search-form");
const search = document.getElementById("search");
// pagination elements
const pageLinks = document.querySelectorAll(".page-link");
console.log(pageLinks);

// initially get the most popular movies list's first page
getMovies(API_URL + page);

// previous and next page
pageLinks.forEach(pageLink => {
  pageLink.addEventListener("click", () => {
    if (pageLink.id === "next") {
      page++;
      getMovies(API_URL + page);
    }
    if (pageLink.id === "previous" && page > 1) {
      page--;
      getMovies(API_URL + page);
    }
  });
});

// search for a movie
form.addEventListener("submit", e => {
  e.preventDefault();
  console.log(search.value);
  const query = search.value;
  if (query) {
    getMovies(API_SEARCH + query);
  }
});

async function getMovies(url) {
  const resp = await fetch(url);
  const respData = await resp.json();
  console.log(respData);
  console.log(respData.total_pages);
  showMovies(respData.results);
}

function showMovies(movies) {
  mainContent.innerHTML = "";
  movies.forEach(movie => {
    const movieTitle = movie.title;
    const moviePoster = movie.poster_path;
    const movieVote = movie.vote_average;
    const movieDesc = movie.overview;
    const movieData = movie.release_date;
    const movietempo = movie.runtime;
    const movieid = movie.id;
    
    busca_detalhe(movieid);
    
    const movieElm = document.createElement("div");
    movieElm.classList.add(
    "col-xs-12",
    "col-sm-6",
    "col-md-4",
    "col-lg-3",
    "p-0");


    movieElm.innerHTML = `
    <div class="movie-card">
              <img
                class="img-fluid movie-img"
                src="${IMAGE_PATH}${moviePoster}"
                onError="this.onerror=null;this.src='https://i.ebayimg.com/images/g/1EMAAMXQdGJR2-n3/s-l1600.jpg';"
                alt="Sorry, something went wrong"
              />
              <div
                class="movie-description p-3 d-flex justify-content-between align-items-center"
              >
                <h3 class="movie-title">${movieTitle}</h3>
                <h3 class="movie-vote">${movieVote}</h3>
              </div>
            </div>
    `;
    mainContent.appendChild(movieElm);
    //$.ajax({
   //method: "POST",
   //url: "http://localhost:8080/ASA/addMovie_DB",
   //data: {src: IMAGE_PATH + moviePoster,
      //    title: movieTitle,
     //     rate: movieVote,
     //     overview: movieDesc,
     //     data: movieData,
     //     tempo: movietempo
       // }
        //  });
  });
  
    }

function busca_detalhe(id){
      var api_key = "249f222afb1002186f4d88b2b5418b55";
      
   var requestURL = "https://api.themoviedb.org/3/movie/" + id + "?api_key=" + api_key + "&append_to_response=release_dates,credits";

    var request = new XMLHttpRequest();

    request.open('GET', requestURL);

    request.responseType = 'json';

    request.send();

    request.onload = function(){
        var myjsondata = request.response; //request.response contains all our JSON data 

     //alert(JSON.stringify(myjsondata.credits));
        //console.log(JSON.stringify(myjsondata));
        
       $.ajax({
   method: "POST",
   url: "http://localhost:8080/ASA/addMovie_DB_Details",
   data: {  movieTitle : myjsondata.title,
            moviePoster : myjsondata.poster_path,
            movieVote : myjsondata.vote_average,
            movieDesc : myjsondata.overview,
            movieData : myjsondata.release_date,
            movietempo : myjsondata.runtime,
            movieid : myjsondata.id,
            moviegenres : JSON.stringify(myjsondata.genres),
            movieid : id,
            movierelease : JSON.stringify(myjsondata.release_dates),
            moviecrew : JSON.stringify(myjsondata.credits)
        }
          });
    } 
}


//# sourceURL=pen.js
    </script>
    
    
    
</body>

</html>
