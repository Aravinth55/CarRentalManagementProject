<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CompanyAdmin List</title>
<style>
body {
    background-image: url("https://as2.ftcdn.net/v2/jpg/01/13/05/49/1000_F_113054950_ZICHXvV3MGY8nGoBuZYKZ9iMacgbsclI.jpg");
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
		<table border="2" width="80%" cellpadding="2">
			<thead>
				<tr>
					<th style="background-color:#87CEFA">User Id</th>
					<th style="background-color:#87CEFA">User Name</th>
					<th style="background-color:#87CEFA">User Password</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cmad" items="${allcompanyadmins}">
					<tr>
						<td>${cmad.userId}</td>
						<td>${cmad.userName}</td>
						<td>${cmad.userPassword}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
