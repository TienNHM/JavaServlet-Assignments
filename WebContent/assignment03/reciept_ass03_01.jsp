<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Assignment 3 - 1</title>
	<link type="text/css" rel="Stylesheet" href="${pageContext.request.contextPath}/assignment03/css/main.css">
	<link href="${pageContext.request.contextPath}/assignment03/css/ass03_01.css" rel="Stylesheet" type="text/css">
</head>

<body>
	<div class="bg">
		<form action="${pageContext.request.contextPath}/Validate" class="display formSubmit">
			<p>
				Thank you for your order of
				<%=request.getParameter("quantity")%>
				widgets!
			</p>
			<input type="hidden" name="action" value="back_ass03_01" />
			<input type="submit" value="Back" />
		</form>
	</div>
</body>

</html>