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
	<jsp:include page="admin.jsp"></jsp:include>
	<div class="container">
		<h5>Searched by</h5>
		<h2>${bookTitle}</h2>
		<hr>
		<br>
		<div class="container">
			<c:forEach var="book" items="${searchedBooks}">

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
				<br>
				<p>
					<button type="submit" class="btn btn-default btn-sm">
						<a href='<c:url  value="/action?id=${book.bookId}"></c:url>'>
							<span class="glyphicon     glyphicon-shopping-cart"> </span> <b>
								EDIT </b>
						</a>
					</button>
					<button type="submit" class="btn btn-default btn-sm">
						<a href='<c:url  value="/delete?id=${book.bookId}"></c:url>'>
							<span class="glyphicon     glyphicon-shopping-cart"> </span> <b>
								DELETE </b>
						</a>
					</button>
				</p>


				<hr>

F			</c:forEach>
		</div>
	</div>

	<style>
.section .img {
	display: flex;
}
</style>
</body>
</html>