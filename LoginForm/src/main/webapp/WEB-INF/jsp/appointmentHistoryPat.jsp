<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment History</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<style>
body {
	background: url(/resources/images/patients.jpg);
	background-size: cover;
}

h1 {
	text-align: center;
	padding: 10px;
	color: black;
}

.login_container {
	padding: 55px;
	margin-top: -5px;
	background-color: transparent;
	border-radius: 10px;
}

.form-label {
	color: white;
}

nav {
	color: black;
	padding: 15px;
}

nav a:hover {
	background-color: aqua;
	text-decoration: underline;
}

header {
	height: 50px;
	background-color: lightgrey;
}

a {
	text-decoration: none;
	color: black;
	font-size: 20px;
	margin: 30px;
}

.fl-table {
	border-radius: 5px;
	font-size: 20px;
	font-weight: normal;
	border: none;
	border-collapse: collapse;
	width: 100%;
	max-width: 100%;
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
	color: #ffffff;
	background: #4FC3A1;
}

.fl-table thead th:nth-child(odd) {
	color: #ffffff;
	background: #324960;
}

.fl-table tr:nth-child(even) {
	background: #F8F8F8;
}

/* Responsive */
@media ( max-width : 767px) {
	.fl-table {
		display: block;
		width: 100%;
	}
	.table-wrapper:before {
		content: "Scroll horizontally >";
		display: block;
		text-align: right;
		color: white;
		padding: 0 0 10px;
	}
	.fl-table thead, .fl-table tbody, .fl-table thead th {
		display: block;
	}
	.fl-table thead th:last-child {
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
}
</style>
</head>
<body>
	<script type="text/javascript">
		function logout() {
			sessionStorage.clear();
			window.location.href = "/";
		}
	</script>
	<header>
		<div id="header-container">
			<nav>

				<a href="/patient_history">Medication History</a> <a
					href="/patient_make_appt">Make an Appointment</a>
				<div style="text-align: right; margin-top: -38;"
					id="header-container">
					<button type="submit" class="btn " onclick="logout()">LOGOUT</button>
				</div>
				<br>
			</nav>
		</div>
	</header>

	<div align="center">
		<h1>Appointment History</h1>
		<div class="table-wrapper">
			<table class="fl-table">
				<thead>
					<tr>
						<th>Patient Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Date</th>
						<th>Time</th>
						<th>Upload Test Reports</th>
						<th>View Prescriptions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${applistpat}" var="app">
						<tr>

							<td>${app.a_name}</td>
							<td>${app.a_email}</td>
							<td>${app.a_phonenum}</td>
							<td>${app.a_date} </td>
							<td>${app.a_time}</td>
							<td><button>
									<a href="/images/${app.a_id}">Upload Reports</a>
								</button></td>
							<td><button>
									<a href="/viewPres/${app.a_id}">View Prescription</a>
								</button></td>

						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>