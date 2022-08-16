<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Car Registration</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form action="/car/updatecarrentalform" method="get">
		<h1>Update Car Registration Form</h1>
		<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th id=""></th>
			</tr>
				<caption></caption>		
			<tr>
			<th id=""></th>
			</tr>
				<tbody>
					<tr>
						<td><label>Enter Car RegisterNo</label></td>
						<td><input type="text" placeholder="Car RegNo"
							name="carregno"></td>
						<td><input type='submit' value="Fetch" name="submit"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</body>
</html>