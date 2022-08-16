<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update ReturnCar</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form action="/returncar/updatereturncarform" method="get">
		<h1>Update ReturnCar ByCustomerId</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label>Enter Car Registration Number</label></td>
						<td><input type="text" placeholder="Car RegNo"
							name="carregno"></td>
							</tr>

					<tr>	<td><label>Enter Customer Id</label></td>
						<td><input type="text" placeholder="Customer Id" name="cusid">
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