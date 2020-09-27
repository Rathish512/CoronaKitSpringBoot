<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
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
	        <a href="${pageContext.request.contextPath }/admin/home">ADMIN DASHBOARD</a>
	      </li> 
		<li>
	        <a href="${pageContext.request.contextPath }/admin/product-list">Products List</a>
	      </li>
	      <li>
	        <a href="${pageContext.request.contextPath }/admin/product-entry">Add Product</a>
	      </li>
	      <li>
	      	  <a href="${pageContext.request.contextPath }/logout">Sign Out</a>
	      	</li>
	 </ul> 
</div>
</nav>
<h3>Products List</h3>
<c:if test="${deleteconfirmationmsg!=null}">
	<p> Product is Deleted.</p>
	<br/>
	</c:if>
	 <c:choose>  
        <c:when test="${productlist == null || productlist.isEmpty() }">  
            <p>No Products Available to display</p>  
        </c:when>  
        <c:otherwise>  
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
                        <td>
                        <a href="${pageContext.request.contextPath }/admin/product-delete?productId=${product.id}">DELETE</a>                       
                        </td>
                    </tr>  
                </c:forEach>  
            </table>  
        </c:otherwise>  
    </c:choose>

</body>
</html>