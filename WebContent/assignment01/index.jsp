<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Assignment 01</title>
	<link href="main.css" rel="Stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>

<body>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="../">
		<img src="https://img.icons8.com/emoji/48/000000/dog-face.png" width="36" height="36" class="d-inline-block align-top" alt="" loading="lazy"/>
    HOME
  </a>
  </nav>
	<div>
		<form class="formSubmit" action="formProcessing_ass01.jsp" name="purchaseform" method="post">
			<div align="left">Quantity:</div>
			<input type="text" size="50" name="quantity" /> <br /> <input type="submit" value="Submit" />
		</form>
	</div>
</body>
</html>