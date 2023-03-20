<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>

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

<link rel="stylesheet" type="text/css"
	href="/WEB-INF/views/css/form.css">
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<br>
	<br>
	<div class="container">
		<div class="regi">
			<div>
				<h5>Registration</h5>
			</div>
			<hr>
			<div id="Message"
				style="color: red; text-align: center; background: #f2a299">
				${unsave}</div>

			<form action="adduser" method="Post">
				<div class="mb-3 mt-3">
					<label for="email" class="form-label">Name :</label> <input
						type="text" class="form-control" id="email"
						placeholder="Enter name" name="name" required="required">
				</div>
				<div class="mb-3 mt-3">
					<label for="email" class="form-label">Email:</label> <input
						type="email" class="form-control" id="email"
						placeholder="Enter Email" name="email" required="required">
				</div>

				<div class="mb-3">
					<label for="pwd" class="form-label">Mobile</label> <input
						type="tel" class="form-control" id="pwd"
						placeholder="Enter Mobile" name="mobile" required="required">
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