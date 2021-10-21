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

					<title>Usuario - Configuração</title>

					<link rel="shortcut icon" type="image/x-icon" href="../../resource/favicon-16x16.png">

					<link rel="stylesheet" href="Profile.css">
					<link rel="stylesheet" href="../../style.css">
                                        <style>
                                            @import 'https://fonts.googleapis.com/css?family=Open+Sans|Quicksand:400,700';



/*--------------------
Icons
---------------------*/
.i {
  width: 20px;
  height: 20px;
}

.i-login {
  margin: 13px 0px 0px 15px;
  position: relative;
  float: left;
  background-image: url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCIgdmlld0JveD0iMCAwIDQxNi4yMjkgNDE2LjIyOSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDE2LjIyOSA0MTYuMjI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTQwMy43MjksMjkuNjVINzEuODAyYy02LjkwMywwLTEyLjUsNS41OTctMTIuNSwxMi41djg2LjM2M2MwLDYuOTAzLDUuNTk3LDEyLjUsMTIuNSwxMi41czEyLjUtNS41OTcsMTIuNS0xMi41VjU0LjY1ICAgIGgzMDYuOTI3djMwNi45MjhIODQuMzAydi03My44NjFjMC02LjkwMy01LjU5Ny0xMi41LTEyLjUtMTIuNXMtMTIuNSw1LjU5Ny0xMi41LDEyLjV2ODYuMzYxYzAsNi45MDMsNS41OTcsMTIuNSwxMi41LDEyLjUgICAgaDMzMS45MjdjNi45MDIsMCwxMi41LTUuNTk3LDEyLjUtMTIuNVY0Mi4xNUM0MTYuMjI5LDM1LjI0Nyw0MTAuNjMxLDI5LjY1LDQwMy43MjksMjkuNjV6IiBmaWxsPSIjODczMTRlIi8+CgkJPHBhdGggZD0iTTE4NS40MTcsMjg3LjgxMWMwLDUuMDU3LDMuMDQ1LDkuNjEzLDcuNzE2LDExLjU1YzEuNTQ3LDAuNjQyLDMuMTcsMC45NSw0Ljc4MSwwLjk1YzMuMjUzLDAsNi40NTEtMS4yNyw4Ljg0Mi0zLjY2ICAgIGw3OS42OTctNzkuNjk3YzIuMzQ0LTIuMzQ0LDMuNjYtNS41MjMsMy42Ni04LjgzOWMwLTMuMzE2LTEuMzE2LTYuNDk1LTMuNjYtOC44MzlsLTc5LjY5Ny03OS42OTcgICAgYy0zLjU3NS0zLjU3NS04Ljk1MS00LjY0Ni0xMy42MjMtMi43MWMtNC42NzEsMS45MzYtNy43MTYsNi40OTMtNy43MTYsMTEuNTQ5djY3LjE5N0gxMi41Yy02LjkwMywwLTEyLjUsNS41OTctMTIuNSwxMi41ICAgIGMwLDYuOTAzLDUuNTk3LDEyLjUsMTIuNSwxMi41aDE3Mi45MTdWMjg3LjgxMUwxODUuNDE3LDI4Ny44MTF6IE0yMTAuNDE3LDE1OC41OTRsNDkuNTIxLDQ5LjUybC00OS41MjEsNDkuNTIxVjE1OC41OTR6IiBmaWxsPSIjODczMTRlIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==);
  background-size: 18px 18px;
  background-repeat: no-repeat;
  background-position: center;
}

.i-more {
  background-image: url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCIgdmlld0JveD0iMCAwIDYxMiA2MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDYxMiA2MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGc+Cgk8ZyBpZD0ibW9yZSI+CgkJPGc+CgkJCTxwYXRoIGQ9Ik03Ni41LDIyOS41QzM0LjMsMjI5LjUsMCwyNjMuOCwwLDMwNnMzNC4zLDc2LjUsNzYuNSw3Ni41UzE1MywzNDguMiwxNTMsMzA2UzExOC43LDIyOS41LDc2LjUsMjI5LjV6IE03Ni41LDM0NC4yICAgICBjLTIxLjEsMC0zOC4yLTE3LjEwMS0zOC4yLTM4LjJjMC0yMS4xLDE3LjEtMzguMiwzOC4yLTM4LjJzMzguMiwxNy4xLDM4LjIsMzguMkMxMTQuNywzMjcuMSw5Ny42LDM0NC4yLDc2LjUsMzQ0LjJ6ICAgICAgTTUzNS41LDIyOS41Yy00Mi4yLDAtNzYuNSwzNC4zLTc2LjUsNzYuNXMzNC4zLDc2LjUsNzYuNSw3Ni41UzYxMiwzNDguMiw2MTIsMzA2UzU3Ny43LDIyOS41LDUzNS41LDIyOS41eiBNNTM1LjUsMzQ0LjIgICAgIGMtMjEuMSwwLTM4LjItMTcuMTAxLTM4LjItMzguMmMwLTIxLjEsMTcuMTAxLTM4LjIsMzguMi0zOC4yczM4LjIsMTcuMSwzOC4yLDM4LjJDNTczLjcsMzI3LjEsNTU2LjYsMzQ0LjIsNTM1LjUsMzQ0LjJ6ICAgICAgTTMwNiwyMjkuNWMtNDIuMiwwLTc2LjUsMzQuMy03Ni41LDc2LjVzMzQuMyw3Ni41LDc2LjUsNzYuNXM3Ni41LTM0LjMsNzYuNS03Ni41UzM0OC4yLDIyOS41LDMwNiwyMjkuNXogTTMwNiwzNDQuMiAgICAgYy0yMS4xLDAtMzguMi0xNy4xMDEtMzguMi0zOC4yYzAtMjEuMSwxNy4xLTM4LjIsMzguMi0zOC4yYzIxLjEsMCwzOC4yLDE3LjEsMzguMiwzOC4yQzM0NC4yLDMyNy4xLDMyNy4xLDM0NC4yLDMwNiwzNDQuMnoiIGZpbGw9IiNkZjQwNWEiLz4KCQk8L2c+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==);
  background-size: 20px 20px;
  background-repeat: no-repeat;
  background-position: center;
}

.i-save {
  background-image: url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCIgdmlld0JveD0iMCAwIDYxMiA2MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDYxMiA2MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGc+Cgk8ZyBpZD0idGljayI+CgkJPGc+CgkJCTxwYXRoIGQ9Ik00MzYuNywxOTYuNzAxTDI1OC4xODgsMzc1LjIxM2wtODIuODY5LTgyLjg4N2MtNy4yODctNy4yODctMTkuMTI1LTcuMjg3LTI2LjQxMiwwcy03LjI4NywxOS4xMjUsMCwyNi40MTIgICAgIGw5My44MDgsOTMuODA4YzAuNjMxLDAuODk5LDEuMDE0LDEuOTMyLDEuODE3LDIuNzM1YzMuNzY4LDMuNzY4LDguNzIxLDUuNTA4LDEzLjY1NSw1LjM3NGM0LjkzNCwwLjExNSw5LjkwNy0xLjYwNiwxMy42NzQtNS4zNzQgICAgIGMwLjgwMy0wLjgwNCwxLjE4Ni0xLjgzNiwxLjgxNy0yLjczNWwxODkuNDM0LTE4OS40MzNjNy4yODYtNy4yODcsNy4yODYtMTkuMTI1LDAtMjYuNDEyICAgICBDNDU1LjgwNiwxODkuNDE0LDQ0My45ODcsMTg5LjQxNCw0MzYuNywxOTYuNzAxeiBNMzA2LDBDMTM2Ljk5MiwwLDAsMTM2Ljk5MiwwLDMwNnMxMzYuOTkyLDMwNiwzMDYsMzA2ICAgICBjMTY4Ljk4OCwwLDMwNi0xMzYuOTkyLDMwNi0zMDZTNDc1LjAwOCwwLDMwNiwweiBNMzA2LDU3My43NUMxNTguMTI1LDU3My43NSwzOC4yNSw0NTMuODc1LDM4LjI1LDMwNiAgICAgQzM4LjI1LDE1OC4xMjUsMTU4LjEyNSwzOC4yNSwzMDYsMzguMjVjMTQ3Ljg3NSwwLDI2Ny43NSwxMTkuODc1LDI2Ny43NSwyNjcuNzVDNTczLjc1LDQ1My44NzUsNDUzLjg3NSw1NzMuNzUsMzA2LDU3My43NXoiIGZpbGw9IiMyMGMxOTgiLz4KCQk8L2c+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==);
  background-size: 20px 20px;
  background-repeat: no-repeat;
  background-position: center;
}

.i-warning {
  background-image: url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMS4xLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYxMi44MTYgNjEyLjgxNiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNjEyLjgxNiA2MTIuODE2OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCI+CjxnPgoJPHBhdGggZD0iTTMwNi40MDgsMEMxMzcuMzY4LDAsMC4zNzEsMTM2Ljk5NywwLjM3MSwzMDYuMDM3czEzNi45OTcsMzA2Ljc3OSwzMDYuMDM3LDMwNi43NzlzMzA2LjAzNy0xMzcuODEzLDMwNi4wMzctMzA2LjAzNyAgIEM2MTIuNDQ1LDEzNy43MzksNDc1LjQ0OCwwLDMwNi40MDgsMHogTTMwNi40MDgsNTgzLjE0N2MtMTUyLjIwMywwLTI3Ni4zNjgtMTI0LjE2NS0yNzYuMzY4LTI3Ni4zNjggICBTMTU0LjIwNSwyOS41OTUsMzA2LjQwOCwyOS41OTVTNTgyLjc3NiwxNTMuNzYsNTgyLjc3NiwzMDYuNzc5UzQ1OC42MTEsNTgzLjE0NywzMDYuNDA4LDU4My4xNDd6IE0zMjEuNjEzLDQzMS43NiAgIGMwLDguODI3LTcuMTk1LDE2LjAyMS0xNi4wMjEsMTYuMDIxYy04LjgyNywwLTE2LjAyMS03LjE5NS0xNi4wMjEtMTYuMDIxYzAtOC44MjcsNy4xOTUtMTYuMDIxLDE2LjAyMS0xNi4wMjEgICBTMzIxLjYxMyw0MjIuOTM0LDMyMS42MTMsNDMxLjc2eiBNMjkwLjM4NywzNTMuMjExdi0xODAuMjRjMC04LjAxMSw2LjM3OS0xNC4zOSwxNC4zOS0xNC4zOWM4LjAxMSwwLDE0LjM5LDYuMzc5LDE0LjM5LDE0LjM5ICAgdjE4MC4yNGMwLDguMDExLTYuMzc5LDE0LjM5LTE0LjM5LDE0LjM5QzI5Ni43NjYsMzY4LjQ5MSwyOTAuMzg3LDM2MS4yMjIsMjkwLjM4NywzNTMuMjExeiIgZmlsbD0iI2Y1ZDg3OCIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=);
  background-size: 20px 20px;
  background-repeat: no-repeat;
  background-position: center;
}

.i-close {
  background-image: url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMS4xLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYxMi40NDUgNjEyLjQ0NSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNjEyLjQ0NSA2MTIuNDQ1OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCI+CjxnPgoJPHBhdGggZD0iTTUyMi42NDIsODkuODA0QzQ2NC45LDMyLjA2MiwzODguMDExLDAsMzA2LjIyMywwUzE0Ny41NDUsMzIuMDYyLDg5LjgwNCw4OS44MDQgICBjLTExOS40MTYsMTE5LjQxNi0xMTkuNDE2LDMxMy40MjIsMCw0MzIuODM4YzU3Ljc0MSw1Ny43NDEsMTM0LjYzMSw4OS44MDQsMjE2LjQxOSw4OS44MDRzMTU4LjY3OC0zMi4wNjIsMjE2LjQxOS04OS44MDQgICBDNjQyLjA1OCw0MDMuMjI1LDY0Mi4wNTgsMjA5LjIyLDUyMi42NDIsODkuODA0eiBNNTAxLjc4Nyw1MDEuNzg3Yy01Mi4xMDEsNTIuMTAxLTEyMS43OTEsODAuOTcyLTE5NS41NjQsODAuOTcyICAgcy0xNDMuNDYzLTI4Ljg3MS0xOTUuNTY0LTgwLjk3MlMyOS42ODcsMzc5Ljk5NSwyOS42ODcsMzA2LjIyM3MyOC44NzEtMTQzLjQ2Myw4MC45NzItMTk1LjU2NHMxMjEuODY2LTgwLjk3MiwxOTUuNTY0LTgwLjk3MiAgIHMxNDMuNDYzLDI4Ljg3MSwxOTUuNTY0LDgwLjk3MnM4MC45NzIsMTIxLjg2Niw4MC45NzIsMTk1LjU2NFM1NTMuODg3LDQ0OS42ODYsNTAxLjc4Nyw1MDEuNzg3eiBNMzk5LjIxOCwyMzQuODk5bC03NC41MTUsNzQuNTE1ICAgbDc0LjUxNSw3NC41MTVjNS42NDEsNS42NDEsNS42NDEsMTUuMjE1LDAsMjAuODU1Yy0zLjE5MSwzLjE5MS02LjM4Myw0LjAwOC0xMC4zOTEsNC4wMDhjLTQuMDA4LDAtNy4xOTktMS42MzMtMTAuMzktNC4wMDggICBsLTc0LjU4OS03NC41MTVsLTc0LjU4OSw3NC41MTVjLTMuMTkxLDMuMTkxLTYuMzgzLDQuMDA4LTEwLjM5LDQuMDA4cy03LjE5OS0xLjYzMy0xMC4zOS00LjAwOCAgIGMtNS42NDEtNS42NDEtNS42NDEtMTUuMjE1LDAtMjAuODU1bDc0LjUxNS03NC41MTVsLTc0LjUxNS03NC41MTVjLTUuNjQxLTUuNjQxLTUuNjQxLTE1LjIxNSwwLTIwLjg1NSAgIGM1LjY0MS01LjY0MSwxNS4yMTUtNS42NDEsMjAuODU1LDBsNzQuNTE1LDc0LjUxNWw3NC41MTUtNzQuNTE1YzUuNjQxLTUuNjQxLDE1LjIxNS01LjY0MSwyMC44NTUsMCAgIEM0MDQuODU4LDIxOS42ODUsNDA0Ljg1OCwyMjguNDQyLDM5OS4yMTgsMjM0Ljg5OXoiIGZpbGw9IiNmNTVhNGUiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K);
  background-size: 20px 20px;
  background-repeat: no-repeat;
  background-position: center;
}

.i-left {
  background-image: url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCIgdmlld0JveD0iMCAwIDQxNC4yOTggNDE0LjI5OSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDE0LjI5OCA0MTQuMjk5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPHBhdGggZD0iTTMuNjYzLDQxMC42MzdjMi40NDEsMi40NCw1LjY0LDMuNjYxLDguODM5LDMuNjYxYzMuMTk5LDAsNi4zOTgtMS4yMjEsOC44MzktMy42NjFsMTg1LjgwOS0xODUuODFsMTg1LjgxLDE4NS44MTEgICBjMi40NCwyLjQ0LDUuNjQxLDMuNjYxLDguODQsMy42NjFjMy4xOTgsMCw2LjM5Ny0xLjIyMSw4LjgzOS0zLjY2MWM0Ljg4MS00Ljg4MSw0Ljg4MS0xMi43OTYsMC0xNy42NzlsLTE4NS44MTEtMTg1LjgxICAgbDE4NS44MTEtMTg1LjgxYzQuODgxLTQuODgyLDQuODgxLTEyLjc5NiwwLTE3LjY3OGMtNC44ODItNC44ODItMTIuNzk2LTQuODgyLTE3LjY3OSwwbC0xODUuODEsMTg1LjgxTDIxLjM0LDMuNjYzICAgYy00Ljg4Mi00Ljg4Mi0xMi43OTYtNC44ODItMTcuNjc4LDBjLTQuODgyLDQuODgxLTQuODgyLDEyLjc5NiwwLDE3LjY3OGwxODUuODEsMTg1LjgwOUwzLjY2MywzOTIuOTU5ICAgQy0xLjIxOSwzOTcuODQxLTEuMjE5LDQwNS43NTYsMy42NjMsNDEwLjYzN3oiIGZpbGw9IiM4NzMxNGUiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K);
  background-size: 16px 16px;
  background-repeat: no-repeat;
  background-position: center;
}

/*--------------------
Login Box
---------------------*/

.box {
  width: 330px;
  position: absolute;
  top: 50%;
  left: 50%;
  
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.box-form {
  width: 320px;
  position: relative;
  z-index: 1;
}

.box-login-tab {
	width: 50%;
	height: 40px;
	background: #fdfdfd;
	position: relative;
	float: left;
	z-index: 1;
  
  -webkit-border-radius: 6px 6px 0 0;
     -moz-border-radius: 6px 6px 0 0;
          border-radius: 6px 6px 0 0;
  
	-webkit-transform: perspective(5px) rotateX(0.93deg) translateZ(-1px);
	        transform: perspective(5px) rotateX(0.93deg) translateZ(-1px);
	-webkit-transform-origin: 0 0;
	        transform-origin: 0 0;
	-webkit-backface-visibility: hidden;
	        backface-visibility: hidden;
	
	-webkit-box-shadow: 15px -15px 30px rgba(0,0,0,0.32);
     -moz-box-shadow: 15px -15px 30px rgba(0,0,0,0.32);
          box-shadow: 15px -15px 30px rgba(0,0,0,0.32);
}

.box-login-title {
	width: 35%;
	height: 40px;
	position: absolute;
	float: left;
	z-index: 2;
}

.box-login {
  position: relative;
  top: -4px;
  width: 320px;
  background: #fdfdfd;
  text-align: center;
  overflow: hidden;
  z-index: 2;
  
  -webkit-border-top-right-radius: 6px;
  -webkit-border-bottom-left-radius: 6px;
  -webkit-border-bottom-right-radius: 6px;
  -moz-border-radius-topright: 6px;
  -moz-border-radius-bottomleft: 6px;
  -moz-border-radius-bottomright: 6px;
   border-top-right-radius: 6px;
   border-bottom-left-radius: 6px;
   border-bottom-right-radius: 6px;
  
  -webkit-box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
     -moz-box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
          box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
}

.box-info {
	width: 260px;
	top: 60px;
  position: absolute;
	right: -5px;
	padding: 15px 15px 15px 30px;
	background-color: rgba(255,255,255,0.6);
	border: 1px solid rgba(255,255,255,0.2);
	z-index: 0;
	
	-webkit-border-radius: 6px;
     -moz-border-radius: 6px;
          border-radius: 6px;
    
    -webkit-box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
    -moz-box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
    box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
}

.line-wh {
 	width: 100%;
  height: 1px;
  top: 0px;
  margin: 12px auto;
	position: relative;
	border-top: 1px solid rgba(255,255,255,0.3);
}

/*--------------------
Form
---------------------*/

a { text-decoration: none; }

button:focus { outline:0; }

.b {
	height: 24px;
	line-height: 24px;
	background-color: transparent;
  border: none;
  cursor: pointer;
}

.b-form {
	margin: 10px 20px;
  float: right;
}

.b-info {
  opacity: 0.5;
  float: left;
}

.b-form:hover, 
.b-info:hover {
  opacity: 1;
}

.b-support, .b-cta {
	width: 100%;
	padding: 0px 15px;
  font-family: 'Quicksand', sans-serif;
  font-weight: 700;
  letter-spacing: -1px;
  font-size: 16px;
  line-height: 32px;
  cursor: pointer;
    
  -webkit-border-radius: 16px;
     -moz-border-radius: 16px;
          border-radius: 16px;
}

.b-support {
  border: #87314e 1px solid;
  background-color: transparent;
  color: #87314e;
  margin: 6px 0;
}

.b-cta {
  border: #df405a 1px solid;
  background-color: #df405a;
  color: #fff;
}

.b-support:hover, .b-cta:hover {
  color: #fff;
	background-color: #87314e;
	border: #87314e 1px solid;
}

.fieldset-body {
    display: table;
}

.fieldset-body p {
    width: 100%;
    display: inline-table;
    margin-bottom:2px;
}

label {
	float: left;
        width: 100%;
	top: 0px;
	font-size: 13px;
	font-weight: 700;
	text-align: left;
	line-height: 1.5;
            margin-left: 20px;
    margin-bottom: 5px;
}

label.checkbox {
	float: left;
  padding: 5px 20px;
	line-height: 1.7;
}

input[type=text],
input[type=password] {
    width: 100%;
    height: 32px;
    padding: 0px 10px;
    background-color: #e8e8e8;
    border: none;
    display: inline;
    color: #000;
    font-size: 16px;
    font-weight: 400;
    float: left;
  
}

input[type=text]:focus,
input[type=password]:focus {
    background-color: #333333;
    color: #fff;
    outline: none;
}

input[type=submit]  {
    border: none;
  width: auto;
    margin-left: 25px;
  height: 48px;
  margin-top: 24px;
  padding: 0px 20px;
  font-family: 'Quicksand', sans-serif;
	font-weight: 700;
	font-size: 18px;
	color: #fff;
  line-height: 40px;
  text-align: center;
  background-color: #333333;
	opacity: 1;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #FF3A3A;
}

input[type=submit]:focus {
	outline: none;
}

p.field span.i {
	width: 24px;
  height: 24px;
  float: right;
  position: relative;
  margin-top: -26px;
  right: 2px;
  z-index: 2;
  display: none;
            
  -webkit-animation: bounceIn 0.6s linear;
     -moz-animation: bounceIn 0.6s linear;
  	   -o-animation: bounceIn 0.6s linear;
          animation: bounceIn 0.6s linear;
}

/*--------------------
Transitions
---------------------*/

.box-form, .box-info, .b, .b-support, .b-cta,
 p.field span.i {
    
	-webkit-transition: all 0.3s;
     -moz-transition: all 0.3s;
      -ms-transition: all 0.3s;
       -o-transition: all 0.3s;
          transition: all 0.3s;
}

/*--------------------
Credits
---------------------*/

.icon-credits {
  width: 100%;
  position: absolute;
  bottom: 4px;
  font-family:'Open Sans', 'Helvetica Neue', Helvetica, sans-serif;
  font-size: 12px;
  color: rgba(255,255,255,0.1);
  text-align: center;
  z-index: -1;
}

.icon-credits a {
  text-decoration: none;
  color: rgba(255,255,255,0.2);
}
                                            </style>
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
									
                
 <div>
      <div class='fieldset-body' id='login_form'>
          <button onclick="openLoginInfo();" class='b b-form i i-more' title='Mais Informações' style="
    position: absolute;
    /* float: right; */
    right: 12px;
"></button>
        	<p class='field'>
          <label for='user' >Usuario</label>
          <input type='text' style="width: 34%;" id='usfer' name='usfer' title='Username' />
          <span id='valida' class='i i-warning'></span>
        </p>
      	  <p class='field'>
          <label for='pass' >Nome</label>
          <input type='text' style="width: 75%;" id='pafss' name='pfass' title='Password' />
          <span id='valida' class='i i-close'></span>
        </p>
        <p class='field'>
          <label for='pass' >Sexo</label>
          <input type='text' style="width: 24%;" id='pafss' name='pfass' title='Password' />
          <span id='valida' class='i i-close'></span>
        </p>
        <p class='field'>
          <label for='pass' >Data de Nascimento</label>
          <input type='text' style="width: 24%;" id='pafss' name='pfass' title='Password' />
          <span id='valida' class='i i-close'></span>
        </p>
        <p class='field'>
          <label for='pass'>País</label>
          <input type='text' style="width: 34%;" id='pafss' name='pfass' title='Password' />
          <span id='valida' class='i i-close'></span>
        </p>
        <p class='field'>
          <label for='pass' >Cidade</label>
          <input type='text' style="width: 54%;" id='pafss' name='pfass' title='Password' />
          <span id='valida' class='i i-close'></span>
        </p>
        <p class='field'>
          <label for='pass' >E-mail</label>
          <input type='text' style="width: 54%;" id='pafss' name='pfass' title='Password' />
          <span id='valida' class='i i-close'></span>
        </p>
        <p class='field'>
          <label for='pass' >Sobre Mim</label>
          <input type='text' style="width: 100%;" id='pafss' name='pfass' title='Password' />
          <span id='valida' class='i i-close'></span>
        </p>


        	<input type='submit' id='do_login' value='Atualizar' title='Get Started' />
      </div>
    </div>
  

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




				</body>

		</html>