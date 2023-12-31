<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
  <%@ page import = "java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view contact page</title>
<%@include file="Component/allCss.jsp" %>

<style type="text/css">

.crd-hr:hover{
background-color:	#899499;
color:white;

}
.crd-hr{
background-color:#E5E4E2}
</style>
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


 
 <%
 String msg=(String)session.getAttribute("successMsg");
 String errorMsg=(String)session.getAttribute("errorMsg");
 if(msg !=null)
 {
	 %>
	 <div class="alert alert-success" role="alert"> <%=msg %></div>
	 <%
	 session.removeAttribute("succMsg");

 }
 if(errorMsg!=null){
	 %>
	 <p class="text-danger text-center bg-info"><%=errorMsg %></p>
	 <%
	 session.removeAttribute("errorMsg");
	 }
	 %>
 
 
 <div class="container">
 <div class="row p-4">



 <%
if(u !=null)
{
ContactDao dao=new ContactDao(DbConnect.getCon());
List<Contact> contact=dao.getAllContact(u.getId());

for(Contact c:contact)
{
%>


<div class="col-md-4">
<div class="card crd-hr mb-3">
<div class="card-body ">
<!-- 
<p>Name: Bhagyshri Gubyad</p>
<p>Phno:  1234567890 </p>
<p>email:  bhagyshri541@gmail.com</p>
<p>About: Jr. Software Developer </p> -->



 <p>Name: <%=c.getName() %></p>
<p>Phno:  <%=c.getPhno() %></p>
<p>email:  <%=c.getEmail() %></p>
<p>About: <%= c.getAbout() %></p> 

<div class="text-center">
<a href="editContact.jsp?cid=<%=c.getId()%>" class="btn btn-success btn-sm text-white">Edit</a>
<a  href="delContact?cid=<%=c.getId() %>" class="btn btn-danger btn-sm text-white">Delete</a>
</div>

</div>
</div>
</div>
<%}} %>



 </div>
 </div>

</body>
</html>