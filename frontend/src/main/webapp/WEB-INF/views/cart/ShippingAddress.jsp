<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>:: Welcome To BassettFurniture.com ::</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>



<%--  <%@ include file="Header.jsp"%> --%>
<style>
.form-signup {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}
.form-signup .form-control {
	position: relative;
	height: auto;
	padding: 10px;
	font-size: 16px;
}
</style>
<br>
<br>
<br>
<br>
<div class="container">

	<form:form class="form-signup" commandName="order">
		<h2 style="color: #1E7145">ShippingAddress</h2>
		<form:input type="text" id="user.shippingAddress.line1" path="user.shippingAddress.line1" 
		class="form-control" placeholder="Address Line 1"/>
		<br>
		
		<form:input type="text" id="user.shippingAddress.line2" path="user.shippingAddress.line2"
		 class="form-control" placeholder="Address Line 2"/>
		<br>
		
		<form:input type="text" id="user.shippingAddress.city" path="user.shippingAddress.city" 
		class="form-control" placeholder="City"/>
		<br>
		
	    <form:input type="text" id="user.shippingAddress.state" path="user.shippingAddress.state" 
	    class="form-control" placeholder="State"/>
		<br>
		
		<form:input type="text" id="user.shippingAddress.zipCode" path="user.shippingAddress.zipCode" 
		class="form-control" placeholder="Postal Code"/>
		<br>
		
		<br>
		<form:input type="text" id="user.shippingAddress.mobile" path="user.shippingAddress.mobile" 
		class="form-control" placeholder="Mobile No."/>
		<br>
		
		<input name="_eventId_event1"
		class="btn btn-lg btn-default btn-block button" type="submit"
		value="Confirm">

		</form:form> 
</div>

<br>
<br>
<br>
<br>
<%@ include file="Footer.jsp"%>


















