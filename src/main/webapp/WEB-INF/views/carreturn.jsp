<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Return Cars</title>
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
			<h1>Return Cars</h1>
		</div>
		<div>

			<h3>
				<div>
					<div>
					<div><a href="/returncar/returncarlist">Return CarList</a></div>
</div>
				</div>


			</h3>
		</div>
		<div>
			<h3>
				<div>
					<div>
				<div><a href="/returncar/addreturncarform">Add CarReturn</a></div>
	</div>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<div>
				<div><a href="/returncar/updatereturncarform?carregno=&cusid=">Update CarReturn</a></div>
	</div>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<div>
		<div><a href="/returncar/deletereturncar?carregno=&cusid=">Delete CarReturn</a></div>
		</div>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<div>
			<div><a href="/returncar/findreturncarbyid?carregno=&cusid=">FindCarReturnId</a></div>
		</div>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<div>
	<div><a href="/customer/getcustomerreturncars?cusid=">Get Customer ReturnCars</a></div>
		</div>
				</div>
			</h3>
		</div>
	</div>
</body>
</html>