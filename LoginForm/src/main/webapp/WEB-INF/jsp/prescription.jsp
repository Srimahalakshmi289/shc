<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>prescription</title>
</head>
<style>
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
  
  font-family: 'Montserrat', sans-serif; 
  font-weight: 600;
  letter-spacing: .06em;
  color: #212121;
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
 h3 {
 padding-top:150px;
 padding-left:80px;
 padding-bottom:30px;
  text-align:center;
}
h1{
padding-top:150px;
padding-left:700px;
font-family: serif;
}
ul {
  padding: 0;
  list-style: none;
}
.medicine{

text-align: left;
padding-left:500px;
}

div{
text-align:center;
display: block;
}
table{
width: 60%;
  border-collapse: collapse;
}
.submit{
margin-top:20px;
margin-right:450px;

padding:4px;
}
</style>
<body>
<div class="page">
  <header tabindex="0"><h2>Doctor</h2></header>
 
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
  	<h3>Give Prescription</h3>
		<div class="medicine">
		<form:form action="/savepres" method="post" modelAttribute="pres">
			
			<table>
				<tr>
				<th>Date</th><td><form:input   path="date" type="date" align="center" placeholder="Date & Time" /></td>
				</tr>
				<tr>
				<th>Medicine</th><td><form:input path="medicines" align="center" placeholder="medicine Name" /></td>
				</tr>
				<tr>
				<th>Forenoon-Before(FN-B)</th><td><form:input path="fnb" align="center" placeholder="dose" /></td>
				</tr>
				<tr>
				<th>Forenoon-After(FN-A)</th><td><form:input path="fna" align="center" placeholder="dose" /></td>
				</tr>
				<tr>
				<th>Afternoon-Before(AN-B)</th><td><form:input path="anb" align="center" placeholder="dose" /></td>
				</tr>
				<tr>
				<th>Afternoon-After(AN-A)</th><td><form:input path="ana" align="center" placeholder="dose" /></td>
				</tr>
				<tr>
				<th>Night-Before(NT-B)</th><td><form:input path="ntb" align="center" placeholder="dose" /></td>
				</tr>
				<tr>
				<th>Night-After(NT-A)</th><td><form:input path="nta" align="center" placeholder="dose" /></td>
				</tr>
			
			</table>
				
				
				<div>
				<button class="submit" type="submit">Prescribe</button>
				</div>
				
				
				<form:input path="aid" align="center" type="hidden" value="${aid}" />
				<form:input path="pid" align="center" type="hidden" value="${pid}" />
				<form:input path="did" align="center" type="hidden" value="${dId}"/>
				<form:input path="name" align="center" type="hidden" value="${name}"/>
				<br>

				<br>

			</form:form>
		</div>

	</div>

</body>
</html>