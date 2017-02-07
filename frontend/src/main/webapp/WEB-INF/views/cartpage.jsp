<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>

<%@ include file="template\Header.jsp"%>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container-fluid">
<c:if test="${!empty items }">
	<div class="row">
		<div class="col-sm-12" style="padding: 0;">
			
				<table class="table">
					<thead>
						<tr>
							<th></th>
							
							<th>Brand</th>
							<th>model</th>
							<th>Pricee</th>
							<th>Item Quantity</th>
							<th>Item Total</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${items}" var="item">
							<tr>
								<td><img src= "resources/images/${item.product.productId}.jpg" 
									style="max-width: 175px; max-height: 100px;" /></td>

								<td style="vertical-align: middle;">${ item.product.brand }</td>
								<td style="vertical-align: middle;">${item.product.model }</td>
								<td style="vertical-align: middle;">${ item.product.price  }</td>
								<td style="vertical-align: middle;">${ item.quantity }</td>
								<td style="vertical-align: middle;">${ item.itemTotal }</td>
								
								<td style="height: 117px; vertical-align: middle;"><a
									href="<c:url value='/cart/remove/${item.itemId}'/>">Remove</a></td>


							</tr>
						</c:forEach>
					</tbody>
				</table>
			
		</div>
		

	</div>
	<div >
		<h4 style="color: #1E7145">Total:${totalprice }</h4>
		<a href='<c:url value='/order' />' class="btn btn-default button">
			Checkout </a>
	</div>
	</c:if>
	<c:if test="${empty items }">
	<div><br><br><br>
	<h1 style="text-align: center;">Please add some items to cart<a href="<c:url value="/" />" style="color:black;"><br> Back </a></h1>
	</div>
	
	
	
	</c:if>
</div>


	<br> 
	
	
	<br>
	
	<br>
	
	
	
	<br>
	
	
	<br>


<%@include file="template\Footer.jsp"%>