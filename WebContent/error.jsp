<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Some thing error!</title>
<link type="text/css" rel="Stylesheet" href="main.css" />
</head>
<body>
	<div class="bg">
		<form class="formSubmit"
			action="${pageContext.request.contextPath}/Validate" method="post">
			<p align="center">Something error occurs.</p>
			<input type="hidden" name="action" value="back" />
			<input type="hidden" name="backURL" value="${backURL}" />
			<input type="submit" value="Back" />
		</form>
	</div>
</body>
</html>