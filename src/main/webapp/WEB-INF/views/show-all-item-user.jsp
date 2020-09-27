<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show products to add</title>
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
	        <a href="${pageContext.request.contextPath }/user/show-list">Products List</a>
	     </li>
	     <li>
	      	  <a href="${pageContext.request.contextPath }/logout">Sign Out</a>
	      	</li>	     
	 </ul> 
	 </div>
	 </nav>
<h3>Products List</h3>
<c:choose>  
        <c:when test="${productlist == null || productlist.isEmpty() }">  
            <p>No Products Available to display</p>  
        </c:when>  
        <c:otherwise>  
        	<p>Click on 'Add Product to Cart' button and click on 'Show Added Products' button to proceed with the checkout.</p>  
			<p>If you need more quantities of the same product. Click on 'Add Product to Cart' button again.</p>
			<br/> 
            <table>  
                <tr>  
                    <th>Product id#</th>  
                    <th>Product Name</th>  
                    <th>Product Cost</th>  
                    <th>Product Description</th>   
                    
                    <th>Actions</th>                    
                </tr>  
                <c:forEach items="${productlist}" var="product">  
                    <tr>  
                        <td>${product.id }</td>  
                        <td>${product.productName }</td>  
                        <td>${product.cost }</td>  
                        <td>${product.productDescription}</td>                       
                       
                      <td> <a href="${pageContext.request.contextPath }/user/add-to-cart?productId=${product.id}">Add Product to cart</a> </td>
                    </tr>  
                </c:forEach>  
            </table>  
        </c:otherwise>  
    </c:choose> 
      
   		<br/>       
        <a href="${pageContext.request.contextPath }/user/show-kit">Show Added Products</a>               

</body>
</html>