<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register page</title>
<%@include file="Component/allCss.jsp" %>

</head>
<body style="background-color:#cfd4d1">
<%@include file="Component/navbar.jsp" %>

<div class="container-fluid">
<div class="row p-2">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">

<h4   class="text-center text-success">Registration Page</h4>

<%-- <% String successMsg=(String) session.getAttribute("successMsg");
 String errorMsg=(String)session.getAttribute("errorMsg");
if(successMsg !=null)
{
	%>
	<p class="text-white text-center bg-info"><%=successMsg %></p>
	<%
	session.removeAttribute("successMsg");
}
if(errorMsg!=null){
%>
<p class="text-danger text-center bg-info"><%=errorMsg %></p>
<%
session.removeAttribute("errorMsg");
}
%> --%>

<form action="RegServlet" method="post">
<div class="form-group">
    <label for="exampleInputEmail1">Enter Name: </label>
    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="pwd" type="password" class="form-control" id="exampleInputPassword1" >
  </div>
  
 <div class="text-center m-3">
  <button type="submit" class="btn btn-primary">Register</button>
 </div>
</form>


</div></div>
</div>

</div>
</div>
<div style="margin-top:55px">
<%@include file="Component/footer.jsp" %>
</div>
</body>
</html>