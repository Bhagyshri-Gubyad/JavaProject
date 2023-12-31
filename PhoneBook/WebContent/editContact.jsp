<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit contact page</title>
<%@include file="Component/allCss.jsp" %>
</head>
<body>
<%@include file="Component/navbar.jsp" %>


<%
if(u ==null)
{
session.setAttribute("invalidMsg","Loign pelase");
response.sendRedirect("login.jsp");
}
%>


 
<div class="container-fluid">
<div class="row p-2">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">

<h4   class="text-center text-success">Add Contact Page</h4>

<% 
 String errorMsg=(String)session.getAttribute("errorMsg");

if(errorMsg!=null){
%>
<p class="text-danger text-center bg-info"><%=errorMsg %></p>
<%
session.removeAttribute("errorMsg");
}
%>


<form action="update" method="post">
 
 <%
 int cid=Integer.parseInt(request.getParameter("cid"));
 ContactDao dao=new ContactDao(DbConnect.getCon());
 Contact c=dao.getContactByID(cid);
 %>
 
  <input type="hidden" value="<%=cid %>" name="cid">

<div class="form-group">
    <label for="exampleInputEmail1">Enter Name </label>
    <input name="name" value="<%=c.getName()%>" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" value="<%=c.getEmail()%>" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Phone NO</label>
    <input name="phno" value="<%=c.getPhno()%>" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter About </label>
    <input name="about" value="<%=c.getAbout()%>" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  
 <div class="text-center m-3">
  <button type="submit" class="btn btn-success">Update Contact</button>
 </div>
</form>


</div></div>
</div>

</div>
</div>

</body>
</html>