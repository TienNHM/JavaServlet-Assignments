<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>Assignment 3 - 2</title>
	<link href="${pageContext.request.contextPath}/assignment03/css/main.css" rel="Stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/assignment03/css/ass03_02.css" rel="Stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>

<body>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">
		<img src="images/dog-face.png" width="36" height="36" class="d-inline-block align-top" alt="" loading="lazy"/>
    HOME
  </a>
  <a class="navbar-brand" href="${pageContext.request.contextPath}/about.jsp">ABOUT</a>
  </nav>
	<div>
		<%
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");	
		String name = request.getParameter("customerName");
		String email = request.getParameter("customerEmail");
		String quantity = request.getParameter("quantity");
		
		double pricePerUnit = 9.95;
		int quantityNumber = Integer.parseInt(quantity);
		double totalCost = pricePerUnit * quantityNumber;
		%>

		<form action="${pageContext.request.contextPath}/form_processing.jsp"
			class="display formSubmit" method="post">
			<h2 style="text-align: center">Order Confirmation</h2>
			<p>
				Thank you for your order of <%=quantity%> widgets, <%=name%>.
			</p>
			<p>
				At $<%=pricePerUnit%>, your bill will be $<%=totalCost%>.
			</p>
			<p>
				You will shortly recieve an email confirmation at <%=email%>.
			</p>
			<input type="hidden" name="action" value="back_ass03_02" /> 
			<input type="submit" value="Back" />
		</form>
	</div>
</body>

</html>