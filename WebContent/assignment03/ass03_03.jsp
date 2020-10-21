<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Assignment 02 - 02</title>
<link rel="Stylesheet" href="main.css" type="text/css" />
<link rel="Stylesheet" href="ass03_03.css" type="text/css" />
<style type="text/css">
table {
	width: 100%;
}

td {
	top: 50%;
	left: 50%;
	display: absolute;
}
</style>
</head>

<body>
	<div class="bg">
		<form class="formSubmit"
			action="${pageContext.request.contextPath}/Validate" method="post">

			<div class="row">
				<div class="column">
					<h3>Processor</h3>
					<div>
						<input type="radio" name="processor" value="Celeron D">Celeron
						D<BR> <input type="radio" name="processor" value="Pentium IV">
						Pentium IV<BR> <input type="radio" name="processor"
							value="Pentium D"> Pentium D
					</div>
				</div>
				<div class="column">
					<h3>Accessories</h3>
					<input type="checkbox" name="monitor">Monitor<br> <select
						name="peripherals" size="3" multiple>
						<option value="Camera">Camera</option>
						<option value="Printer">Printer</option>
						<option value="Scanner">Scanner</option>
					</select>
				</div>
			</div>
			<input type="hidden" name="action" value="formSubmit_ass03_03" /> <input
				type="submit" value="PURCHASE" />
		</form>
	</div>
</body>

</html>