<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Address</title>
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
<nav>
 <div>
 	<ul>
 		<li>
	        <a href="${pageContext.request.contextPath }/user/home">USER DASHBOARD</a>
	      </li> 
		<li>
	        <a href="${pageContext.request.contextPath }/user/show-list">Products List</a>
	     </li>
	     <li>
	      	  <a href="${pageContext.request.contextPath }/logout">Sign Out</a>
	      	</li>	     
	 </ul> 
	 </div>
	 </nav>

 <h3>Enter Shipping Address</h3>
		<hr/>
 <section>
 <div> 
    
	<form:form action="${pageContext.request.contextPath }/user/finalize" method="post" modelAttribute="Address">
		
		
		<div>  
            <form:label path="Address1">Address Line1 :</form:label>  
            <form:input type="text" path="Address1"/>    
            <form:errors path="Address1"/>        
        </div>  
        <br>
        <div>  
            <form:label path="Address2">Address Line2 :</form:label>  
            <form:input type="text" path="Address2"/>
            <form:errors path="Address2"/>   
        </div>
       <br>
        <div>  
            <form:label path="City">City :</form:label>  
            <form:input type="text" path="City"/> 
            <form:errors path="City"/>  
        </div>
        <br>
        <div>  
            <form:label path="State">State :</form:label>  
            <form:input type="text" path="State"/>  
            <form:errors path="State"/> 
        </div>
        <br>
        <div> 
        <button>Place Order</button>
        </div>
</form:form>
</div>
</section>
 
</body>
</html>