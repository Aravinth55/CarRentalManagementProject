<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CompanyAdmin Access</title>
</head>
<body>
<div><h1>CompanyAdmin Login</h1></div>
<div><a href="/companyadmin/companyadminlist">CompanyAdmin List</a></div>
<div><a href="/companyadmin/addadminform">Add CompanyAdmin</a></div>
<div><a href="/companyadmin/updateadminform?userid=">CompanyAdmin Update</a></div>
<div><a href="/companyadmin/deletecomadmin?userid=">CompanyAdmin Delete</a></div>
<div><a href="/companyadmin/findcomadminbyid?userid=">FindByCompanyAdminId</a></div>
<div></div>
<div><h1>Customer Registration</h1></div>
<div><a href="/customer/customerlist">CustomerRegistration List</a></div>
<div><a href="/customer/addcustomerform">Add CustomerRegistration</a></div>
<div><a href="/customer/updatecustomerform?cusid=">Update CustomerRegistration</a></div>
<div><a href="/customer/deletecustomer?cusid=">Delete CustomerRegistration</a></div>
<div><a href="/customer/findcustomerbyid?cusid=">FindByCustomerId</a></div>
<div></div>
<div><h1>Car Registration</h1></div>
<div><a href="/car/carlist">CarRegistration List</a></div>
<div><a href="/car/addcarform">Add CarRegistration</a></div>
<div><a href="/car/updatecarform?cusid=">Update CarRegistration</a></div>
<div><a href="/car/deletecar?cusid=">Delete CarRegistration</a></div>
<div><a href="/car/findcarbyid?cusid=">FindByCarId</a></div>
<div></div>
<div><h1>Car Rental</h1></div>
<div><a href="/carrental/carrentallist">Car Rental List</a></div>
<div><a href="/carrental/addcarrentalform">Add Car Rental</a></div>
<div><a href="/carrental/updatecarrentalform?carregno=&cusid=">Update CarRental</a></div>
<div><a href="/carrental/deletecarrental?carregno=&cusid=">Delete CarRental</a></div>
<div><a href="/carrental/findcarrentalbyid?carregno=&cusid=">FindCarRentalId</a></div>
<div><a href="/customer/getcustomerrentalcars?cusid=">GetCustomerRentalCars</a></div>
<div></div>
<div><h1>Car Return</h1></div>
<div><a href="/returncar/returncarlist">Car ReturnList</a></div>
<div><a href="/returncar/addreturncarform">Add Car Return</a></div>
<div><a href="/returncar/updatereturncarform?carregno=&cusid=">Update CarReturn</a></div>
<div><a href="/returncar/deletereturncar?carregno=&cusid=">Delete CarReturn</a></div>
<div><a href="/returncar/findreturncarbyid?carregno=&cusid=">FindCarReturnId</a></div>
<div><a href="/customer/getcustomerreturncars?cusid=">GetCustomerReturnCars</a></div>
</body>
</html>