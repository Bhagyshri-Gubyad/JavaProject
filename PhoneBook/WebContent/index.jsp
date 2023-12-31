<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Phone book</title>

<%@include file="Component/allCss.jsp" %>
<style>
.bkg-img{
background:url("img/p4.jpg");
width:1160px;
height:85vh;

background-size:cover;

</style>
</head>
<body>


<%@include file="Component/navbar.jsp" %>


<%-- 
<% User u1=(User)session.getAttribute("user");
out.print(u);
%> --%>


<div class="container-fluid bkg-img text-center text-dark">
<h1 > Welcome to Phone Book App</h1>
</div>




<%@include file="Component/footer.jsp" %>
</body>
</html>