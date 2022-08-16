<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Delete Car Registration</title>
<style type="text/css"><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form action="/car/deletecar" method="get">
		<h1>Delete Car Registration</h1>
		<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
			<td>		<label>Enter Car RegisterNo</label></td>
						<td><input type="text" placeholder="Car RegNo"
							name="carregno" required> </td>
							<td><input type='submit' value="submit"
							name="submit"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</body>
</html>