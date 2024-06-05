<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.DAO.PostDAO" %>
     <%@page import="com.DB.DBconnect" %>
      <%@page import="java.util.List" %>
       <%@page import="com.User.Post" %>
     <%
    User user3=(User)session.getAttribute("userD");
    if(user3==null)
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
<title>shownotes</title>
</head>
<body>
<%@include file="allcom/navbar.jsp" %>

<div claa="container">

<h2 class="text-center">Show Notes:</h2>
<div class="row">

<div class="col-md-12">


<%
if(user3!=null)
{
	PostDAO ob=new PostDAO(DBconnect.getcon());
	List <Post> post=ob.getData(user3.getId());
	for(Post po:post)
	{
	%>
		<div class="card mt-3">
<img alt="" src="img/mohini.jpg" class="card-img-top mt-2 mx-auto" style="max-width:100px;">

<div class="card-body p-4">
<h5 class="card-title"><%=po.getTitle()%></h5>
<p><%=po.getContent()%>.</p>

<p>
<b class="text-success">Published By: <%=user3.getName() %></b><br><b class="text-primary"></b>

</p>

<div class="container text-center mt-2">
<a href="" class="btn btn-danger">Delete</a>
<a href="edit.jsp?notes_id=<%=po.getId() %>" class="btn btn-success">Edit</a>
</div>



</div>

</div>
		
	<% 
	
	}
}


%>

</div>

</div>


</div>

<%@include file="allcom/footer.jsp" %>
</body>
</html>