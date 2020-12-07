<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Assignment 4 - 3</title>
	<link href="${pageContext.request.contextPath}/assignment04/css/main.css" rel="Stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/assignment04/css/ass04_03.css" rel="Stylesheet" type="text/css">
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
		<form class="formSubmit"
			action="${pageContext.request.contextPath}/form_processing.jsp" method="post">
			<h3>Order summary</h3>
			<table>
				<tr>
					<td>Processor:</td>
					<td>
						${processor}
					</td>
				</tr>
				<tr>
					<td>Accessories:</td>
					<td>
						${accessories}
					</td>
				</tr>
			</table>
			<input type="hidden" name="action" value ="back_ass04_03"/>
			<input type="submit" value="Back" style="text-align: center;"/>
		</form>
	</div>
</body>
</html>