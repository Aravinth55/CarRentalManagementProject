<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find CompanyAdmin</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form action="/companyadmin/findcomadminbyid" method="get">
		<h1>Find CompanyAdmin</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label>Enter Car RegisterNo</label></td>
						<td><input type="text" placeholder="User Id" name="userid" required></td>
						<td>	<input type='submit' value="Fetch" name="submit"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>

</body>
</html>