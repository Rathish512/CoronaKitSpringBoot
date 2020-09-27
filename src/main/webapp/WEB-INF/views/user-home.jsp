<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>
<style>
nav li{
	display:inline-block;
	background-color:#7a62c9;
	padding:5px;
}
nav a{
text-decoration:none;
color:white;
}

nav a:hover{
color:red;
}
body {
background-color:#D3C6C6;
}
</style>
</head>
<body>
<h1>This is User Dashboard</h1>
<nav>
 <div>
 	<ul>
 		<li>
	        <a href="${pageContext.request.contextPath }/user/home">USER DASHBOARD</a>
	      </li> 
		<li>
	        <a href="${pageContext.request.contextPath }/user/show-list">Products List To Add</a>
	     </li>
	     <li>
	      	  <a href="${pageContext.request.contextPath }/logout">Sign Out</a>
	      	</li>	     
	 </ul> 
	 </div>
	 </nav>

</body>
</html>