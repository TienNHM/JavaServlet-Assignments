<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCtype html>
<html>
<head>
<meta charset="UTF-8">
<title>Assignment 02 - 02</title>
<link rel="Stylesheet" href="main.css" type="text/css" />
<link rel="Stylesheet" href="ass02_02.css" type="text/css" />
</head>
<body>
	<%
		String monitor = request.getParameter("monitor");
		String processor = request.getParameter("processor");
		String[] peripherals = request.getParameterValues("peripherals");
	%>
	<div class="bg">
		<form class="formSubmit" action="ass02_02.jsp" method="post">
			<h3>Order summary:</h3>
			<table>
				<tr>
					<td>Processor:</td>
					<td>
						<% if (processor != null) { %>
							<%=processor%>
							<% if (processor.equals("Celeron D")) { %> <br /> 
							<i>Have you considered a more powerful processor?</i>
							<% } %>
						<% } else { %>
							No processor selected.
						<% } %>
					</td>
				</tr>
				<tr>
					<td>Accessories:</td>
					<td>
						<% if (monitor != null) {%>
								Monitor <br />
						<% } %>
						
						<% for (int i = 0; i < peripherals.length; i++) { %>
         					<%= peripherals[i] %> <br />
  						<% } %>
					</td>
				</tr>
			</table>
			<input type="submit" value="Back" style="text-align: center;"/>
		</form>
	</div>
</body>
</html>