<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
<meta charset="UTF-8">
<title>Assignment 02 - 01</title>
<link href="main.css" rel="Stylesheet" type="text/css">
<link href="ass03_02.css" rel="Stylesheet" type="text/css">
</head>

<body>
	<div class="bg">
		<form class="formSubmit"
			action="${pageContext.request.contextPath}/Validate"
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