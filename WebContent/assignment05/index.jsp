<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
	<meta content="text/html; charset=utf-8" />
	<title>Order</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css" type="text/css" /> 
</head>
<body>
	<%!
		public boolean find(String[] list, String target) {
        if (list == null) {return false;}
        for (int i = 0; i < list.length; i++) {
           if (target.equals(list[i])) {return true;}
           }
        return false;
	   }
	%>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">
		<img src="https://img.icons8.com/emoji/48/000000/dog-face.png" width="36" height="36" class="d-inline-block align-top" alt="" loading="lazy"/>
    HOME
  </a>
	</nav>
	<div class="container">
		<h1 style="text-align: center; height: 80px; margin-top: 30px;">ENTER YOUR INFORMATION</h1>
		<form action="${pageContext.request.contextPath}/assignment05" method=post>
		<div class="form-group">
			<div class="form-group row">
				<%
				String quantity = request.getParameter("quantity");
				if (quantity == null) quantity="1";
				String quantityError = (String)request.getParameter("quantityError");
				if (quantityError==null) quantityError="";
				%>
				<label 	for="quantity" 
						class="row-form-label col-3 text-right">Number to purchase: (at least 1)</label>
				<input	type="number" name="quantity" value="${quantity}"
						class="form-control col-6" required/>
				<span class="align-self-center col-2.75 ml-2 text-danger">* ${quantityError}</span>
			</div>
			<div class="form-group row">
				<%
				String customerName = request.getParameter("customerName");
				if (customerName==null) customerName="";
				String customerNameError = (String)request.getParameter("customerNameError");
				if (customerNameError==null) customerNameError="";
				%>
				<label 	for="customerName" 
						class="row-form-label col-3 text-right">Your name:</label>
				<input 	type="text" name="customerName" value="${customerName}"
						class="form-control col-6" required/>
				<span class="align-self-center col-2.75 ml-2 text-danger">* ${customerNameError}</span>
			</div>
			<div class="form-group row">
				<%
				String customerPhone = (String)request.getParameter("customerPhone");
				if (customerPhone==null) customerPhone="";
				String customerPhoneError = (String)request.getParameter("customerPhoneError");
				if (customerPhoneError==null) customerPhoneError="";
				%>
				<label 	for="customerPhone" 
						class="row-form-label col-3 text-right">
						Your phone: (in format xxx-xxx-xxxx)
				</label>
				<input	type="text" name="customerPhone" value="${customerPhone}"
						class="form-control col-6" required/>
				<span class="align-self-center col-2.75 ml-2 text-danger">* ${customerPhoneError}</span>
			</div>
			<div class="form-group row">
				<%
				String customerEmail = (String)request.getParameter("customerEmail");
				if (customerEmail==null) customerEmail="";
				String customerEmailError = (String)request.getParameter("customerEmailError");
				if (customerEmailError==null) customerEmailError="";
				%>
				<label 	for="customerEmail" 
						class="row-form-label col-3 text-right">Your email:</label>
				<input	type="email" name="customerEmail" value="${customerEmail}"
						class="form-control col-6" />
				<% if (customerEmailError.equals("")) {%>
				<span class="align-self-center col-2.5 ml-2"><em>(Optional) </em>
				<% } else { %>
					<span class="align-self-center col-2.5 ml-2 text-danger">${customerEmailError}</span>
				<% } %>
				</span>
			</div>
			<div class="form-group row">
				<div class="container">
				  <div class="row">
				    <div class="col-md-3 align-self-center text-right">
				      Credit information:
				    </div>
				    <div class="col-md-7">
					    <div class="form-group row">
					    	<% 
					    	String cardNumber = request.getParameter("cardNumber");
								if (cardNumber==null) cardNumber="";
						    	String creditCardNumberError = (String)request.getParameter("creditCardNumberError");
								if (creditCardNumberError==null) creditCardNumberError="";
					    	%>
							<label	for="cardNumber" 
									class="row-form-label col-3 text-right">Number:</label>
							<input	type="number" name="cardNumber" value="${cardNumber}"
									class="form-control col-4" required/>
							<span class="align-self-center col-3.5 ml-2 text-danger">* ${creditCardNumberError}</span>		
						</div>
					    <div class="form-group row">
				    	<%
				    	String cardYear = request.getParameter("ExpirationYear");
				    	if (cardYear == null) cardYear = "2008";
							String cardMonth = request.getParameter("ExpirationMonth");
							if (cardMonth == null) cardMonth = "1";
					    String expireDateError = (String)request.getParameter("expireDateError");
							if (expireDateError==null) expireDateError="";
					    %>
							<label	for="expire-date"
									class="row-form-label col-3 text-right">Expiration date:</label>
							<div class="expire-date" class="form-row">
								<select name='ExpirationMonth'
										class="form-group col-5 custom-select" 
										style="min-width: 100px;">
								    <option value=''>Month</option>
								    <% 
								    	String monthValue = "";
								    	for (int month=1; month<=12;month++) {
								    		monthValue = Integer.toString(month);
								    %>
								    <option value="<%=monthValue%>"
								    	<% if (cardMonth.equals(monthValue)) {%> selected <%}%> > <%=monthValue%>
								    </option>
								    <% } %>
								</select> 
								<select name="ExpirationYear" class="form-group col-5 custom-select" style="min-width: 100px;">
									<option value="">Year</option>
										<%
											String yearValue="";
											for (int year=2008; year<=2050;year++) {
												yearValue = Integer.toString(year);
										%>
								    <option value="<%= yearValue%>"
								    	<% if (cardYear.equals(yearValue)) {%> selected <%}%> > <%= yearValue %>
								    </option>
								    <% } %>
								</select>
							</div>
							<span class="align-self-center col-2.75 ml-2 text-danger">${expireDateError}</span>
						</div>
				    </div>
				  </div>
				</div>
			</div>
			<br/>
			<%  
			String processor = request.getParameter("processor");
			if (processor == null) processor = "Celeron D";
			%>
			<div class="form-group row">
				<div class="col-6">
					<h4 class="text-right">Processor</h4>
					<div class="col-3 ml-auto">
						<input type="radio" name="processor" value="Celeron D" 
							<% if (processor.equals("Celeron D")) { %> checked <% } %>
								> Celeron D<BR> 
						<input type="radio" name="processor" value="Pentium IV"
							<% if (processor.equals("Pentium IV")) { %> checked <% } %>
								> Pentium IV<BR> 
						<input type="radio" name="processor" value="Pentium D"
							<% if (processor.equals("Pentium D")) { %> checked <% } %>
								> Pentium D
					</div>
				</div>
				<div class="col-6">
					<h4>Accessories</h4>
					<%
					String monitor = request.getParameter("monitor");
					String[] peripherals = request.getParameterValues("peripherals");
					%>
					<input type="checkbox" name="monitor"
							<% if (monitor != null) { %> checked <% } %> > Monitor<br> 
					<select name="peripherals" size="3" multiple>
						<option value="Camera" 
							<% if (find(peripherals, "Camera")) { %> SELECTED <% } %>
								>Camera</option>
						<option value="Printer"
							<% if (find(peripherals, "Printer")) { %> SELECTED <% } %>
								>Printer</option>
						<option value="Scanner"
							<% if (find(peripherals, "Scanner")) { %> SELECTED <% } %>
								>Scanner</option>
					</select>
				</div>
			</div>
				<input style="align: center; margin-left: 45%;" type="Submit" 
				value="Configure" name="configure" class="btn btn-secondary text-center"/>
			</div>
		</form>
	</div>
</body>
</html>