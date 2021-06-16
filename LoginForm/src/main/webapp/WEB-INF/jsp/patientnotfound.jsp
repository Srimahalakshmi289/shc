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
			${msg}

	<div style="text-align: left;">
	 <button type="submit" class="btn_btn-primary" onclick="">View Medication History</button>
	</div>
	
	<div style="text-align: left;">
	 <button type="submit" class="btn_btn-primary" onclick="">Write Prescription</button>
	</div>


</body>
</html>