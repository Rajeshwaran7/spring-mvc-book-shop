<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.regi {
	height: 500px;
	width: 400px;
	border: 1px black;
	height: 500px;
	align-content: center;
	margin: auto;
}

.regi input {
	margin-left: 20px;
	width: 400px;
}

.regi label {
	margin-left: 20px;
	width: 400px;
}

.regi button {
	margin-left: 20px;
	width: 400px;
}
</style>
<title>log in</title>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<br>
	<br>
	<div class="container">
		<div class="regi">
			<div>
				<h5>ADMIN</h5>
			</div>
			<hr>
			<div id="Message"
				style="color: green; text-align: center; background: #b3ffde">
				${msg}</div>

			<c:if test="${invalid != null }">
				<div id="Message"
					style="color: red; text-align: center;">
					${invalid}</div>
			</c:if>
			<form action="login-admin">

				<div class="mb-3 mt-3">
					<label for="email" class="form-label">Email:</label> <input
						type="email" class="form-control" id="email"
						placeholder="Enter email" name="email" required="required">
				</div>

				<div class="mb-3">
					<label for="pwd" class="form-label">Password:</label> <input
						type="password" class="form-control" id="pwd"
						placeholder="Enter password" name="password" required="required">
				</div>
				<br>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			
		</div>
	</div>

	<script type="text/javascript">
		//Get the success message element
		var successMessage = document.getElementById("Message");

		// Show the success message
		successMessage.style.display = "block";

		// Delay for 5 seconds
		setTimeout(function() {
			// Hide the success message
			Message.style.display = "none";
		}, 5000);
	</script>
</body>
</html>