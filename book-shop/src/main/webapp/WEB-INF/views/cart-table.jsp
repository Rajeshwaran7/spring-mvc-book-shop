<%@page import="com.ty.bookshop.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>novels</title>
<style type="text/css">
input {
	border: none;
}


</style>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>

	<div class="container">
		<br>
		<h2>Cart</h2>
		<hr>
		<br>
		<div class="container" style="overflow-x: auto;">
			<c:forEach var="book" items="${bookCarts}">
				<form action="order">

					<table class="table table-striped">
						<tr class="table-secondary">
							<th>Title</th>
							<th>Author</th>
							<th>Email</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Remove</th>
							<th>ORDER</th>

						</tr>
						<tr>
							<td><input type="text" name="bookTitle"
								value="${ book.bookTitle}" readonly="readonly"></td>

							<td><input style="width: 170px" type="text" name="author"
								value="${ book.author}" readonly="readonly"></td>
							<td><input type="email" name="email"
								placeholder="Enter Email here" required="required"></td>

							<td><input style="width: 100px" type="text" name="price"
								value="${ book.price}" readonly="readonly"></td>
							<td><input style="width: 50px" type="number" name="quantity"
								min="1" max="10" value="1"></td>
							<td class="icon-bar"><a
								href="<c:url value="/delete-cart?id=${book.cartId}"/>"><i
									class="fa fa-trash"></i></a></td>

							<td style="color: green;"><input class="btn btn-outline-success" type="submit" value="ORDER"></td>
						</tr>
					</table>
					<br>
				</form>

			</c:forEach>

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
		}, 3000);
	</script>
</body>
</html>