<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add books</title>
</head>
<body>
	<jsp:include page="admin.jsp"></jsp:include>
	<br>
	<div class="container">
		<div class="regi">
			<div>
				<h5>ADD BOOKS</h5>
			</div>
			<hr>
			<div id="Message"
				style="color: green; text-align: center; background: #b3ffde">
				${msg}</div>
			<div id="Message"
				style="color: red; text-align: center; background: #f2a299">
				${unsave}</div>

			<form action="addBooks" method="post">
				<div class="mb-3 mt-3">
					<label for="email" class="form-label">Category :</label> <input
						type="text" class="form-control" id="email"
						placeholder="Add category" name="name" required="required">
				</div>
				<div class="mb-3 mt-3">
					<label for="email" class="form-label">Title:</label> <input
						type="text" class="form-control" id="email"
						placeholder="Add title" name="bookTitle"  required="required">
				</div>

				<div class="mb-3">
					<label for="pwd" class="form-label">Author:</label> <input
						type="text" class="form-control" id="pwd" placeholder="Add author"
						name="author"  required="required">
				</div>

				<div class="mb-3">
					<label for="pwd" class="form-label">Price:</label> <input
						type="text" class="form-control" id="pwd" placeholder="Add price"
						name="price"  required="required">
				</div>
				<br>
				<button type="submit" class="btn btn-primary">SAVE</button>
			</form>
		</div>
	</div>
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