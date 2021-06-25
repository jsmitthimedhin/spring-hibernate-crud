<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
<title>Add Customer</title>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<h2>CRM - Customer Relationship Manager</h2>
	</div>
</div>

<div id="container">
	<h3>Add Customer</h3>
	<form:form action="saveCustomer" modelAttribute="customer" method="POST">
	<form:hidden path="id" />
			First name: <form:input path="firstName" required="required" />
			<br><br>
			Last name: <form:input path="lastName" required="required"/>
			<br><br>
			Email: <form:input path="email" required="required"/>
			<br><br>
			<input type="submit" value="Submit" class="save"/>
	</form:form>
	<br><br>
	<a href="${pageContext.request.contextPath}/customer/list">Back to main menu</a>
</div>
</body>
</html>