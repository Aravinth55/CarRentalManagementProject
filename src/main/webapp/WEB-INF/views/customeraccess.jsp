<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Access</title>
</head>
<body>
<div><h1>Customer Registration</h1></div>
<div><a href="/customer/customerlist">CustomerRegistration List</a></div>
<div><a href="/customer/addcustomerform">Add CustomerRegistration</a></div>
<div><a href="/customer/updatecustomerform?cusid=">Update CustomerRegistration</a></div>
<div><a href="/customer/findcustomerbyid?cusid=">FindByCustomerId</a></div>
<div></div>
<div><h1>Car Rental</h1></div>
<div><a href="/carrental/carrentallist">Car Rental List</a></div>
<div><a href="/carrental/addcarrentalform">Add Car Rental</a></div>
<div><a href="/carrental/updatecarrentalform?carregno=&cusid=">Update CarRental</a></div>
<div><a href="/customer/getcustomerrentalcars?cusid=">GetCustomerRentalCars</a></div>
<div></div>
<div><h1>Car Return</h1></div>
<div><a href="/returncar/returncarlist">Car ReturnList</a></div>
<div><a href="/returncar/addreturncarform">Add Car Return</a></div>
<div><a href="/returncar/updatereturncarform?carregno=&cusid=">Update CarReturn</a></div>
<div><a href="/returncar/findreturncarbyid?carregno=&cusid=">FindCarReturnId</a></div>
</body>
</html>