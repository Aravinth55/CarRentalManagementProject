<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete CarRental</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form action="/carrental/deletecarrental" method="get">
		<h1>Delete Car booking</h1>
		<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
						<td><label>Enter Car Registration Number</label></td>
						<td><input type="text" placeholder="Car RegNo"
							name="carregno" required></td>
							</tr>

					<tr>	<td><label>Enter Customer Id</label></td>
					
						<td><input type="text" placeholder="Customer Id" name="cusid" required></td>
							<td><input type='submit' value="submit" name="submit"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</body>
</html>