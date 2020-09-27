<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Menu Page</title>
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
<h1>Welcome to Corona Kit Dashboard!!!</h1>
<nav>
		 <div>

 <c:choose>
      	<c:when test="${unm!=null && role=='ADMIN' }">
      	<ul>
	      <li>
	        <a href="${pageContext.request.contextPath }/admin/home">ADMIN DASHBOARD</a>
	      </li>   
	      <li>
	      	  <a href="${pageContext.request.contextPath }/logout">Sign Out</a>
	      </li>
	      </ul>
	      </c:when>
	     
      	<c:when test="${unm!=null && role=='USER' }">
      	<ul> 
	      	<li>
		       <a href="${pageContext.request.contextPath }/user/home">USER DASHBOARD</a>
		    </li>
		    <li>
	      	  <a href="${pageContext.request.contextPath }/logout">Sign Out</a>
	      	</li>
	      </ul>	
      	</c:when>
      	
      	
      </c:choose>
      </div>
      </nav>
</body>
</html>