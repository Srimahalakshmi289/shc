<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="success"  method="post" modelAttribute="uf">
<input type="text" name = "file_id">
<input type="text" name = "file_name">
<input type="text" name = "file_type">
<input type="file" name = "file_data">
<button type="submit" value ="upload">Submit</button>
</form>
</body>
</html>