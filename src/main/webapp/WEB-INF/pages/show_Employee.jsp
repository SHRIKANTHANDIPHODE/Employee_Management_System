<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@taglib prefix="fn" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script type="text/javascript">
	function deleteEmp(str) {
		if(confirm("do you want to delete")) {
			document.frm.id.value = str;
			document.frm.action = "deleteEmp";
			document.frm.submit();
		}

	}
</script>
</head>
<body class="p-3 mb-2 bg-secondary text-white">
	<h1 align="center">
		<u>Employee List</u>
	</h1>
	<a href="save" class="btn btn-primary">Add Employee</a>
	<br>
	<br>
	<div class="container text-center">
		<table class="table table-striped">
			<form name="frm" action="">
				<input type="hidden" name="id" />
				<tr>
					<td align="right" colspan="6"><b>Date:</b> <fmt:formatDate
							value="<%=new Date()%>" dateStyle="long" /></td>
				</tr>
				<tr>
					<td><b>Id</b></td>
					<td><b>Name</b></td>
					<td><b>Address</b></td>
					<td><b>Salary</b></td>
					<td align="center"><b>Edit Action</b></td>
					<td align="center"><b>Delete Action </b></td>
				</tr>
				<c:if test="${fn:length(emps)==0 }">
					<tr>
						<td colspan="6">No Employee Found</td>
					</tr>
				</c:if>
				<c:if test="${fn:length(emps)>0 }">
					<c:forEach items="${emps}" var="emp">
						<tr>
							<td>${emp.id}</td>
							<td>${emp.name}</td>
							<td>${emp.address}</td>
							<td>${emp.salary}</td>
							<td align="center"><button class="btn btn-warning">Edit</button></td>
							<td align="center"><button class="btn btn-danger"
									onclick="deleteEmp(${emp.id})">Delete</button></td>
						</tr>
					</c:forEach>
				</c:if>
			</form>
		</table>
	</div>

	<div class="progress">
		<div class="progress-bar progress-bar-striped progress-bar-animated"
			role="progressbar" aria-valuenow="75" aria-valuemin="0"
			aria-valuemax="100" style="width: 75%"></div>
</body>
</html>