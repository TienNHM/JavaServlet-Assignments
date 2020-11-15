<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta content="text/html; charset=utf-8" />
	<title>Order</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css" type="text/css" /> 
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">
		<img src="https://img.icons8.com/emoji/48/000000/dog-face.png" width="36" height="36" class="d-inline-block align-top" alt="" loading="lazy"/>
    HOME
  </a>
  </nav>
	<div class="container">
		<h1 style="text-align: center; height: 80px; margin-top: 30px;">ORDER INFORMATION</h1>
		<form action="${pageContext.request.contextPath}/assignment05/index.jsp" method=post>
			<div class="input-group mb-2">
				<%
				String quantity = request.getParameter("quantity");
				%>
			  <div class="input-group-prepend">
			    <span class="input-group-text text-light bg-dark">Number to purchase:</span>
			  </div>
			  <input type="text" class="form-control" placeholder="${quantity}" readonly>
			</div>
			<div class="input-group mb-2">
				<%
				String customerName = request.getParameter("customerName");
				%>
			  <div class="input-group-prepend">
			    <span class="input-group-text text-light bg-dark">Name:</span>
			  </div>
			  <input type="text" class="form-control" placeholder="${customerName}" readonly>
			</div>
			<div class="input-group mb-2">
				<%
				String customerPhone = request.getParameter("customerPhone");
				%>
			  <div class="input-group-prepend">
			    <span class="input-group-text text-light bg-dark">Phone:</span>
			  </div>
			  <input type="text" class="form-control" placeholder="${customerPhone}" readonly>
			</div>
			<div class="input-group mb-2">
				<%
				String customerEmail = request.getParameter("customerEmail");
				%>
			  <div class="input-group-prepend">
			    <span class="input-group-text text-light bg-dark">Email:</span>
			  </div>
			  <input type="text" class="form-control" placeholder="${customerEmail}" readonly>
			</div>
			<div class="input-group mb-2">
				<%
				String cardNumber = request.getParameter("cardNumber");
				%>
			  <div class="input-group-prepend">
			    <span class="input-group-text text-light bg-dark">Credit number:</span>
			  </div>
			  <input type="text" class="form-control" placeholder="${cardNumber}" readonly>
			</div>
			<div class="input-group mb-2">
				<%
				String expiration = request.getParameter("expiration");
				%>
			  <div class="input-group-prepend">
			    <span class="input-group-text text-light bg-dark">Expire date:</span>
			  </div>
			  <input type="text" class="form-control" placeholder="${expiration}" readonly>
			</div>
			<div class="input-group mb-2">
				<%
				String processor = request.getParameter("processor");
				%>
			  <div class="input-group-prepend">
			    <span class="input-group-text text-light bg-dark">Processor:</span>
			  </div>
			  <input type="text" class="form-control" placeholder="${processor}" readonly>
			</div>
			<div class="input-group mb-2">
				<%
				String monitor = request.getParameter("monitor");
				%>
			  <div class="input-group-prepend">
			    <span class="input-group-text text-light bg-dark">Monitor</span>
			  </div>
			  <input type="text" class="form-control" placeholder="${monitor}" readonly>
			</div>
			<div class="input-group mb-2">
				<%
				String peripherals = request.getParameter("peripherals");
				%>
			  <div class="input-group-prepend">
			    <span class="input-group-text text-light bg-dark">Peripherals:</span>
			  </div>
			  <input type="text" class="form-control" placeholder="${peripherals}" readonly>
			</div>
			<input style="align: center; margin-left: 45%; margin-top: 20px;" type="Submit" 
				value="OK" name="OK" class="btn btn-primary text-center"/>
		</form>
	</div>
</body>
</html>