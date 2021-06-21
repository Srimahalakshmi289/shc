<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<style>
body{
background-image: url("/resources/images/hello.jpg");
}
.head{
color: white;
font-size: 2em;
padding-left: 450px;
}

.table{
color:white;
table-layout: auto;
height: 250px;
font-size: 1.5em;
padding-left:500px;
padding-top: 100px;
}

.btn_btn-primary{
margin:30px;
padding:10px;
}
</style>
<body>

		<div class="head">
		
		<h2>Patient Personal Details</h2>
		</div>
		
		<div>
		   <table class="table">
		

				
				

	
		<tr><td><b>Patient Name :</b></td><td>${pat.p_name}</td></tr>
		<tr><td><b>Patient BloodGroup :</b></td><td>${pat.p_bg}</td></tr>
		<tr><td><b>Patient Email :</b></td><td>${pat.pEmail}</td></tr>
		<tr><td><b>Patient City:</b></td><td>${pat.p_city}</td></tr>
		<tr><td><b>Patient Phone number :</b></td><td>${pat.p_phonenum}</td></tr>
		<tr><td><b>Patient Dob :</b></td><td>${pat.p_dob}</td></tr>
		<tr><td><b>Gender :</b></td><td>${pat.p_gender}</td></tr>
	 
		</table>

		</div>
		
			

	<!-- <div style="text-align: left;">
	 <button type="submit" class="btn_btn-primary" onclick="">View Medication History</button>
	</div>
	
	<div style="text-align: left;">
	 <button type="submit" class="btn_btn-primary" onclick="">Write Prescription</button>
	</div>
 -->

</body>
</html>