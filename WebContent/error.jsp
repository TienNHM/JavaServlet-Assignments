<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Some thing error!</title>
	<link type="text/css" rel="Stylesheet" href="styles/main.css" />
	<link rel="Stylesheet" href="styles/bootstrap.min.css" type="text/css" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="index.jsp">
		<img src="images/dog-face.png" width="36" height="36" class="d-inline-block align-top" alt="" loading="lazy"/>
    HOME
  </a>
  <a class="navbar-brand" href="${pageContext.request.contextPath}/about.jsp">ABOUT</a>
  </nav>
	<div>
		<form class="formSubmit"
			action="${pageContext.request.contextPath}/form_processing.jsp" method="post">
			<p align="center">Something error occurs.</p>
			<input type="hidden" name="action" value="back" />
			<input type="hidden" name="backURL" value="${backURL}" />
			<input type="submit" value="Back" />
		</form>
	</div>
</body>
</html>