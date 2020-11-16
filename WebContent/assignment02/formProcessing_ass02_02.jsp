<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>
<head>
<meta charset="UTF-8">
<title>Assignment 02 - 02</title>
<link rel="Stylesheet" href="css/main.css" type="text/css" />
<link rel="Stylesheet" href="css/ass02_02.css" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	String monitor = request.getParameter("monitor");
	String processor = request.getParameter("processor");
	String[] peripherals = request.getParameterValues("peripherals");
	%>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">
		<img src="images/dog-face.png" width="36" height="36" class="d-inline-block align-top" alt="" loading="lazy"/>
    HOME
  </a>
  <a class="navbar-brand" href="${pageContext.request.contextPath}/about.jsp">ABOUT</a>
  </nav>
	<div>
		<form class="formSubmit" action="ass02_02.jsp" method="post">
			<h3>Order summary</h3>
			<table>
				<tr>
					<td>Processor:</td>
					<td>
						<%
							if (processor != null) {
						%> <%=processor%> <%
							 	if (processor.equals("Celeron D")) {
							 %>
													<br /> <i>Have you considered a more powerful processor?</i> <%
							 	}
							 %>
						<%
							} else {
						%> No processor selected. <%
							}
						%>
					</td>
				</tr>
				<tr>
					<td>Accessories:</td>
					<td>
						<%
							if (monitor != null) {
						%> 		Monitor <br /> <%
						 	}
						 %> <%
						 	try {
							 	for (int i = 0; i < peripherals.length; i++) {
							 %> <%=peripherals[i]%>
													<br /> <%
							 	}
							 } catch (Exception e) {
						 }
						 %>
					</td>
				</tr>
			</table>
			<input type="submit" value="Back" style="text-align: center;" />
		</form>
	</div>
</body>
</html>