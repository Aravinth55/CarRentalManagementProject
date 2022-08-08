<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rental Car</title>
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
			<h1>Rental Cars</h1>
		</div>

		<div>
			<h3>
				<div>
					<div>
						<a href="/carrental/addcarrentalform">Add Car Rental</a>
					</div>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<div>
						<a href="/carrental/updatecarrentalform?carregno=&cusid=">Update
							CarRental</a>
					</div>
				</div>
			</h3>
		</div>

		<div>
			<h3>
				<div>
					<div>
						<a href="/carrental/findcarrentalbyid?carregno=&cusid=">Find CarRentalId</a>
					</div>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<div>
						<a href="/customer/getcustomerrentalcars?cusid=">Get CustomerRentalCars</a>
					</div>
				</div>
			</h3>
		</div>
	</div>
</body>
</html>