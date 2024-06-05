<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
    
    User user2=(User)session.getAttribute("userD");
    if(user2==null)
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
<title>HOME</title>
</head>
<body>
<%@include file="allcom/navbar.jsp" %>
<div class="container-fluid">
<div class="card py-5">
<div class="card-body text-center">

<img alt="" src="img/hi.jpeg" class="img-fluid mx-auto" style="width:350px">
<h1>START TAKING YOUR NOTES</h1>
<a href="addnotes.jsp" class="btn btn-outline-primary">Start Here</a>
</div>


</div>



</div>

<%@include file="allcom/footer.jsp" %>
</body>
</html>