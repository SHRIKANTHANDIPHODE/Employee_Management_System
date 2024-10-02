<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<style type="text/css">
	#s
	{
	  margin-left:280px; 
	
	}
	
	
	</style>
</head>
<body class="p-3 mb-2 bg-warning text-dark">
	<div class="container">
		<h1 align="center">
			<b><u>Add Employee</u></b>
		</h1>
		<div id="s">
			<form action="saveEmployee" method="post">
				<br>
				<br>
				<br>
				<table
					class="table table-dark d-flex justify-content-center border p-2 bd-highlight"
					style="width: 60%; height: 290px;">
					<tr>
						<td><b>Enter employee id</b></td>
						<td><input type="number" name="empid" /></td>
					</tr>
					<tr>
						<td><b>Enter Name</b></td>
						<td><input type="text" name="first_name" /></td>
					</tr>
					<tr>
						<td><b>Enter Address</b></td>
						<td><input type="text" name="address" /></td>
					</tr>
					<tr>
						<td><b>Enter Salary</b></td>
						<td><input type="number" name="sal" /></td>
					</tr>
					<tr>
						<td colspan="4"><input type="submit" value="Save Employee" /></td>
						<td><a href="getAllEmployee" class="btn btn-primary" role="button">Cancel</a></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

</body>
</html>