<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update CompanyAdmin</title>
<style>
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
    <h3>Update CompanyAdmin</h3> 
   <br>
    <form action="/companyadmin/updateadminform" method="get"
        style="margin: 0;">
        <label>Enter CompanyAdmin Id</label> <input type="text"
            placeholder="User Id" name="userid"> 
      <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>