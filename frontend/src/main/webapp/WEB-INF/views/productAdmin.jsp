

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>:: Welcome To BassettFurniture.com ::</title>
<!-- Include jQuery before bootstrap -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Bootstrap cdn -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Fontawesome cdn -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- AngularJS cdn -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>

<!-- Custom css -->
<style>
body {
	padding-top: 60px;
	padding-bottom: 20px;
}

#thumbnails>.row {
	padding: 5px 0px 5px 0px;
}

p {
	font-family: 'Open Sans', sans-serif;
}

.nav {
	height: 65px;
	font-size: 20px;
}

.nav>li {
	padding: 10px;
	margin: 0px;
}
</style>
</head>
<body>

<c:url var="addAction" value="/productAdmin/add"></c:url>
<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-8 center">
				<h2>Add New Product</h2>
				<form:form class="form-horizontal" role="form"
					action="${ addAction }" modelAttribute="product"
					enctype="multipart/form-data">
					<c:if test="${ !empty product.model }">
					<div class="form-group">
						<div class="col-sm-10">
							<form:input class="form-control" readonly="true" path="productId" disabled="true" />
							<form:hidden path="productId" />
						</div>
					</div>
					</c:if>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input class="form-control" path="brand" placeholder="Brand" />
							<form:errors path="brand" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="model" placeholder="Model" />
							<form:errors path="model" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="category" placeholder="Category" />
							<form:errors path="category" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="description" placeholder="Description" />
							<form:errors path="description" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="price" placeholder="Price" />
							<form:errors path="price" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="file" class="form-control" path="image" placeholder="Upload Image" />
						</div>
					</div>
					<c:if test="${ !empty product.model }">
					<div class="form-group">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-default">Edit Product</button>
						</div>
					</div>
					</c:if>
					<c:if test="${ empty product.model }">
					<div class="form-group">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-default">Add Product</button>
						</div>
					</div>
					</c:if>
				</form:form>
			</div>
		</div>
	</div>
</div>
<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Products Enlisted</h2>
				<c:if test="${ !empty productList }">
				<table class="table">
					<thead>
						<tr>
							<th>Product Id</th>
							<th>Brand Name</th>
							<th>Model Name</th>
							<th>Category</th>
							<th>Description</th>
							<th>Price (in Rs.)</th>
							<th colspan="2">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="product" items="${ productList }">
						<tr>
							<td>${ product.productId }</td>
							<td>${ product.brand }</td>
							<td>${ product.model }</td>
							<td>${ product.category }</td>
							<td>${ product.description }</td>
							<td>${ product.price }</td>
							<td>
								<a href="<c:url value='/edit/${ product.productId }' />">Edit</a>
							</td>
							<td>
								<a href="<c:url value='/remove/${ product.productId }' />">Delete</a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</c:if>
			</div>
		</div>
	</div>
</div>
</body>
</html>
