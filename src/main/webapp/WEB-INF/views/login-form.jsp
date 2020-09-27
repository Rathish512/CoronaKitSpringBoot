<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring-form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
<style>
body {
background-color:#D3C6C6;
}
h3
{
color:red;
}
</style>
</head>
<body>
<h2>Log In</h2>
<section>
<form action="${pageContext.request.contextPath}/login" method="POST">
			<c:if test="${param.error ne null}">
				<h3>Invalid Credentials! Access Denied!</h3>
			</c:if>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<div>
			<label>UserName: <input type="text" name="unm"/></label>
			</div>
			<br>
			<div>
			<label>Password: <input type="password" name="pwd"/></label>
			</div>
			<br>
			<div>
			<button>Sign In</button>
			</div>			
			
		</form>
</section>

</body>
</html>