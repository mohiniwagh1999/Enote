<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.User.User" %>
    
     <%
    
    User user1=(User)session.getAttribute("userD");
    if(user1==null)
    {
    	response.sendRedirect("login.jsp");
    	session.setAttribute("Login-error", "please login....");
    }
    
    
    %>
     
     
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="allcom/allcss.jsp" %>
<link rel="stylesheet" href="css/style.css">
<title>Add Note</title>
</head>
<body>
<%@include file="allcom/navbar.jsp" %>

<div class="container-fluid">
<h1 class="text-center">Add Your Notes</h1>
<div class="container">
<div class="row">
<div class="col-md-12">
<form action="addnote" method="post">
  <div class="form-group">
  
  <%
  User us=(User)session.getAttribute("userD");
  if(us!=null)
  {%>
	  <input type="hidden" value="<%=us.getId() %>" name="id">
  <%}
  
  %>
  
  
    <label for="exampleInputEmail1">Enter title</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title" required="required" >
    </div>
    
  <div class="form-group">
  <label for="exampleInputEmail1">Enter Content</label>
  <textarea rows="9" cols="" class="form-control" name="content" required="required"></textarea>
  </div>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
</form>
</div>
</div>


</div>

</div>
<%@include file="allcom/footer.jsp" %>
</body>
</html>