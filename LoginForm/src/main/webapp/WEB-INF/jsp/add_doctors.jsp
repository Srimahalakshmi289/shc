<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<title>patient profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<head>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Encode+Sans+Condensed:400,600');

* {
  outline: none;
}

.head{
text-align: center;
padding:10px;
background: purple;
color:white;
}
strong {
  font-weight: 600;
}

.page {
  width: 100%;
  height: 100vh;
  background: url(resources/images/add_doc.png);
  background-size: 1800px 900px;
  font-family:sans-serif; 
  font-weight: 600;
  letter-spacing: .06em;
  color: #212121;
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
  background: purple;
  border-radius: 0;
  height: 70px;
  width: 30px;
  cursor: pointer;
  pointer-events: auto;
  margin-left: 25px;
 margin-top:2px;
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

.body {
  height: 100%;
  background:#c4afe0;
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


label {
    color: #333
}

.btn-send {
    font-weight: 300;
    text-transform: uppercase;
    letter-spacing: 0.2em;
    width: 80%;
    margin-left: 3px
}

.help-block.with-errors {
    color: #ff5050;
    margin-top: 5px
}

.card {
    margin-left: 10px;
    margin-right: 10px
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
<form action="add_doctors" method="post" modelAttribute="doctor">
    <div class="page">
 
  <div id="nav-container">
    <div class="bg"></div>
    <div class="button" tabindex="0">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </div>
    <div id="nav-content" tabindex="0">
      <ul>
        <li><a href="adminHome">Home</a></li>
        <li><a href="add_doctors">Add doctor</a></li>
        <li><a href="doctor_list">Doctor list</a></li>
        <li><a href="querylist">Query list</a></li>
        <li><a href="home">Logout</a></li>
        
      </ul>
    </div>
  </div>
	<div class="head">
	<h1>Add Doctors</h1>
	</div>
	<div class="container"> <div class=" text-center mt-5 ">
        
    </div>
    <div class="row ">
        <div class="col-lg-7 mx-auto">
            <div class="card mt-2 mx-auto p-4 bg-light">
                <div class="card-body bg-light">
                    <div class="container">
                        <form id="contact-form" role="form">
                            <div class="controls">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_name">Name</label> <input id="form_name" type="text"  name="d_name" class="form-control" required="required" data-error="name is required."> </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_dob">DOB</label> <input id="form_dob" type="date" name="d_dob" class="form-control" required="required" data-error="dob is required."\> </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_email">Email</label> <input id="form_email" type="email" name="d_email" class="form-control" required="required" data-error="Valid email is required."> </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_bg">Blood Group</label> <select id="form_bg" name="d_bg" class="form-control" required="required" data-error="bloodgroup is required.">
                                                <option>--Select--</option>
                                                <option>A+Ve</option>
												<option>B+Ve</option>
												<option>O+Ve</option>
												<option>AB+Ve</option>
												<option>A-Ve</option>
												<option>B-Ve</option>
												<option>O-Ve</option>
												<option>AB-Ve</option>
												
                                            </select> </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_phonenum">Phone number</label> <input id="form_phone" type="text"  name="d_phonenum" class="form-control" required="required" data-error="phone number is required."> </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_city">City</label> <input id="form_city" type="text" name="d_city" class="form-control" required="required" data-error="city is required."\> </div>
                                    </div>
                                </div>
                                <div class="row">
                                    
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_city">Specialization</label> <input id="form_specialization" type="text" name="department" class="form-control" required="required" data-error="specialization is required."\> </div>
                                    </div>
                                    <div class="col-md-6">
                                    <br>
                                        <div class="form-group"><input type="radio" id="d_gender" value="Male" name="d_gender">Male
    <input type="radio" id="d_gender" value="Female" name="d_gender">Female
                                        
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_password">Password</label> <input id="form_password" type="text"  name="password" class="form-control" required="required" data-error="password is required."> </div>
                                    </div>
                                    <div class="col-md-6">
                                    <br>
                                    	<div class="col-md-12"><input type="submit" class="btn btn-success btn-send pt-2 btn-block " onclick="add_doctors()" value="Add Doctor"> </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div> <!-- /.8 -->
        </div> <!-- /.row-->
    </div>
</div>

	
			</div>
		<div class="col"></div>
	</form>

</body>

 
</html>