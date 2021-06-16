<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<!DOCTYPE html>
<html>
<title>patient</title>
<head>
    <style>
        nav {
            color:black;
            padding: 15px;
            
        }
         h2{
         	color: blue;
         }
        a {
            text-decoration:none;
            color: black;
            font-size: 20px;
            margin: 30px;
        }
        nav a:hover {
		  background-color: aqua;
		}
		
		body{
			background: url(/resources/images/admin.jpg);
			background-size: cover;
		}
		header{
			height:50px;
			background-color:lightgrey;
		}
		.table-wrapper{
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
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
</head>
 
<body>
    <header>
    <div id ="header-container">
    <nav>
        <a href="/admin">Home</a>  
        <a href="/">My Profile</a>  
        <a href="/patient_make_appt">Book an Appointment</a> 
        <a href="/patient_history">Medication History</a> 
    </nav>
    </div>
    </header>
    
<h2 align="center"><font><strong>Doctor's List</strong></font></h2>
sessionStorage.setItem("p_email");
<div class="table-wrapper">
<table class="fl-table">

<thead>
<tr>
<th><b>S.No</b></th>
<th><b>Name</b></th>
<th><b>Password</b></th>
<th><b>BloodGroup</b></th>
<th><b>Email Id</b></th>
<th><b>City</b></th>
<th><b>Phone number</b></th>
<th><b>DOB</b></th>
<th><b>Gender</b></th>
<th><b>Edit</b></th>
</tr>
</thead>

<tbody style="font-size: 15px;">

                <c:forEach items="${patientList}" var="patient"> 	
					<tr>
						<td>${patient.p_id}</td>
						<td>${patient.p_name}</td>
						<td>${patient.password}</td>
						<td>${patient.p_bg}</td>
						<td>${patient.p_email}</td>
						<td>${patient.p_city}</td>
						<td>${patient.p_phonenum}</td>
						<td>${patient.p_dob}</td>
						<td>${patient.p_gender}</td>
						<td><a href="editPatient/${patient.p_email}">Edit</a></td>
					</tr>
				</c:forEach>
</tbody>

</table>
</div>

</body>

 
</html>