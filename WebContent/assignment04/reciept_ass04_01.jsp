<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Assignment 4 - 1</title>
	<link type="text/css" rel="Stylesheet" href="${pageContext.request.contextPath}/assignment04/css/main.css">
	<link href="${pageContext.request.contextPath}/assignment04/css/ass04_01.css" rel="Stylesheet" type="text/css">
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
	<div class="bg">
		<form action="${pageContext.request.contextPath}/form_processing.jsp"
			class="display formSubmit" method="post">
			<p align="center">
				Thank you for your order of
				<%=request.getParameter("quantity")%>
				widgets!
			</p>
			<input type="hidden" name="action" value="back_ass04_01" /> <input
				type="submit" value="Back" />
		</form>
	</div>
</body>

</html>