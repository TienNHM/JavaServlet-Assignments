<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Assignment 02 - 01</title>
	<link href="main.css" rel="Stylesheet" type="text/css">
	<link href="ass02_01.css" rel="Stylesheet" type="text/css">
</head>

<body>
	<div class="bg">
		<form class="formSubmit" action="formProcessing_ass02_01.jsp" name="purchaseform" method="post">

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
					<td><input type="text" name="customername" id="customername" /></td>
				</tr>
				<tr>
					<td class="input-label">Your email:</td>
					<td><input type="text" name="customerEmail" id="customerEmail" /></td>
				</tr>
			</table>
			<input type="submit" value="Submit" />
		</form>
	</div>
</body>

</html>