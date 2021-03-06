<%@page import="java.sql.*"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<title>doctor</title>

<head>
<style>
.table {
	font-size: 1.5em;
	padding-top: 200px;
	padding-left: 900px;
}

.head h2 {
	padding-top: 30px;
	padding_right: 30px;
	margin: 0px;
}

@import
	url('https://fonts.googleapis.com/css?family=Encode+Sans+Condensed:400,600')
	;

* {
	outline: none;
}

strong {
	font-weight: 600;
}

.page {
	width: 100%;
	height: 100vh;
	font-family: 'Montserrat', sans-serif;
	font-weight: 600;
	letter-spacing: .06em;
	color: #212121;
	background: url(resources/images/medical.jpg);
	background-size: 1800px 900px;
	background-repeat: no-repeat;
}

header {
	display: flex;
	position: fixed;
	width: 100%;
	height: 70px;
	background: #875de5;
	color: #fff;
	justify-content: center;
	align-items: center;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

main {
	padding: 70px 20px 0;
	display: flex;
	flex-direction: column;
	height: 100%;
}

main>div {
	margin: auto;
	max-width: 600px;
}

main h2 span {
	color: #BF7497;
}

main p {
	line-height: 1.5;
	font-weight: 200;
	margin: 20px 0;
}

main small {
	font-weight: 300;
	color: #888;
}

#nav-container {
	position: fixed;
	height: 100vh;
	width: 100%;
	pointer-events: none;
}

#nav-container .bg {
	position: absolute;
	top: 70px;
	left: 0;
	width: 100%;
	height: calc(100% - 70px);
	visibility: hidden;
	opacity: 0;
	transition: .3s;
	background: #000;
}

#nav-container:focus-within .bg {
	visibility: visible;
	opacity: .6;
}

#nav-container * {
	visibility: visible;
}

.button {
	position: relative;
	display: flex;
	flex-direction: column;
	justify-content: center;
	z-index: 1;
	-webkit-appearance: none;
	border: 0;
	background: transparent;
	border-radius: 0;
	height: 70px;
	width: 30px;
	cursor: pointer;
	pointer-events: auto;
	margin-left: 25px;
	touch-action: manipulation;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.icon-bar {
	display: block;
	width: 100%;
	height: 3px;
	background: #aaa;
	transition: .3s;
}

.icon-bar+.icon-bar {
	margin-top: 5px;
}

#nav-container:focus-within .button {
	pointer-events: none;
}

#nav-container:focus-within .icon-bar:nth-of-type(1) {
	transform: translate3d(0, 8px, 0) rotate(45deg);
}

#nav-container:focus-within .icon-bar:nth-of-type(2) {
	opacity: 0;
}

#nav-container:focus-within .icon-bar:nth-of-type(3) {
	transform: translate3d(0, -8px, 0) rotate(-45deg);
}

#nav-content {
	margin-top: 70px;
	padding: 20px;
	width: 90%;
	max-width: 300px;
	position: absolute;
	top: 0;
	left: 0;
	height: calc(100% - 70px);
	background: #ececec;
	pointer-events: auto;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	transform: translateX(-100%);
	transition: transform .3s;
	will-change: transform;
	contain: paint;
}

#nav-content ul {
	height: 100%;
	display: flex;
	flex-direction: column;
}

#nav-content li a {
	padding: 10px 5px;
	display: block;
	text-transform: uppercase;
	transition: color .1s;
}

#nav-content li a:hover {
	color: #BF7497;
}

#nav-content li:not(.small)+.small {
	margin-top: auto;
}

.small {
	display: flex;
	align-self: center;
}

.small a {
	font-size: 12px;
	font-weight: 400;
	color: #888;
}

.small a+a {
	margin-left: 15px;
}

#nav-container:focus-within #nav-content {
	transform: none;
}

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

html, body {
	height: 100%;
}

a, a:visited, a:focus, a:active, a:link {
	text-decoration: none;
	outline: 0;
}

a {
	color: currentColor;
	transition: .2s ease-in-out;
}

h1, h2, h3, h4 {
	padding: 20px;
}

ul {
	padding: 0;
	list-style: none;
}
</style>
</head>
<script type="text/javascript">
	function logout() {
		sessionStorage.clear();
		window.location.href = "/";
	}
</script>
<body>
	<%-- <header>
    <div id ="header-container">
    <nav>
        <a href="/doctor">Home </a>  
        <a href="/search_patient">Patient Search</a> 
        <a href="/doc_appt_requests">My Appointments</a>  
        <div  style="text-align: right;margin-top:-38; "  id="header-container">
   <button type="submit" class="btn " onclick="logout()">LOGOUT</button>
         </div><br>

    </nav>
    </div>
    </header>
	
	<% 
	String EmailId=request.getParameter("email");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthealthcare","root","root");
		if(!con.isClosed()){
			PreparedStatement ps=con.prepareStatement("select * from doctor_registration where d_email='"+EmailId+"'");
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
		%>
		
		
		<div class="head">

		
		<div>
			<h1>Welcome.. <%=rs.getString("d_name") %></h1>
		</div>

		
		<div class="table">
		<table>
		<thead><h2>Personal Details</h2></thead>

				<tr><td><b>Name :</b></td><td><%=rs.getString("d_name") %></td></tr>
				<tr><td><b>BloodGroup :</b></td><td><%=rs.getString("d_bg") %></td></tr>
				<tr><td><b>Email Id:</b></td><td><%=rs.getString("d_email") %></td></tr>
				<tr><td><b>Address :</b></td><td><%=rs.getString("d_city") %></td></tr>
				<tr><td><b>Phone number :</b></td><td><%=rs.getString("d_phonenum") %></td></tr>
				<tr><td><b>Dob :</b></td><td><%=rs.getString("d_dob") %></td></tr>
				<tr><td><b>Gender :</b></td><td><%=rs.getString("d_gender") %></td></tr>
				<tr><td><b>Department :</b></td><td><%=rs.getString("department") %></td></tr>
				<tr><td><b>Password :</b></td><td><%=rs.getString("password") %></td></tr>
		</table>
		</div>
		<%
			}
			
		}
	}
	catch(Exception e){
		out.println("The error is: "+e.getMessage());
	}%>
</div> --%>

	<div class="page">
		<header tabindex="0">
			<h2>Doctor</h2>
		</header>
		<div id="nav-container">
			<div class="bg"></div>
			<div class="button" tabindex="0">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</div>
			<div id="nav-content" tabindex="0">
				<ul>
					<li><a href="doctorHome">Home</a></li>
					<li><a href="doctor">Doctor profile</a></li>
					<li><a href="search_patient">Search patient</a></li>
					<li><a href="appReq/${doc.d_id} ">Appointment list</a></li>
					<li><a href="doc_appt_requests/${doc.d_id} ">Appointment History</a></li>

					<li><a href="home">Logout</a></li>

				</ul>
			</div>
		</div>
		<div>

			<div class="table">
				<h2>Doctor Details</h2>
				<table>
					<thead></thead>

					<tr>
						<td><b>Name :</b></td>
						<td>${doc.d_name}</td>
					</tr>
					<tr>
						<td><b>BloodGroup :</b></td>
						<td>${doc.d_bg}</td>
					</tr>
					<tr>
						<td><b>Email Id:</b></td>
						<td>${doc.dEmail}</td>
					</tr>
					<tr>
						<td><b>Address :</b></td>
						<td>${doc.d_city}</td>
					</tr>
					<tr>
						<td><b>Phone number :</b></td>
						<td>${doc.d_phonenum}</td>
					</tr>
					<tr>
						<td><b>Dob :</b></td>
						<td>${doc.d_dob}</td>
					</tr>
					<tr>
						<td><b>Gender :</b></td>
						<td>${doc.d_gender}</td>
					</tr>
					<tr>
						<td><b>Department :</b></td>
						<td>${doc.department}</td>
					</tr>
					<tr>
						<td><b>Password :</b></td>
						<td>${doc.password}</td>
					</tr>

				</table>

			</div>
		</div>
	</div>

</body>

</html>