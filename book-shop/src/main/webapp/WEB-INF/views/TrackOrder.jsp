<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Track</title>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
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
	<br>
	<br>
	<div class="container">
		<div class="regi">
			<div>
				<h5>TRACK YOUR ORDER</h5>
			</div>
			<hr>
			<c:if test="${invalid != null }">
				<div id="Message" style="color: red; text-align: center;">
					${invalid}</div>
			</c:if>
			<form action="track">

				<div class="mb-3 mt-3">
					<label for="email" class="form-label">ORDER NUMBER </label> <input
						type="number" class="form-control" id="email" min = "0"
						placeholder="ENTER ORDER NUMBER HERE" name="orderId" required="required">
				</div>
				<br>
				<button type="submit" class="btn btn-primary">TRACK</button>
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
	</script></html>