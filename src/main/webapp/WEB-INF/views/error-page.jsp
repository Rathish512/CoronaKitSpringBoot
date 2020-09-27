<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Access Denied Page</title>
<style>
body {
background-color:#D3C6C6;
}
</style>

</head>
<body>
<h3><strong>Error:</strong> ${errMsg }</h3>  
<p>  
        Sorry for the inconvenience!  
        Contact Technology team if problem persists!  
</p>  
<a href="${pageContext.request.contextPath}/">HOME</a>
</body>
</html>