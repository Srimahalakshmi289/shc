<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<style>
body {
	background: url(/resources/images/app.jpg);
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
</style>
</head>
<body>
	<form action="/saveappointment" method="post"
		modelAttribute="appointment">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="login_container">
					<div class="mb-3">
					<label for="name" class="form-label">Doctor id:${doctor.d_id}</label>
						<input type="hidden" class="form-control" id="did" name="did" value="${doctor.d_id}">
					</div>
					<div class="mb-3">
						<label for="name" class="form-label">patient Id:${pat.p_id}</label> 
						<input type="hidden" class="form-control" id="pid" name="pid" value="${pat.p_id}">
					</div>
					<div class="mb-3">
						<label for="name" class="form-label">Name</label> <input
							type="text" class="form-control" id="a_name" name="a_name">
					</div>

					<div class="mb-3">
						<label for="emailid" class="form-label">Email ID</label> <input
							type="text" class="form-control" id="a_email" name="a_email">
					</div>
					<div class="mb-3">
						<label for="phonenum" class="form-label">Phone Number</label> <input
							type="text" class="form-control" id="a_phonenum"
							name="a_phonenum">
					</div>

					<div class="mb-3">
						<label for="date" class="form-label">Date</label> <input
							type="date" class="form-control" id="a_date" name="a_date">
					</div>
					<div class="mb-3">
						<label for="time" class="form-label">Time</label> <input
							type="time" class="form-control" id="a_time" name="a_time">
					</div>

					<div style="text-align: center;">
						<button type="submit" class="btn btn-primary"
							onclick="appointment()">Make Appointment</button>
					</div>

				</div>
			</div>
			<div class="col"></div>


		</div>
	</form>

</body>
</html>