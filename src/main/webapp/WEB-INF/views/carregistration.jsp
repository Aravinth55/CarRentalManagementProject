<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Registration</title>
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
</style>
</head>
<body>
	<div align="center">
		<div>
			<h1>Car Registration</h1>
		</div>
		<div>

			<h3>
				<div>
					<a href="/car/carlist">CarRegistration List</a>
				</div>


			</h3>
		</div>
		<div>
			<h3>
				<div>
					<a href="/car/addcarform">Add CarRegistration</a>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<a href="/car/updatecarform?carregno=">Update CarRegistration</a>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<a href="/car/deletecar?carregno=">Delete CarRegistration</a>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<a href="/car/findcarbyid?carregno=">FindByCarId</a>
				</div>
			</h3>
		</div>
	</div>
</body>
</html>