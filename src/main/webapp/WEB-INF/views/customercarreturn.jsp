<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ReturnCars</title>
</head>
<body>
<body>
	<div align="center">
		<div>
			<h1>Return Cars</h1>
		</div>
		<div>
			<h3>
				<div>
					<div>
						<div>
							<a href="/returncar/addreturncarform">Add Return Car</a>
						</div>
					</div>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<div>
						<div>
							<a href="/returncar/updatereturncarform?carregno=&cusid=">Update
								ReturnCar</a>
						</div>
					</div>
				</div>
			</h3>
		</div>

		<div>
			<h3>
				<div>
					<div>
						<div>
							<a href="/returncar/findreturncarbyid?carregno=&cusid=">Find ReturnCarId</a>
						</div>
					</div>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<div>
						<div>
							<a href="/customer/getcustomerreturncars?cusid=">Get CustomerReturnCars</a>
						</div>
					</div>
				</div>
			</h3>
		</div>
	</div>
</body>
</html>