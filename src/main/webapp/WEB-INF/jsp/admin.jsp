

<!DOCTYPE html>
<html>
<title>admin</title>
<head>
    <style>
        nav {
            color:black;
            padding: 15px;
            
        }
         h1{
         	margin:330px;
			margin-left: 800px;
			color:red;
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
	
    </style>
</head>
 <script type="text/javascript">
function logout(){
	sessionStorage.clear();
	window.location.href="/";
	 }
</script>
<body>
    <header>
    <div id ="header-container">
    <nav>
        <a href="/admin">Home</a>  
        <a href="/querylist">Queries List</a>  
        <a href="/add_doctors">Add Doctors</a> 
        <a href="/doctor_list">Doctor's List</a> 
        <div  style="text-align: right;margin-top:-38; "  id="header-container">
   <button type="submit" class="btn " onclick="logout()">LOGOUT</button>
         </div><br>
    </nav>
    </div>
    </header>

	<h1>Hello Admin!</h1>	
</body>

 
</html>