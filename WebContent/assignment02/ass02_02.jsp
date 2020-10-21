<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Assignment 02 - 02</title>
	<link rel="Stylesheet" href="css/main.css" type="text/css" />
	<link rel="Stylesheet" href="css/ass02_02.css" type="text/css" />
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
		<form class="formSubmit" action="formProcessing_ass02_02.jsp" method="post">
			<div class="row">
				<div class="column">
					<h3>Processor</h3>
					<div>
						<input type="radio" name="processor" value="Celeron D">Celeron D<BR>
						<input type="radio" name="processor" value="Pentium IV"> Pentium IV<BR>
						<input type="radio" name="processor" value="Pentium D"> Pentium D
					</div>
				</div>
				<div class="column">
					<h3>Accessories</h3>
					<input type="checkbox" name="monitor">Monitor<br>
					<select name="peripherals" size="3" multiple>
						<option value="Camera">Camera</option>
						<option value="Printer">Printer</option>
						<option value="Scanner">Scanner</option>
					</select>
				</div>
			</div>
			<input type="submit" value="PURCHASE" />
		</form>
	</div>
</body>

</html>