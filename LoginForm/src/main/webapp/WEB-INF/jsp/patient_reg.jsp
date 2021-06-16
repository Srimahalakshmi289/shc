<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<style type="text/css">

h2{
text-align:center;
margin-top:70px;
}
.login_container{
padding: 55px;
margin-top: 30px;
background-color: lightgrey;
border-radius: 20px;
}
body{
background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);

}
</style>
</head>
<body>
<form action="register" method="post" modelAttribute="patient">
	<div>
		<h2 >Patient Registration</h2>
		
	</div>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="login_container">
			<div>
			
  <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" id="p_name" name="p_name">
  </div>
  
  <div class="mb-3">
    <label for="emailid" class="form-label">Email ID</label>
    <input type="email" class="form-control" id="p_email" name="p_email">
  </div>
  
  <div class="mb-3">
    <label for="dob" class="form-label">DOB</label>
    <input type="date" class="form-control" id="p_dob" name="p_dob">
  </div>
  
  
  <div class="mb-3">
    <label for="mn" class="form-label">Phone Number</label>
    <input type="number" class="form-control" id="p_phonenum" name="p_phonenum">
  </div>
  
  <div class="mb-3">
    <label for="city" class="form-label">City</label>
    <input type="text" class="form-control" id="p_city" name="p_city">
  </div>
  
  <div class="mb-3">
    <label for="gender" class="form-label">Gender</label>
    <input type="radio" id="p_gender" value="Male" name="p_gender">Male
    <input type="radio" id="p_gender" value="Female" name="p_gender">Female
  </div>
  
  <div class="mb-3">
    <label for="bg" class="form-label">Blood Group</label>
    	<select name="p_bg" id="p_bg" class="form-control">
	<option>Select</option>
	<option>A+Ve</option>
	<option>B+Ve</option>
	<option>O+Ve</option>
	<option>AB+Ve</option>
	<option>A-Ve</option>
	<option>B-Ve</option>
	<option>O-Ve</option>
	<option>AB-Ve</option>
	</select>
  </div>
  
  <div class="mb-3">
    <label for="user_password" class="form-label">Password</label>
    <input type="password" class="form-control" id="password" name="password">
  </div>
  <div style="text-align: center;">
 
  <button type="submit" class="btn btn-primary" onclick="login()">Create Account</button>
  </div>
</div>
			</div>
		</div>
		<div class="col"></div>
	
	
	</div>
	</form>
</body>
</html>