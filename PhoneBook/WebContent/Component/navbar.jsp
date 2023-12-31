 <%@ page import = "entity.User" %>
   <%@ page import = "dao.ContactDao" %>
      <%@ page import = "dao.UserDao" %>
      <%@ page import = "entity.Contact" %>
       <%@ page import = "connection.DbConnect" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="index.jsp"><i class="fa-sharp fa-solid fa-square-phone"></i> PhoneBook</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"> <i class="fa-sharp fa-regular fa-house-user"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">    
      
        <a class="nav-link" href="addContact.jsp"> <i class="fa-solid fa-user-plus"></i> Add Phone No</a>
      </li>
      
      <li class="nav-item active">
      
        <a class="nav-link " href="viewContact.jsp"><i class="fa-solid fa-eye"></i> View Contact</a>
      </li>
    </ul>
    
    	
    
   
   <!-- code.txt paste here  -->
   
   
   <% 
    User u=(User)session.getAttribute("user");
    if(u ==null){
    %>
    	 <form class="form-inline my-2 my-lg-0">
    
      <a href="login.jsp" class="btn btn-success "> <i class="fa-regular fa-user"></i> Login</a>
      
      <a href="register.jsp" class="btn btn-danger ml-2"> <i class="fa-sharp fa-regular fa-id-card"></i> Register</a>
      
    </form>
    	<%
    	
    }else{%>
     <form class="form-inline my-2 my-lg-0">
    
      <button class="btn btn-success"><%=u.getName() %></button>
      
    <a  data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-danger text-white ml-4"> Logout </a>
      
    </form>
    <%
    	
    }
    %>
    </div>
    
    

   
   <!--   logout popup-->


<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
   
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center p-2">
      <h6 > Do you want to Logout? </h6>
      <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
        <a href="logoutServlet"  class="btn btn-sm btn-primary">Logout</a>
        
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

 
 

</nav>