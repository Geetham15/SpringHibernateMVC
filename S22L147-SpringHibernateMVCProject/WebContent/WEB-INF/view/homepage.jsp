<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
 
<html>
 
<head>
<title>Product list</title>
 
<!-- reference our style sheet -->
 
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/style/css/style.css" />
 
</head>
 
<body>
 
	<h2>List of available products</h2>
	
    <!-- div for apply styling to table  -->
	<div class="datagrid">
		<table>
			<tr>
				<th>Product ID</th>
                <th>Product Name</th>
                <th>Cost($)</th> 
                <th>Operations</th>
			</tr>
 
			<!-- loop over and print our customers -->
			<c:forEach var="product" items="${products}">
 
				<tr>
				<td>${product.productID}</td>
				<td>${product.productName}</td>
				<td>${product.cost}</td>
				<td><a href="${pageContext.request.contextPath}
				/updateProductForm/?id=${product.productID}">Update</a>
				|<a href="${pageContext.request.contextPath}
				/deleteProduct/?id=${product.productID}"
				onclick="if(!(confirm('Are you sure to delete the product?'))) return false">Delete</a>
				</td>
				</tr>
 
			</c:forEach>
		</table>
		<!-- Adding the Add Product button -->
		<p/>
		<input type="button" value="Add Product" 
		onclick="window.location.href='addProductForm';return false;"/>
	</div>
</body>
</html>








