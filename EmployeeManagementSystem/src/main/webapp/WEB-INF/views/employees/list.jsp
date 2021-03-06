<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Management</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
<link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
	<br>
	<br> &nbsp;
	<a href="/addemployee" class="btn btn-info"><span
		class="glyphicon glyphicon-plus"></span>Add Employee</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div align="center">
		<h2>Employee List</h2>
		<a href="/new">Employee New </a> <br />
		<br />
		<table border="1" cellpadding="10">
			<thead class="thead-inverse">
				<tr>
					<th width="70">EmpNo</th>
					<th width="120">First Name</th>
					<th width="120">Last Name</th>
					<th width="60">Gender</th>
					<th width="120">Birth Date</th>
					<th width="120">Hire Date</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
			</thead>
			<c:forEach items="${list}" var="employee">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.firstName}</td>
					<td>${employee.lastName}</td>
					<td>${employee.gender}</td>
					<td>${employee.birthDate}</td>
					<td>${employee.hireDate}</td>
					<td><a href="/editemployee/${employee.id}"
						class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span>
							Edit</a></td>
				
					<td><a href="/deleteemployee/${employee.id}"
						class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>Delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>
</body>
</html>
