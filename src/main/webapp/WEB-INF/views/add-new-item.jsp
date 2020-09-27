<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New product</title>
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
	        <a href="${pageContext.request.contextPath }/admin/home">ADMIN DASHBOARD</a>
	      </li> 
		<li>
	        <a href="${pageContext.request.contextPath }/admin/product-list">Products List</a>
	      </li>
	      <li>
	        <a href="${pageContext.request.contextPath }/admin/product-entry">Add New Product</a>
	      </li>
	 </ul> 
	 </div>
	 </nav>
 <h3>Add New Product</h3>
 <section>
 <div>
<form:form action="${pageContext.request.contextPath }/admin/product-save" method="post" modelAttribute="product">  
     
    <br/>        
		<div> 
            <form:label path="productName">Product Name</form:label>  
            <form:input type="text" path="productName"/>  
            <form:errors path="productName"/>
        </div> 
    <br/>         
        <div>
            <form:label path="cost">Product Cost</form:label>  
            <form:input type="number" path="cost" />  
            <form:errors path="cost"/>
        </div>
    <br/>          
        <div>  
            <form:label path="productDescription">Product Description</form:label>  
            <form:input type="text" path="productDescription"/>  
            <form:errors path="productDescription"/>
        </div>  
    <br/>   
    	<div>                          
        <button>SAVE</button>
    	</div>       
    <br/>             
    </form:form> 
   </div> 
</section>
</body>
</html>