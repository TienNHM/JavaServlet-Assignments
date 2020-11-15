<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>Assignment 4 - 2</title>
	<link href="${pageContext.request.contextPath}/assignment03/css/main.css" rel="Stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/assignment03/css/ass03_02.css" rel="Stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>

<body>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="../">
		<img src="https://img.icons8.com/emoji/48/000000/dog-face.png" width="36" height="36" class="d-inline-block align-top" alt="" loading="lazy"/>
    HOME
  </a>
  </nav>
	<div class="bg">
		<form class="formSubmit"
			action="${pageContext.request.contextPath}/form_processing.jsp"
			name="purchaseform" method="post">

			<table style="width: 100%">
				<tr>
					<th colspan="2">
						<h2>Widget Order Form</h2>
					</th>
				</tr>
				<tr>
					<td class="input-label">Number to purchase:</td>
					<td><input type="text" name="quantity" id="quantity" /></td>
				</tr>
				<tr>
					<td class="input-label">Your name:</td>
					<td><input type="text" name="customerName" id="customerName" /></td>
				</tr>
				<tr>
					<td class="input-label">Your email:</td>
					<td><input type="text" name="customerEmail" id="customerEmail" /></td>
				</tr>
			</table>
			<input type="hidden" name="action" value="formSubmit_ass03_02">
			<input type="submit" value="Submit" />
		</form>
	</div>
</body>

</html>