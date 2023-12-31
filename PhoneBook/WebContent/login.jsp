<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<%@include file="Component/allCss.jsp" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="background-color:#cfd4d1">
<%@include file="Component/navbar.jsp" %>

<div class="container-fluid">
<div class="row p-2">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">

<h4   class="text-center text-success">Login Page</h4>

<%
String invalidMsg=(String)session.getAttribute("invalidMsg");
if(invalidMsg != null)
{
%>
<p class="text-center bg-info text-white"><%=invalidMsg %></p>
<%	
session.removeAttribute("invalidMsg");
}
%>


<%
String logMsg=(String)session.getAttribute("logMsg");
if(logMsg != null)
{
%>
<p class="text-center bg-info text-white"><%=logMsg %></p>
<%	
session.removeAttribute("logMsg");
}
%>

<form action="LoginServlet" method="post">

  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="pwd" type="password" class="form-control" id="exampleInputPassword1" >
  </div>
  
 <div class="text-center m-3">
  <button type="submit" class="btn btn-primary">Login</button>
 </div>
</form>


</div></div>
</div>

</div>
</div>
<div style="margin-top:140px">
<%@include file="Component/footer.jsp" %>
</div>
</body>
</html>