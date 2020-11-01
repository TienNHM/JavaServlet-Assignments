<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
<meta charset="UTF-8">
<title>Assignment 3 - 1</title>
<link href="${pageContext.request.contextPath}/assignment03/css/main.css" rel="Stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assignment03/css/ass03_01.css" rel="Stylesheet" type="text/css">
</head>

<body>
	<div class="bg">
		<form class="formSubmit"
			action="${pageContext.request.contextPath}/form_processing.jsp"
			name="purchaseform" method="post">
			
			<div align="left">Quantity:</div>
			<input type="text" size="50" name="quantity" /> <br /> 
			<input type="hidden" name="action" value="formSubmit_ass03_01" />
			<input
				type="submit" value="Submit" />
		</form>
	</div>
</body>

</html>