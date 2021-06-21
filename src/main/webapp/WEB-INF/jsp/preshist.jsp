<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="<c:url value="resources/admin/admin.css" />"
	rel="stylesheet">
<script src="<c:url value="resources/admin/admin.js" />"></script>
<title>View Appointments</title>
</head>
<style>
.fl-table {
    border-radius: 5px;
    font-size: 15px;
    font-weight: normal;
    border: solid 2px black;
    border-collapse: collapse;
    width: 70%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
   
}

.fl-table thead th {
    color:  #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color:  #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
       
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
       
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
</style>
<body>
	<div align="center" class="tablet">
		<h1>Prescription History</h1>
		<p align="center"><p align="center">
			<font color="red">${msg}</font>
		</p></p>

		<div class="table-wrapper">
<table class="fl-table">

			<thead>
				<tr>
					<th>Patient Details</th>
					<th>Medicine</th>
					<th>FN-B</th>
					<th>FN-A</th>
					<th>AN-B</th>
					<th>AN-A</th>
					<th>NT-B</th>
					<th>NT-A</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${presHist}" var="pres">
					<tr>
						<td>Appointment Id: ${pres.aid} <br>
						Date of Appointment:${pres.date} <br>
						patient Name: ${pres.name} <br> 
						</td>
						<td>${pres.medicines}</td>
						<td>${pres.fnb}</td>
						<td>${pres.fna}</td>
						<td>${pres.anb}</td>
						<td>${pres.ana}</td>
						<td>${pres.ntb}</td>
						<td>${pres.nta}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>