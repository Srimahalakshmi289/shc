<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<style>
body{
	font-family: 'Poppins', sans-serif;
	font-weight: 300;
	font-size: 15px;
	line-height: 1.7;
	color: #c4c3ca;
	overflow-x: hidden;
}
a {
	cursor: pointer;
  transition: all 200ms linear;
}
a:hover {
	text-decoration: none;
}
.link {
  color: #c4c3ca;
}
.link:hover {
  color: #ffeba7;
}
p {
  font-weight: 500;
  font-size: 14px;
  line-height: 1.7;
}
h4 {
  font-weight: 600;
}
h6 span{
  padding: 0 20px;
  text-transform: uppercase;
  font-weight: 700;
  margin_left:600;
  color: maroon;
}
.section{
  position: relative;
  width: 100%;
  display: block;
}
.full-height{
  min-height: 100vh;
}
[type="checkbox"]:checked,
[type="checkbox"]:not(:checked){
  position: absolute;
  left: -9999px;
}
.checkbox:checked + label,
.checkbox:not(:checked) + label{
	margin-left:650px;
  position: relative;
  display: block;
  text-align: center;
  width: 60px;
  height: 16px;
  border-radius: 8px;
  padding: 0;
  margin: 10px auto;
  cursor: pointer;
  background-color: #ffeba7;
}
.checkbox:checked + label:before,
.checkbox:not(:checked) + label:before{

  position: absolute;
  display: block;
  width: 36px;
  height: 36px;
  border-radius: 50%;
  color: #ffeba7;
  background-color: #102770;
  font-family: 'unicons';
  content: '\eb4f';
  z-index: 20;
  top: -10px;
  left: -10px;
  line-height: 36px;
  text-align: center;
  font-size: 24px;
  transition: all 0.5s ease;
}
.checkbox:checked + label:before {
  transform: translateX(44px) rotate(-270deg);
}


.card-3d-wrap {
margin-left:500;
  position: relative;
  width: 440px;
  max-width: 100%;
  height: 400px;
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  perspective: 800px;
  margin-top: 60px;
}
.card-3d-wrapper {
margin-left:500px;
  width: 100%;
  position:absolute;    
  top: 0;
  left: 0;  
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  transition: all 600ms ease-out; 
}
.card-front, .card-back {
  width: 100%;
  background-color: #2a2b38;
  background-image: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1462889/pat.svg');
  background-position: bottom center;
  background-repeat: no-repeat;
  background-size: 300%;
  position: absolute;
  border-radius: 6px;
  left: 0;
  top: 0;
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  -webkit-backface-visibility: hidden;
  -moz-backface-visibility: hidden;
  -o-backface-visibility: hidden;
  backface-visibility: hidden;
}
.card-back {
  transform: rotateY(180deg);
}
.checkbox:checked ~ .card-3d-wrap .card-3d-wrapper {
  transform: rotateY(180deg);
}
.card-front center-wrap{
  position: absolute;
  width: 100%;
  padding: 15px 35px;
  top: 50%;
  left: 0;
  transform: translate3d(0, -50%, 35px) perspective(100px);
  z-index: 20;
  display: block;
}
.card-back center-wrap{
  position: absolute;
  width: 100%;
  padding:15px 35px;
  top: 50%;
  left: 0;
  transform: translate3d(0, -50%, 35px) perspective(100px);
  z-index: 20;
  display: block;
}


.form-group{ 
  position: relative;
  display: block;
    margin: 0;
    padding: 0;
}
.form-style {
  padding: 13px 20px;

  height: 40px;
  width: 80%;
  font-weight: 500;
  border-radius: 4px;
  font-size: 14px;
  line-height: 22px;
  letter-spacing: 0.5px;
  outline: none;
  color: #c4c3ca;
  background-color: #1f2029;
  border: none;
  -webkit-transition: all 200ms linear;
  transition: all 200ms linear;
  box-shadow: 0 4px 8px 0 rgba(21,21,21,.2);
}
.form-style:focus,
.form-style:active {
	padding:5px;
  border: none;
  outline: none;
  box-shadow: 0 4px 8px 0 rgba(21,21,21,.2);
}
.input-icon {
  position: absolute;
  top: 0;
  left: 18px;
  height: 48px;
  font-size: 24px;
  line-height: 48px;
  text-align: left;
  color: #ffeba7;
  -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.select-icon{
position: absolute;
  top: 0;
  left: 18px;
  height: 48px;
  font-size: 24px;
  line-height: 48px;
  text-align: left;
  color: #ffeba7;
  -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}

.form-group input:-ms-input-placeholder  {
  color: #c4c3ca;
  opacity: 0.7;
  -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}

.form-group input::-moz-placeholder  {
  color: #c4c3ca;
  opacity: 0.7;
  -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input:-moz-placeholder  {
  color: #c4c3ca;
  opacity: 0.7;
  -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input::-webkit-input-placeholder  {
  color: #c4c3ca;
  opacity: 0.7;
  -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input:focus:-ms-input-placeholder  {
  opacity: 0;
  -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input:focus::-moz-placeholder  {
  opacity: 0;
  -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input:focus:-moz-placeholder  {
  opacity: 0;
  -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}
.form-group input:focus::-webkit-input-placeholder  {
  opacity: 0;
  -webkit-transition: all 200ms linear;
    transition: all 200ms linear;
}

.btn{  
  border-radius: 4px;
  height: 44px;
  font-size: 13px;
  font-weight: 600;
  text-transform: uppercase;
  -webkit-transition : all 200ms linear;
  transition: all 200ms linear;
  padding: 0 30px;
  letter-spacing: 1px;
  display: -webkit-inline-flex;
  display: -ms-inline-flexbox;
  display: inline-flex;
  -webkit-align-items: center;
  -moz-align-items: center;
  -ms-align-items: center;
  align-items: center;
  -webkit-justify-content: center;
  -moz-justify-content: center;
  -ms-justify-content: center;
  justify-content: center;
  -ms-flex-pack: center;
  text-align: center;
  border: none;
  background-color: #ffeba7;
  color: #102770;
  box-shadow: 0 8px 24px 0 rgba(255,235,167,.2);
}
.btn:active,
.btn:focus{  
  background-color: #102770;
  color: #ffeba7;
  box-shadow: 0 8px 24px 0 rgba(16,39,112,.2);
}
.btn:hover{  
  background-color: #102770;
  color: #ffeba7;
  box-shadow: 0 8px 24px 0 rgba(16,39,112,.2);
}



</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="/login" method="post" modelAttribute="user">
<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0_pb-3" style="text-align: center"><span>Log In </span><span>Sign Up</span></h6>
			          	<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap" style="padding-left: 15px">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">Log In</h4>
											<div class="form-group" style="padding: 5px;">
												<input type="email" name="email" class="form-style" placeholder="Your Email" id="email" autocomplete="off">
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2" style="padding: 5px;">
												<input type="password" name="password" class="form-style" placeholder="Your Password" id="password" autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<div class="form-group" style="padding: 5px;">
												<select name="role" id="role" class="form-style">
													<option>Select your Role</option>
													<option>patient</option>
													<option>doctor</option>
													<option>admin</option>
												
								</select>
												<i class="select-icon uil uil-user"></i>
											</div>	
		  <div style="text-align: center;">
 
  <button type="submit" class="btn mt-4" onclick="login()">Submit</button>
  </div>							
                            				<p class="mb-0 mt-4 text-center"><a href="#0" class="link">Forgot your password?</a></p>
				      					</div>
			      					</div>
			      				</div>
			      				</form>
			      				<form action="/register" method="post">
								<div class="card-back">
									<div class="center-wrap" style="padding-left: 15px">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">Sign Up</h4>
											<div class="form-group" style="padding: 5px;">
												<input type="text" name="p_name" class="form-style" placeholder="Your Full Name" id="p_name" autocomplete="off">
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group" style="padding: 5px;">
												<input type="text" name="p_email" class="form-style" placeholder="Your Email Id" id="p_email" autocomplete="off">
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group" style="padding: 5px;">
												<input type="date" name="p_dob" class="form-style" placeholder="Your Birth Date" id="p_dob" autocomplete="off">
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group mt-2" style="padding: 5px;">
												<input type="text" name="p_city" class="form-style" placeholder="Your City" id="p_city" autocomplete="off">
												<i class="input-icon uil uil-at"></i>
											</div>
											<div class="form-group" style="padding: 5px;">
												<input type="text" name="p_phonenum" class="form-style" placeholder="Your Phone Number" id="p_phonenum" autocomplete="off">
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group" style="padding: 5px;">
												<input type="radio" name="p_gender"  value="Male" id="p_gender" autocomplete="off">Male
												<input type="radio" name="p_gender" value="Female" id="p_gender" autocomplete="off">Female
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group" style="padding: 5px;">
												<select name="p_bg" id="p_bg" class="form-style"  >
													<option>Your Blood Group</option>
													<option>A+Ve</option>
													<option>B+Ve</option>
													<option>O+Ve</option>
													<option>AB+Ve</option>
													<option>A-Ve</option>
													<option>B-Ve</option>
													<option>O-Ve</option>
													<option>AB-Ve</option>
												</select>
												<i class="select-icon uil uil-user"></i>
											</div>	
											<div class="form-group mt-2" style="padding: 5px;">
												<input type="password" name="password" class="form-style" placeholder="Your Password" id="password" autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
										</div>	
		  <div style="text-align: center;">
 
  <button type="submit" class="btn mt-4" onclick="login()">Create New Account</button>
  </div>							
				      					</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>
	
</form>	
</body>
</html>