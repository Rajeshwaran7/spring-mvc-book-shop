<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>novels</title>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="container">
		<h1>Poetry</h1>
		<hr>
		<br>
		<div class="container">
			<c:forEach var="book" items="${getPoetry}">

				<div class="section">
					<h5>${book.bookTitle}</h5>
					BY
					<div>${book.author }</div>
					<br>
					<div class="img">
						<img
							src="https://images.pexels.com/photos/1029141/pexels-photo-1029141.jpeg?auto=compress&cs=tinysrgb&w=600"
							width="200" height="200">
					</div>
					<br>

					<div>RS: ${book.price }</div>
				</div>
				<p>
					<button type="submit" class="btn btn-default btn-sm">
						<a href='<c:url  value="/cart?id=${book.bookId}"></c:url>'> <span
							class="glyphicon     glyphicon-shopping-cart"> </span> <b>
								Add to Cart </b>
						</a>
					</button>
				</p>

				<hr>
				<br>
			</c:forEach>
		</div>
	</div>
	<style>
.section .img {
	display: flex;
}
</style>
</body>
</html>