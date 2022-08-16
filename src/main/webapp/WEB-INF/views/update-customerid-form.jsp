<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Customer Registration</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form action="/customer/updatecustomerform" method="get">
		<h1>Update Customer Registration</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label>Enter Customer Id</label></td>
						<td><input type="text" placeholder="Customer Id" name="cusid"></td>
							
					</tr>
				</tbody>
			</table>
			<input type='submit' value="submit" name="submit">
		</div>
	</form>
</body>
</html>