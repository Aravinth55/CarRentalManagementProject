<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Car</title>
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
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" style="text-align:center ;margin-top:5%;">
			<form:form action="updatecar" method="post"
				modelAttribute="updatecar">
				<div>
					<label for="carRegno">Car RegNo</label>
					<div>
						<form:input path="carRegno" placeholder="Car RegNo"/>
					</div>
				</div>
					<form:errors path="carRegno" cssClass="text-danger" />
	
				<div>
					<label for="ownerId">Owner Id</label>
					<div>
						<form:input path="ownerId" placeholder="Owner Id" title="It should be Number Format"
				 pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
				<div>
					<label for="carMake">Car Make</label>
					<div>
						<form:input path="carMake" placeholder="Car Make"/>
					</div>
					</div>
						<form:errors path="carMake" cssClass="text-danger" />
	
					<div>
						<label for="carModel">Car Model</label>
						<div>
							<form:input path="carModel" placeholder="Car Model"/>
						</div>
					</div>
						<form:errors path="carModel" cssClass="text-danger" />
	
					<div>
						<label for="carColour">Car Colour</label>
						<div>
							<form:input path="carColour" placeholder="Car Colour"/>
						</div>
					</div>
						<form:errors path="carColour" cssClass="text-danger" />
	
					<div>
						<label for="fuelType">Fuel Type</label>
						<div>
							<form:input path="fuelType" placeholder="Fuel Type"/>
						</div>
					</div>
						<form:errors path="fuelType" cssClass="text-danger" />
	
					<div>
						<label for="carCapacity">Car Capacity</label>
						<div>
							<form:input path="carCapacity" placeholder="Car Capacity" title="It should be Number Format"
				 pattern="^[0-9]+$" required="true"/>
						</div>
					</div>
					<div>
						<label for="carAvailable">Car Available</label>
						<div>
							<form:input path="carAvailable" placeholder="Car Available"/>
						</div>
					</div>
						<form:errors path="carAvailable" cssClass="text-danger" />
	
					<div>
						<form:button>Update Car</form:button>
					</div>
			</form:form>
		</div>
	</div>
		 <div><h3><a href="/home/hello">Back To MainPage</a></h3></div>
</body>
</html>