<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Assignment 02 - 01</title>
	<link href="css/main.css" rel="Stylesheet" type="text/css">
	<link href="css/ass02_02.css" rel="Stylesheet" type="text/css">
</head>

<body>
	<div class="bg">
		<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("customername");
		String email = request.getParameter("customerEmail");
		String quantity = request.getParameter("quantity");
		double pricePerUnit = 9.95;
		int quantityNumber = Integer.parseInt(quantity);
		double totalCost = pricePerUnit * quantityNumber;
		%>

		<form action="ass02_01.jsp" class="display formSubmit">
			<h2 style="text-align: center">Order Confirmation</h2>
			<p>
				Thank you for your order of
				<%=quantity%>
				widgets,
				<%=name%>.
			</p>
			<p>
				At $<%=pricePerUnit%>, your bill will be $<%=totalCost%>.
			</p>
			<p>
				You will shortly recieve an email confirmation at
				<%=email%>.
			</p>

			<input type="submit" value="Back" />
		</form>
	</div>
</body>

</html>