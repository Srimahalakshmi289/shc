

<!DOCTYPE html>
<html>
<title>admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
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
			background: url(/resources/images/helpdesk.jpg);
			background-size: cover;
		}
		header{
			height:50px;
			background-color:lightgrey;
		}
	
    </style>
</head>
 
<body>
    <header>
    <div id ="header-container">
    <nav>
       
<a href="/"> Home </a>

    </nav>
    </div>
    </header>
 <form action="helpdesk" method="post" modelAttribute="admin">
	<div>
		<h2>Ask a Query</h2>
		
	</div>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="login_container">
			<div>
			
  <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" id="name" name="name">
  </div>
  
  <div class="mb-3">
    <label for="emailid" class="form-label">Email ID</label>
    <input type="email" class="form-control" id="email" name="email">
  </div>
 <div class="mb-3">
    <label for="role" class="form-label">Role</label><br>
    <input type="radio" id="role" value="Doctor" name="role">Doctor
    <input type="radio" id="role" value="Patient" name="role">Patient
  </div>
  
  <div class="mb-3">
    <label for="query" class="form-label">Query</label>
    <input type="text" class="form-control" id="query" name="query">
  </div>
  <div style="text-align: center;">
 
  <button type="submit" class="btn btn-primary" onclick="submit()">Submit</button>
  </div>
</div>
			</div>
		</div>
		<div class="col"></div>
	
	
	</div>
	</form>   
 
    
    
</body>

 
</html>