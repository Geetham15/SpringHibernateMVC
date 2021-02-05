<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add/Update Product</title>
</head>
<body>
<h2>Add/Update Product </h2>
<hr/>
	<form:form action="${pageContext.request.contextPath}/addProduct" method="post" modelAttribute="product">
		<form:hidden path="productID"/>
		<p/>Product Name : <p />
		<form:input path="productName" />
		<p/>Cost : <p/>
		<form:input path="cost" />
		<p/>
		<input type="submit" value="Add/Update Product">
	</form:form>
	<hr/>
	<a href="${pageContext.request.contextPath}/">Homepage</a>
</body>
</html>