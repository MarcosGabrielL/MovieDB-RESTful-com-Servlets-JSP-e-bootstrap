<%-- 
    Document   : Signoutcontroller
    Created on : 05/08/2019, 15:20:57
    Author     : Marcos
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.removeAttribute("UserId");
session.setAttribute("Logout", true);
%>
<script type="text/javascript">
 window.location.href="../index.jsp";
</script>
