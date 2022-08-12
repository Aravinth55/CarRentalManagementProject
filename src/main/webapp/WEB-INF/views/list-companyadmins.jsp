<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>CompanyAdmin List</title>
<style>
body {
    background-image: url("https://cdn.wallpapersafari.com/60/8/fUDlIm.jpg");
    height: 768px;
    width: 1366px;
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color: Aquamarine;} /*coral  */
</style>
</head>
<body>
	<div id="table root">
		<table>
		<caption>CompanyAdmin list</caption>
		
			<thead>
				<tr>
					<th style="background-color:#87CEFA">User Id</th>
					<th style="background-color:#87CEFA">User Name</th>
					<th style="background-color:#87CEFA">User Password</th>
					<th style="background-color:#87CEFA">Edit User</th>
					<th style="background-color:#87CEFA">Delete User</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cmad" items="${allcompanyadmins}">
					<tr>
						<td>${cmad.userId}</td>
						<td>${cmad.userName}</td>
						<td>${cmad.userPassword}</td>
						<td><a  href="updateadminform?userid=${cmad.userId}">Edit User</a></td>
						<td><a  href="deletecomadmin?userid=${cmad.userId}">Delete User</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
			 <div><h3><a href="/home/hello">Back To MainPage</a></h3></div>
	</div>
</body>
</html>
