<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<style>
.head{
color: purple;
padding-left: 100px;
}

.table{
table-layout: auto;
background-color:lightgrey;
margin-right: 700px;
height: 250px;
font-size: 1.5em;
padding: 50px;

}

.btn_btn-primary{
margin:30px;
padding:10px;
}
</style>
<body>
<%-- <% 
	String EmailId=request.getParameter("emailId");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthealthcare","root","root");
		if(!con.isClosed()){
			PreparedStatement ps=con.prepareStatement("select * from patient_registration where p_email='"+EmailId+"'");
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
		%> --%>
		<div class="head">
		
		<h2>Patient Personal Details</h2>
		</div>
		
		<div class="table">
		 <table> 

				
				

	
		<tr><td><b>Patient Name :</b></td><td>${pat.p_name}</td></tr>
		<tr><td><b>Patient BloodGroup :</b></td><td>${pat.p_bg}</td></tr>
		<tr><td><b>Patient Email :</b></td><td>${pat.pEmail}</td></tr>
		<tr><td><b>Patient City:</b></td><td>${pat.p_city}</td></tr>
		<tr><td><b>Patient Phone number :</b></td><td>${pat.p_phonenum}</td></tr>
		<tr><td><b>Patient Dob :</b></td><td>${pat.p_dob}</td></tr>
		<tr><td><b>Gender :</b></td><td>${pat.p_gender}</td></tr>
	 
	    			
		</table>
	
		</div>
		
			

	<div style="text-align: left;">
	 <button type="submit" class="btn_btn-primary" onclick="">View Medication History</button>
	</div>
	
	<div style="text-align: left;">
	 <button type="submit" class="btn_btn-primary" onclick="">Write Prescription</button>
	</div>


</body>
</html>