<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>Assignment 3 - 2</title>
<link href="${pageContext.request.contextPath}/assignment03/css/main.css" rel="Stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assignment03/css/ass03_02.css" rel="Stylesheet" type="text/css">
</head>

<body>
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