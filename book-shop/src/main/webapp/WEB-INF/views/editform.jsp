<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit FORM</title>
<style>
a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: green;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
	color: white;
}

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

</head>
<body>
	<jsp:include page="admin.jsp"></jsp:include>
	<br>
	<div class="container">

		<button type="button" class="btn btn-outline-success">
			<a href="./displaybooks">BACK</a>
		</button>
		<div class="regi">
			<div>
				<h5>UPDATE BOOKS</h5>
			</div>
			<hr>
			<div id="Message"
				style="color: green; text-align: center; background: #b3ffde">
				${msg}</div>
			<div id="Message"
				style="color: red; text-align: center; background: #f2a299">
				${unsave}</div>

			<form action="update-book" method="post" modelAttribute="book">
				>
				<div class="mb-3 mt-3">
					<label for="email" class="form-label">Category :</label> <input
						type="text" class="form-control" id="email" name="name"
						value="${book.category.name }" placeholder="Category Name">
				</div>
				<div class="mb-3 mt-3">
					<label for="email" class="form-label">Category ID:</label> <input
						type="text" class="form-control" id="email" name="categoryId"
						value="${book.category.categoryId }" readonly="readonly"
						placeholder="Category Id">
				</div>

				<div class="mb-3 mt-3">
					<label for="email" class="form-label">Book ID:</label> <input
						type="text" class="form-control" id="email" name="bookId"
						value="${book.bookId }" readonly="readonly" placeholder="Book Id">
				</div>

				<div class="mb-3 mt-3">
					<label for="email" class="form-label">Title:</label> <input
						type="text" class="form-control" id="email"
						placeholder="Add title" name="bookTitle"
						value="${book.bookTitle }">
				</div>

				<div class="mb-3">
					<label for="pwd" class="form-label">Author:</label> <input
						type="text" class="form-control" id="pwd" placeholder="Add author"
						name="author" value="${book.author }">
				</div>

				<div class="mb-3">
					<label for="pwd" class="form-label">Price:</label> <input
						type="text" class="form-control" id="pwd" placeholder="Add price"
						name="price" value="${book.price}">
				</div>
				<br>
				<button type="submit" class="btn btn-primary">SAVE</button>
				<br> <br>
			</form>
			<br>
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