<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Assignment 3 - 3</title>
	<link href="${pageContext.request.contextPath}/assignment03/css/main.css" rel="Stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/assignment03/css/ass03_03.css" rel="Stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">
		<img src="https://img.icons8.com/emoji/48/000000/dog-face.png" width="36" height="36" class="d-inline-block align-top" alt="" loading="lazy"/>
    HOME
  </a>
  </nav>
	<div>
		<form class="formSubmit"
			action="${pageContext.request.contextPath}/form_processing.jsp" method="post">
			<h3>Order summary:</h3>
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
			<input type="hidden" name="action" value ="back_ass03_03"/>
			<input type="submit" value="Back" style="text-align: center;"/>
		</form>
	</div>
</body>
</html>