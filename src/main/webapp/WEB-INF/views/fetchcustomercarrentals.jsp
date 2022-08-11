<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Customer RentalCars</title>
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
    <h3>Fetch Customer RentalCars</h3> 
   <br>
    <form action="/customer/getcustomerrentalcars" method="get"
        style="margin: 0;">
        <label>Enter Customer Id</label> <input type="text"
            placeholder="Customer Id" name="cusid"> 
    <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>