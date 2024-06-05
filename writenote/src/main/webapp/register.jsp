<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="allcom/allcss.jsp" %>
<link rel="stylesheet" href="css/style.css">
<title>REGISTER</title>
</head>
<body>
<%@include file="allcom/navbar.jsp" %>

<div class="container-fluid">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card mt-4">
<div class="card-header text-center text-white bg-custom">
<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
<h4>Reegistration</h4>
</div>

<%

String regmsg=(String)session.getAttribute("reg-sucess");
if(regmsg!=null)
{%>
	<div class="alert alert-success" role="alert">
  <%=regmsg %>Login<a href="login.jsp">Click here </a>
</div>
 <% 
session.removeAttribute("reg-sucess"); 
}

%>

<%

String failmsg=(String)session.getAttribute("failed-msg");
if(failmsg!=null)
{%>
<div class="alert alert-danger" role="alert">
  <%=failmsg %>
</div>
 <%
 session.removeAttribute("failed-msg");  
}

%>


<div class="card-body">
<form action="register" method="post">


<div class="form-group">
    
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="enter full name" name="name">
    
  </div>
  <div class="form-group">
    
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email" name="email">
     
  </div>
  <div class="form-group">
    
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="password" name="password">
  </div>
  
  <button type="submit" class="btn btn-primary">Register</button>
</form>

</div>

</div>
</div>

</div>




</div>

<%@include file="allcom/footer.jsp" %>
</body>
</html>