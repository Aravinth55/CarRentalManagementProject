<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Customer Registration</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form action="/customer/deletecustomer" method="get">
		<h1>Delete Customer Registration</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label>Enter Customer Id</label></td>
						<td><input type="text" placeholder="Customer id" name="cusid" required></td>

						<td><input type='submit' value="submit" name="submit"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</body>
</html>