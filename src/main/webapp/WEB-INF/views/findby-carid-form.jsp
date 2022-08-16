<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Car Registration</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form action="/car/findcarbyid" method="get">
		<h1>Find CarById</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label>Enter Car RegisterNo</label></td>
						<td><input type="text" placeholder="Car RegNo"
							name="carregno" required> </td>
							<td><input type='submit' value="Fetch"
							name="submit"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>

</body>
</html>