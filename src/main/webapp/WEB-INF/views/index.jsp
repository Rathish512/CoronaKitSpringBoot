<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
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
<h1>Welcome to Corona-Kit Page</h1>

<nav>
 <div>
	<ul>
 		<li>
	        <a href="${pageContext.request.contextPath}/custom-login">Click Here to Login</a>
	      </li> 		
	 </ul> 
</div>
</nav>
</body>
</html>