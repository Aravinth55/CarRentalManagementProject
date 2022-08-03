<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Return Car</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addreturncar">
				<div>
					<label for="carRegno">Car RegNo</label>
					 <div>
                        <form:select path="carRegno">
                            <c:forEach var="allCars" items="${allcars}">
                                <form:option value="${allCars.carRegno}"
                                    label="${allCars.carRegno}" />
                            </c:forEach>
                        </form:select>
                    </div>
				</div>
				<div>
					<label for=customerId>Customer Id</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="fromDate">From Date</label>
					<div>
						<form:input path="fromDate" type="date"/>
					</div>
					<div>
						<label for="dueDate">Due Date</label>
						<div>
							<form:input path="dueDate" type="date"/>
						</div>
					</div>
					<div>
						<label for="payElapsed">Pay Elapsed</label>
						<div>
							<form:input path="payElapsed" />
						</div>
					</div>
					<div>
						<label for="carFine">Car Fine</label>
						<div>
							<form:input path="carFine" />
						</div>
					</div>
					<div>
						<label for="totalFee">Total Fee</label>
						<div>
							<form:input path="totalFee" />
						</div>
					</div>
					<div>
						<form:button>Add New Return Car</form:button>
					</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>