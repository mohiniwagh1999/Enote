<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="allcom/allcss.jsp" %>
<link rel="stylesheet" href="css/style.css">
<title>LOGIN</title>
</head>
<body>
<%@include file="allcom/navbar.jsp" %>
<div class="container-fluid">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card mt-4">
<div class="card-header text-center text-white bg-custom">
<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
<h4>Login</h4>
</div>


<%
 String invalid=(String)session.getAttribute("login-failed");
if(invalid!=null)
{
%>
<div class="alert alert-danger" role="alert">
  <%=invalid %>
</div>
<% 
session.removeAttribute("login-failed");
}


%>


<%
String withoutLogin=(String)session.getAttribute("Login-error");
if(withoutLogin!=null)
{%>
	<div class="alert alert-danger" role="alert">
  <%=withoutLogin %>
<%
session.removeAttribute("login-failed");
}

%>

<%
String lgMsg=(String)session.getAttribute("logoutMsg");
if(lgMsg!=null)
{%>
<div class="alert alert-success" role="alert"><%=lgMsg %>
</div>
	
<%
session.removeAttribute("logoutMsg");
}



%>
<div class="card-body">
<form action="login" method="post">


  <div class="form-group">
    
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email" name="uemail">
     
  </div>
  <div class="form-group">
    
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="password" name="upassword">
  </div>
  
  <button type="submit" class="btn btn-primary">login</button>
</form>

</div>

</div>
</div>

</div>


<%@include file="allcom/footer.jsp" %>
</body>
</html>