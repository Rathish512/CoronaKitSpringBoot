<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Summary</title>
<style>
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
<h1 align="center">ORDER SUMMARY</h1>

<div>
<h1>Congratulations!! Your Order has been placed Successfully. Your product(s) will be delivered in 2 business days</h1>
</div>
<div>
<h3>USER DETAILS</h3>
</div>
 <section>
<div>USER NAME:${username}</div>
<div>EMAIL ID:${email}</div>
<div>CONTACT NUMBER:${contactnumber}</div>
</section>

<div>
<h3>Address Details</h3>
</div>
 <section>
<div>Address1:${Address1}</div>
<div>Address2:${Address2}</div>
<div>City:${City}</div>
<div>State${State}</div>
</section>
<div>
<h3>Product Summary</h3>
</div>
            <table>  
                <tr>  
                    <th>Corona Kit ID#</th>  
                    <th>Product ID</th>  
                    <th>Product Name</th>  
                    <th>Quantity</th>  
                    <th>Cost</th>   
                    
                                        
                </tr>  
                <c:forEach items="${kitdetails}" var="kitdetail">  
                    <tr>  
                        <td>${kitdetail.coronaKitId }</td>  
                        <td>${kitdetail.productId}</td>  
                        <td>${kitdetail.productFullName}</td>  
                        <td>${kitdetail.quantity }</td>  
                        <td>${kitdetail.amount}</td>               
                       
                 
                    </tr>  
                </c:forEach>  
            </table> 

<div>
<h3>TOTAL COST: Rs.${Totalamount}</h3>
</div>
<br/>

<br/>
</body>
</html>