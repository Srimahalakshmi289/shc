<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<style>
        .head h2{
         padding:20px;
       
         margin:0px;
         }
@import url('https://fonts.googleapis.com/css?family=Encode+Sans+Condensed:400,600');

* {
  outline: none;
}

strong {
  font-weight: 600;
}

.page {
  width: 100%;
  height: 100vh;
 font-family: 'Montserrat',sans-serif;
  font-weight: 600;
  letter-spacing: .06em;
  color: #212121;
  background-image: url(/resources/images/five.jpg);
  background-size: 1800px 900px;
  background-repeat:no-repeat;
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
  -webkit-tap-highlight-color: rgba(0,0,0,0);
}

main {
  padding: 70px 20px 0;
  display: flex;
  flex-direction: column;
  height: 100%;
}

main > div {
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
  -webkit-tap-highlight-color: rgba(0,0,0,0);
}
.icon-bar {
  display: block;
  width: 100%;
  height: 3px;
  background: #aaa;
  transition: .3s;
}
.icon-bar + .icon-bar {
  margin-top: 5px;
}

#nav-container:focus-within .button {
  pointer-events: none;
}
#nav-container:focus-within .icon-bar:nth-of-type(1) {
  transform: translate3d(0,8px,0) rotate(45deg);
}
#nav-container:focus-within .icon-bar:nth-of-type(2) {
  opacity: 0;
}
#nav-container:focus-within .icon-bar:nth-of-type(3) {
  transform: translate3d(0,-8px,0) rotate(-45deg);
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
  -webkit-tap-highlight-color: rgba(0,0,0,0);
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

#nav-content li:not(.small) + .small {
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
.small a + a {
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

a,
a:visited,
a:focus,
a:active,
a:link {
  text-decoration: none;
  outline: 0;
}

a {
  color: currentColor;
  transition: .2s ease-in-out;
}

h1, h2, h3, h4 {
  padding-top:100px;
  padding-bottom:30px;
}

ul {
  padding: 0;
  list-style: none;
}
		button.abc{
		background-color:lightgreen;
		
		}
		button.def{
		background-color:#f54251;
		}
		.fl-table {
    border-radius: 5px;
    font-size: 15px;
    font-weight: normal;
    border: none;
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
        padding-top:100px ;
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
	

.table thead, .table tbody, .table thead th {
        display: block;
    }
    
 
    </style>
</head>
 <script type="text/javascript">
function logout(){
	sessionStorage.clear();
	window.location.href="/";
	 }
</script>
<body>
    <div class="page">
    <div class="head">
  <header tabindex="0"><h2>Doctor</h2></header>
  </div>
  <div id="nav-container">
    <div class="bg"></div>
    <div class="button" tabindex="0">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </div>
    <div id="nav-content" tabindex="0">
      <ul>
        <li><a href="/doctorHome">Home</a></li>
        <li><a href="/doctor">Doctor profile</a></li>
        <li><a href="/search_patient">Search patient</a></li>
         <li><a href="/appReq/${doc.d_id}">Appointment list</a></li>
         <li><a href="/doc_appt_requests/${doc.d_id} ">Appointment History</a></li>
        <li><a href="/home">Logout</a></li>
        
      </ul>
      
      
    </div>
  </div>
    
<h2 align="center"><font><strong>Appointment Requests</strong></font></h2>
<div class="table-wrapper">

<div class="tab" align="center" >
		<div class="table-wrapper">
		<table class="fl-table">
			<thead>
				<tr>
					<th>Appointment Id</th>
					<th>Date of Appointment</th>
					<th>patient Name</th>
					<th>Patient Email</th>
					<th>Patient Phone</th>
					<th>Reports</th>
					<th>Prescribe</th>
					<th>Prescription History</th>
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
						<td><a href="/download/${app.a_id}">Download reports</a></td>
						<td><a href="/prescribe/${app.a_id}">Prescribe</a></td>
						<td>
							<a href="/presHist/${app.a_id}">Prescription History</a>
						</td>
						
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	</div>
	</div>

</body>

 
</html>