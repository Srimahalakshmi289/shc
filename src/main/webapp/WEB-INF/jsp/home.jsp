<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%-- <link href="<c:url value="/resources/css/style.css"/>" 
	rel="stylesheet">  --%>
	<style>
	/* @charset "ISO-8859-1"; */

html{
	font-family:"helvatica neue","arial",sans-serif
}
body{
	background-image:url("/resources/images/homepage.png");
	margin:0px;
	width:100%;
	background-size:cover;
	
	
}
header{
	height:90px;
	background-color:white;
}
#header-container{
	width:85%;
	margin:auto;
 text-decoration: none;	
}
.logo{
	margin-top:3px;
	
}

nav a:hover{
	background-color: lime;
	
}
.col-2{
	
	width:50%;
	float: left;
}
.menu{
	margin-top:50px;
			
}
.menu li{
	list-style-type:none;
	display: inline;
	font-size:18px;
	color:grey;
	padding-right:30px;
	height:10px;
	
		
}
#top-section-main{

	height:770px;
	width:99%;
	border:none;
		
}
#top-section-content h1{
	
	font-size:2em;
	font-weight:100;
	text-align:center;
	padding-top:710px;
	font-family: sans-serif;
	color:purple;	
}
.wrapper {	
margin-left:580px;
  padding:0px;
  width:450px;
}
.login_container {
  max-width: 375px;
  height:200px;
  padding: 15px 15px 14px 90px;
 margin:100px;
 margin:-28px;
 margin-top:-295px;
  background-color: lightblue;border-right-color: blue;
  border: 2px solid rgba(0,0,0,0.1);
  border-radius:10px;  

}
.form-control{
	  padding: 10px;
	  margin-left:20px;
	  
}	  
	  input[type="text"] {
	  
	  border-bottom-left-radius: 0;
	  border-bottom-right-radius: 0;
	}

	input[type="password"] {
	  
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
.form-signin-heading{
	text-align:right;
	padding:0px 190px 0px 0px;
}

.form-signin-heading{
	text-align:center;
}

.mb-1,.form-control{
	margin-left:20px;
    padding-right: 80px;
    margin-left: 00px;

}


.mb-2,.form-control{
	margin-left:0px;
    margin-right: 0px;
    padding-right: 80px;

}


.mb-3,.form-control{
	margin-left:0px;
	margin-right:0px;
	padding-right:80px;
}
.login_container{
	padding-left:40px;
}
.btn btn-primary{
margin-top:25px;
border-right-width:6px;
border-left-width:6px;
padding-left:8px;
padding-right:8px;
}
	
	
	</style>
</head>
<script type="text/javascript">

localStorage.setItem('EmailId','email');

</script>
<body>
<header>
<div id ="header-container">
<div class ="col-2">
<img class="logo" src="/resources/images/logo.png" height="90" width="220">
</div>
<div class ="col-2">
<nav>
<ul class="menu">
<li>
<a href="/" > Home </a></li>
<li><a href="http://localhost:4200/login" > Login </a></li>
<li><a href="http://localhost:4200/register" > Create Account </a></li>
<li><a href="http://localhost:4200/help">Help desk</a></li>
</ul>
</nav>
</div>
</div>
</header>
</body>
</html>