<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" /> 
<title>List of Customers</title>
</head>

<body>
<div id="wrapper">
	<div id="header">
		<h2>CRM - Customer Relationship Manager</h2>
	</div>
</div>

<div id="container">
	<div id="content">
		<input type="button" onclick="window.location.href='showFormForAdd'; return false;" class="add-button" value="Add Customer" />
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
			
				<c:forEach var="eachCustomer" items="${customers}">
				
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${eachCustomer.id}" />
					</c:url>
					<c:url var="deleteLink" value="/customer/deleteCustomer">
						<c:param name="customerId" value="${eachCustomer.id}" />
					</c:url>
					<tr>
						<td>${eachCustomer.getFirstName()}</td>
						<td>${eachCustomer.getLastName() }</td>
						<td>${eachCustomer.getEmail() }</td>
						<td><a href="${updateLink}">Update</a>
						 | <a href="${deleteLink}" 
						 	onclick="if(!confirm('Are you sure you want to delete this customer?')) { return false }">Delete</a></td>
					</tr>
				</c:forEach>
		</table>
	</div>
</div>

</body>
</html>