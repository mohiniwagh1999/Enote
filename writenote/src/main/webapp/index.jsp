<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
<style>
.back-img{
background: url("img/good.jpeg");
width:100%;
height:80vh;
background-repeat:no-repeat;
background-size:cover;

}

</style>
<%@include file="allcom/allcss.jsp" %>
<link rel="stylesheet" href="css/style.css">
</head>

<body>
<%@include file="allcom/navbar.jsp" %>


<div class="container-fluid back-img">
<div class="text-center">
<h1 class="text-white"><i class="fa fa-book" aria-hidden="true"></i> E Notes - Save Your Notes</h1>
<a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle" aria-hidden="true"></i>login</a>
<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>register</a>

</div>
</div >
<%@include file="allcom/footer.jsp" %>

</body>

</html>