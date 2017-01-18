
<%@ include file="template/Header.jsp"%>


<br>

<br>

<br>

<br>

<br>

<br>



<script>
var products=${listproducts};

angular.module("productApp",[]).controller("productController",function($scope){
	
	$scope.prodData=products;

	/* alert($scope.prodData); */
	$scope.sort=function(key){
		$scope.sortKey=key;
		$scope.reverse=!$scope.reverse;
	}
	
});
</script>





 <div class="container-fluid">

 <div class="container" ng-app="productApp" ng-controller="productController">

 
<input type="text" ng-model="search">
	<table class="table table-hover">
		<thead>
			<tr>
				<th></th>
				<th ng-click="sort('productId')">Product ID</th>
				<th ng-click="sort('model')">Product Model</th>
				<th ng-click="sort('brand')">Brand</th>
				<th ng-click="sort('category')">Category</th>
				<th ng-click="sort('price')">Price: Rs.</th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="product in prodData | filter:search | orderBy:sortKey:reverse" style="color: #1E7145">
				<td><img src="resources/images/{{product.productId}}.jpg"
					style="max-width: 175px; max-height: 100px;" /></td>
				<td style="vertical-align: middle;"><b>{{product.productId}}</b></td>
				<td style="vertical-align: middle;"><b>{{product.model}}</b></td>
				<td style="vertical-align: middle;"><b>{{product.brand}}</b></td>
				<td style="vertical-align: middle;"><b>{{product.category}}</b></td>
				<td style="vertical-align: middle;"><b>{{product.price}}</b></td>
				<td style="vertical-align:middle;"><a  class="btn btn-sm button"
						href="<c:url value='/productDetails/{{product.productId}}'/>">View</a></td>
			</tr>
		</tbody>
	</table>
</div>





<br>

<br>

<br>

<br>

<br>


	
<%@ include file="template/Footer.jsp"%>