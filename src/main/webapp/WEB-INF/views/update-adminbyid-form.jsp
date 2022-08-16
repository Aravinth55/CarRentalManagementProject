<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update CompanyAdmin</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form action="/companyadmin/updateadminform" method="get">
		<h1>Update CompanyAdmin</h1>
		<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
						<td><label>Enter CompanyAdmin Id</label></td>
						<td><input type="text" placeholder="User Id" name="userid">
						</td>
						<td><input type='submit' value="Fetch" name="submit">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</body>
</html>