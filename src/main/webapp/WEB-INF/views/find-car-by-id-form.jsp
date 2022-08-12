<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Car By Id</title>
<style type="text/css">
body {
    background-image: url("https://cdn.wallpapersafari.com/60/8/fUDlIm.jpg");
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
	<div id="root">
		<div id="form" style="text-align:center ;margin-top:5%;">
			<form:form action="" method="post" modelAttribute="findcarbyid">
				<div>
					<label for="carRegno">Car RegNo</label>
					<div>
						<form:input path="carRegno" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="ownerId">Owner Id</label>
					<div>
						<form:input path="ownerId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="carMake">Car Make</label>
					<div>
						<form:input path="carMake" readonly="true"/>
					</div>
					</div>
					<div>
						<label for="carModel">Car Model</label>
						<div>
							<form:input path="carModel" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="carColour">Car Colour</label>
						<div>
							<form:input path="carColour" readonly="true" />
						</div>
					</div>
					<div>
						<label for="fuelType">Fuel Type</label>
						<div>
							<form:input path="fuelType" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="carCapacity">Car Capacity</label>
						<div>
							<form:input path="carCapacity" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="carAvailable">Car Available</label>
						<div>
							<form:input path="carAvailable" readonly="true"/>
						</div>
						</div>
			</form:form>
		</div>
	</div>
</body>
</html>