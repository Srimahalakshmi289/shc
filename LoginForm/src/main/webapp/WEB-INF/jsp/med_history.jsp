
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<style>
.thead h2{
margin: 100px;
}
.table{
table-layout: auto;
background-color:lightgrey;
margin-top:5px;
margin-left: 700px;
height: 325px;
font-size: 1.5em;
padding: 50px;

}
body{
background: linear-gradient(to top left, #ff33cc 0%, #66ccff 98%);
}
.btn{
margin-top: 13px;
size: 1.5em;
border-radius:20px;
background-color: #2dacbd;
padding: 11px;
color: white;
}
nav {
            color:black;
            padding: 15px;
            
        }
         .head h1{
         padding-top:30px;
         margin:0px;
         }
         .head h2{
         padding-top:30px;
         padding_right:30px;
         margin:0px;
         }
        a {
            text-decoration:none;
            color: black;
            font-size: 20px;
            margin: 30px;
        }
        nav a:hover {
		  background-color: aqua;
		  text-decoration: underline;
		}
		
		
		header{
			height:50px;
			background-color:lightgrey;
			width: 93%;
		}
</style>
<script type="text/javascript">
function logout(){
	sessionStorage.clear();
	window.location.href="/";
	 }
</script>
<body>

<header>
	<div class="bkd">
    <div id ="header-container">
    <nav>
        <a href="/pat_prof">Home </a> 
        <a href="/patient_history">Medication History</a> 
        <a href="/patient_make_appt">Make an Appointment</a> 
        </nav>     
         </div><br>
         
     <div  style="text-align: right; margin: -79px;"  id="header-container">
   <button type="submit" class="btn" onclick="logout()">LOGOUT</button>
     
    
    </div>
</header>

		
		<div class="head">

		
		<div>
			<h1>Welcome..<td> <%=rs.getString("p_name") %></td></h1>
		</div>

		
		<div class="table">
		<table>
		<thead><h2>Patient Details</h2></thead>

				<tr><td><b>Patient Name :</b></td><td><%=rs.getString("p_name") %></td></tr>
				<tr><td><b>Patient BloodGroup :</b></td><td><%=rs.getString("p_bg") %></td></tr>
				<tr><td><b>Patient Email :</b></td><td><%=rs.getString("p_email") %></td></tr>
				<tr><td><b>Patient Address :</b></td><td><%=rs.getString("p_city") %></td></tr>
				<tr><td><b>Patient Phone number :</b></td><td><%=rs.getString("p_phonenum") %></td></tr>
				<tr><td><b>Patient Dob :</b></td><td><%=rs.getString("p_dob") %></td></tr>
				<tr><td><b>Gender :</b></td><td><%=rs.getString("p_gender") %></td></tr>
				<tr><td><b>Password :</b></td><td><%=rs.getString("password") %></td></tr>
		</table>
		</div>
			
		<%
			}
			else{
				out.println("Patient not found");
			}
			
		}
	}
	catch(Exception e){
		out.println("The error is: "+e.getMessage());
	}
%>

</div>
</div>
</body>
</html>