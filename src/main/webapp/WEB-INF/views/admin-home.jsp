<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
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
<body>
<h1>This is Admin Dashboard</h1>
<nav>
 <div>
 	<ul>
 		<li>
	        <a href="${pageContext.request.contextPath }/admin/home">ADMIN DASHBOARD</a>
	      </li> 
		<li>
	        <a href="${pageContext.request.contextPath }/admin/product-list">Products List</a>
	      </li>
	      <li>
	        <a href="${pageContext.request.contextPath }/admin/product-entry">Add New Product</a>
	      </li>
	      <li>
	      	  <a href="${pageContext.request.contextPath }/logout">Sign Out</a>
	      	</li>
	 </ul> 
	 </div>
	 </nav>
 <c:if test="${msg != null }">  
        <Strong>${msg }</Strong> 	
 </c:if> 
	    	
</body>
</html>