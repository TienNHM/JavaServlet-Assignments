<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Assignment 01</title>
	<link type="text/css" rel="Stylesheet" href="main.css">
</head>

<body>
	<div class="bg">
		<form action="index.jsp" class="display formSubmit">
			<p>
				Thank you for your order of
				<%=request.getParameter("quantity")%>
				widgets!
			</p>
			<input type="submit" value="Back" />
		</form>
	</div>
</body>

</html>