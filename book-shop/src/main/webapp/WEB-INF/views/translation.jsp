<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>translation</title>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="container">
		<h1>Translation</h1>
		<hr>
		<br>
		<div class="container">
			<c:forEach var="book" items="${translation}">

				<div class="section">
					<h5>${book.bookTitle}</h5>
					BY
					<div>${book.author }</div>
					<br>
					<div class="img">
						<img
							src="https://jangal.com/api/ui/image/thumbnail?path=/uploads/product/a-(143)_3.png&Size=600&fd=False"
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