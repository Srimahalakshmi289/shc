<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<table border=1px>
			<thead>
				<tr>
					<th>Appointment Id</th>
					<th>Date of Appointment</th>
					<th>patient Name</th>
					<th>Patient Email</th>
					<th>Patient Phone</th>
					<!-- <th>patient Age</th>
					<th>Issue Description</th> -->

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${appList}" var="app">
					<tr>
						<td>${app.a_id}</td>
						<td>${app.a_date}</td>
						<td>${app.a_name}</td>
						<td>${app.a_email}</td>
						<td>${app.a_phonenum}</td>
					<%-- 	<td>${app.age}</td>
						<td>${app.description}</td> --%>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>