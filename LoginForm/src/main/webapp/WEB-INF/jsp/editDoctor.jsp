<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-add Doctor</title>
</head>
<body>

	<div align="center">
        <h2>Edit</h2>
        <form:form action="/add_doctors" method="post" modelAttribute="editedDoctor">
            <table border="0" cellpadding="5">
                <tr>
                    <td>ID: </td>
                    <td><form:input path="d_id" /></td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td><form:input path="d_name" /></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><form:input path="d_email" /></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><form:input path="d_city" /></td>
                </tr> 
                <tr>
                    <td>Phone number: </td>
                    <td><form:input path="d_phonenum" /></td>
                </tr>
                <tr>
                    <td>Department: </td>
                    <td><form:input path="department" /></td>
                </tr>     
                <tr>
                    <td>Date of Birth: </td>
                    <td><form:input path="d_dob" /></td>
                </tr> 
                <tr>
                    <td>Gender: </td>
                    <td><form:input path="d_gender" /></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><form:input path="password" /></td>
                </tr>
                <tr>
                    <td>Blood Group: </td>
                    <td><form:input path="d_bg" /></td>
                </tr>         
                <tr>
                    <td colspan="2"><input type="submit" value="Update"></td>
                </tr>                    
            </table>
        </form:form>
        <p>${addMsg}</p>
    </div>

</body>
</html>