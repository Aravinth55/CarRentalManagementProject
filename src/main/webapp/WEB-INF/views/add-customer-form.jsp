<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
<script type="text/javascript">
</script>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
			 <form:form style="line-height:29px;" action="add" method="post"
                modelAttribute="addcustomer"  name="myForm">
                 <h1>Customer Registration</h1>
                 <div class="form">
                 <table class="myTable">
                 	<caption></caption>		
			<tr>
			<th></th>
			</tr>
                 <tbody>
				<tr>
					<td><label for="customerName">Customer Name</label></td>
					<td class="cus">
						<form:input path="customerName"  name="customerName" onblur="userNameCheck();" placeholder="Customer Name" pattern="^[A-Za-z]\\w{2,20}$" title="It should be Only Alphabet" required="true"/>
					</td>
				</tr>
				
			
				<tr>
					<td><label for="customerPassword">Customer Password</label></td>
					<td>
						<form:input path="customerPassword" name="customerPassword" onblur="userpasswordCheck();"  placeholder="Customer Password"   title="Please Enter the password" required="true"/>
				</td>
			</tr>
			<tr>
					<td><label for="address">Address</label></td>
<td>						<form:input path="address" name="address" onblur="addressCheck();" placeholder="Address"  title="It should be Only Alphabet" required="true" />
					</td>
				</tr>
 			<tr>
					<td><label for="mobileNo">Mobile No</label></td>
				<td>
						<form:input path="mobileNo" placeholder="Mobile No" name="mobileNo" onblur="phoneNumberCheck();" pattern="^\\d{10}$" maxlength="10"  title="It should be Number Format"
				  required="true"/>
					</td>
				</tr>
 			<tr>
					<td><label for="gender">Gender</label></td>
					<td>
                        <select name="gender" required>
                        <option>--Gender--</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                        </select>
                </td>
				</tr>
				<tr>
					<td><label for="bloodGroup">Blood Group</label></td>
					<td>
						<form:input path="bloodGroup" name="bloodGroup" onblur="bloodgroupNameCheck();" placeholder="Blood Group" pattern="^[A-Za-z]\\w{2,20}$"  title="It should be Only Alphabet" required="true"/>
					</td>
				</tr>
 		<tr>
					<td><label for="personType">Person Type</label>
					</td>
					<td> 
                        <select name="personType" required>
                        <option>--Person Type--</option>
                        <option value="Customer">Customer</option>
                        <option value="Owner">Owner</option>
                        </select>
                </td>
					</tr>
 			<tr>
						<td><label for="joiningDate">Joining Date</label></td>
						
								<td><form:input path="joiningDate" id="joiningDate" type="date" onblur="dateCheck();" placeholder="Joining Date"/></td>
						</tr>
						</tbody>
						</table>
							<form:button>Customer Registration</form:button>
							</div>
			</form:form>
					
</body>
</html>