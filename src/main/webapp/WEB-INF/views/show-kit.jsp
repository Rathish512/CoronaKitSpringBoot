<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Kit</title>
<style>
nav li{
	display:inline-block;
	background-color:#7a62c9;
	padding:5px;
}
a{
background-color:#7a62c9;
padding:5px;
color:white;
text-decoration:none;
}

a:hover{
color:red;
}
body {
background-color:#D3C6C6;
}
th,td
{
text align:center;
padding:5px;
border:1px solid black;
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
	        <a href="${pageContext.request.contextPath }/user/show-list">Products List To Add</a>
	     </li>	   
	     <li>
	      	  <a href="${pageContext.request.contextPath }/logout">Sign Out</a>
	      	</li>  
	 </ul> 
	 </div>
	 </nav>
	
	<br> 
<c:choose>  
        <c:when test="${cartaddedproduct == null || cartaddedproduct.isEmpty() }">  
            <p>No Products has been added to Cart</p>  
        </c:when>  
        <c:otherwise>  
        <p>Review the below Kit and click on checkout button!!! </p> 
        <br/>
            <table> 
                <tr>  
                    <th>Product id#</th>  
                    <th>Product Name</th>  
                    <th>Product Cost</th>  
                    <th>Product Description</th>         
                    <th>Product Quantity</th>     
                    <th>Action</th>                             
                </tr>  
                <c:forEach items="${cartaddedproduct}" var="product">  
                    <tr>  
                        <td>${product.id }</td>  
                        <td>${product.productName }</td>  
                        <td>${product.cost }</td>  
                        <td>${product.productDescription}</td>               
                        <td>${Qtymap.get(product.id)}</td>    
                        <td> <a href="${pageContext.request.contextPath }/user/delete?productId=${product.id}">Delete Product</a> </td> 
                    </tr>  
                </c:forEach>  
            </table>  
            
            <nav>
		   		<br/>          
		        <a href="${pageContext.request.contextPath }/user/checkout">Checkout</a>               
   			 </nav>   
        </c:otherwise>  
    </c:choose> 
    
    

</body>
</html>