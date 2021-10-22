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
				window.onload = function() {
					alert(" Você não esta logado, faça o login Primeiro!");
					window.location.replace("http://localhost:8080/ASA/UI/login_cinefilo.jsp");
				};
			</script>
			<%
}
 String user = (String) request.getSession().getAttribute("UserId");
 request.getSession().setAttribute("loginError",null);
%>

				<head>

					<meta charset="UTF-8">

					<title>Usuario - Configuração</title>

					<link rel="shortcut icon" type="image/x-icon" href="../../resource/favicon-16x16.png">

					<link rel="stylesheet" href="Profile.css">
					<link rel="stylesheet" href="../../style.css">
                                        <script src="https://www.dukelearntoprogram.com/course1/common/js/image/SimpleImage.js">
</script>
				</head>

				<body translate="no" style="margin: 0px; ">

						<div class="window-margin">
							<div class="window">

								<aside class="sidebar">
									<div class="top-bar" style="text-align: center;">
										<a href="../Home">
											<img style="height: 45px; width: 45px;" src="../../resource/logosemfundo.png" alt="ASA">
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
	" />
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

									</div>
									<!-- top bar -->




								</div>
								<!-- main -->

							</div>
							<!-- window -->
						</div>
						<!-- window margin -->

						<div class="main-container">

							<!-- HEADER -->
							<header class="block">
								<ul class="header-menu horizontal-list">
									<li>
										<a class="header-menu-tab" href="http://localhost:8080/ASA/UI/Profile_Cinefilo.jsp"><span class="icon entypo-home scnd-font-color"></span>Home</a>
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
							<div class="left-container container" style="
    float: left;
    position: absolute;
    left: 4%;
    margin-left: 0;
">
								<!-- ESTATISTICAS CRITICAS (LEFT-CONTAINER) -->
								<div class="donut-chart-block block">
									<h2 class="titular" style="background: #333333;
    color: #fff;
    height: 57px;
    padding: 0px;">Configurações</h2>
									<ul class="menu-box-menu">
                                                                            <li >
											<a class="menu-box-tab" href="http://localhost:8080/ASA/UI/Profile/Profile_Cinefilo_Configuracao.jsp"><span class="icon fontawesome-envelope scnd-font-color"></span>Perfil</a>
										</li>
										<li style="background-color: white;">
											<a class="menu-box-tab" href="http://localhost:8080/ASA/UI/Profile/Profile_Img_Cfg.jsp"><span class="icon entypo-paper-plane scnd-font-color"></span>Imagem de exibição</a>
										</li>
										<li>
											<a class="menu-box-tab" href="#10"><span class="icon entypo-calendar scnd-font-color"></span>Alterar Senha</a>
										</li>
										<li>
											<a class="menu-box-tab" href="#12"><span class="icon entypo-cog scnd-font-color"></span>E-mail e Notificações</a>
										</li>
										<li>
											<a class="menu-box-tab" href="#13">
												<sapn class="icon entypo-chart-line scnd-font-color"></sapn>Excluir conta</a>
										</li>
									</ul>
								</div>




							</div>

							<!-- MIDDLE-CONTAINER -->
                                                        <div class="middle-container container" style="height: 950px;
    width: 67%;
    position: absolute;
    left: 30%;
    margin-left: 0;">
								<!-- Your Ratings(MIDDLE-CONTAINER) -->
                                                                <div class="profile block" style="background: #fff;">
									
                                                                    <div style="margin-left: 25px;"  >
                                                                            <h1>Upload and Display Image</h1>
                                                                           <canvas id= "canv1" ></canvas>
                                                                           <form action="http://localhost:8080/ASA/uploadAvatar_Cloud" enctype="multipart/form-data" method="post">
                                                                           <p>
                                                                           Filename:</p>
                                                                           <input type="file" multiple="false" accept="image/*" id=finput name="finput" onchange="upload()">
                                                                           
                                                                           </div>
                                                                    <input type='submit' id='do_login' value='Atualizar' title='Get Started' />
                                                                    
                                                                           </form>
    </div><!-- /.container -->

								</div>

							</div>


						</div>
						<!-- end main-container -->
                                                
                                        <script>
                                            $(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            first_name: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Please supply your first name'
                    }
                }
            },
             last_name: {
                validators: {
                     stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Please supply your last name'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'Please supply your email address'
                    },
                    emailAddress: {
                        message: 'Please supply a valid email address'
                    }
                }
            },
            phone: {
                validators: {
                    notEmpty: {
                        message: 'Please supply your phone number'
                    },
                    phone: {
                        country: 'US',
                        message: 'Please supply a vaild phone number with area code'
                    }
                }
            },
            address: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Please supply your street address'
                    }
                }
            },
            city: {
                validators: {
                     stringLength: {
                        min: 4,
                    },
                    notEmpty: {
                        message: 'Please supply your city'
                    }
                }
            },
            state: {
                validators: {
                    notEmpty: {
                        message: 'Please select your state'
                    }
                }
            },
            zip: {
                validators: {
                    notEmpty: {
                        message: 'Please supply your zip code'
                    },
                    zipCode: {
                        country: 'US',
                        message: 'Please supply a vaild zip code'
                    }
                }
            },
            comment: {
                validators: {
                      stringLength: {
                        min: 10,
                        max: 200,
                        message:'Please enter at least 10 characters and no more than 200'
                    },
                    notEmpty: {
                        message: 'Please supply a description of your project'
                    }
                    }
                }
            }
        })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#contact_form').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});

                                        </script>

                                        <script>
                                            function upload(){
  var imgcanvas = document.getElementById("canv1");
  var fileinput = document.getElementById("finput");
  var image = new SimpleImage(fileinput);
  image.drawTo(imgcanvas);
}
                                            </script>


				</body>

		</html>