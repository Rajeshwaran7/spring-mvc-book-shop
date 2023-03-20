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
					<c:choose>
						<c:when test="${book.bookTitle eq 'Wings of Fire' }">
							<div class="img">
								<img
									src="https://i0.wp.com/www.scribblewhatever.com/wp-content/uploads/2020/11/Wings-of-Fire-1.jpg?fit=1086%2C1086&ssl=1  	"
									width="200" height="200">
							</div>
							<br>
							<p>
								<button type="submit" class="btn btn-default btn-sm">
									<a href='<c:url  value="/cart?id=${book.bookId}"></c:url>'>

										<span class="glyphicon     glyphicon-shopping-cart"> </span> <b>
											Add to Cart </b>
									</a>
								</button>
							</p>


							</c:when>

						<c:when test="${book.bookTitle eq 'A brief history of times' }">
							<div class="img">
								<img
									src="https://productimages.worldofbooks.com/0593060504.jpg  	"
									width="200" height="300">
							</div>
							<br>
							<p>
								<button type="submit" class="btn btn-default btn-sm">
									<a href='<c:url  value="/cart?id=${book.bookId}"></c:url>'>

										<span class="glyphicon     glyphicon-shopping-cart"> </span> <b>
											Add to Cart </b>
									</a>
								</button>
							</p>


						</c:when>
						<c:when test="${book.bookTitle eq 'DO EPIC SHIT.' }">
							<div class="img">
								<img
									src="https://www.ajayonlinestall.com/wp-content/uploads/2022/01/9789391165482.jpg  	"
									width="200" height="200">
							</div>
							<br>
							<p>
								<button type="submit" class="btn btn-default btn-sm">
									<a href='<c:url  value="/cart?id=${book.bookId}"></c:url>'>

										<span class="glyphicon     glyphicon-shopping-cart"> </span> <b>
											Add to Cart </b>
									</a>
								</button>
							</p>


						</c:when>
						<c:when
							test="${book.bookTitle eq 'Harry Potter Box Set The Complete Collection (Set of 7 Volumes) (Paperback)' }">
							<div class="img">
								<img
									src="https://boicycle.com/wp-content/uploads/9780545162074_p3_v1_s600x595.jpg"
									width="200" height="200">
							</div>
							<br>
							<p>
								<button type="submit" class="btn btn-default btn-sm">
									<a href='<c:url  value="/cart?id=${book.bookId}"></c:url>'>

										<span class="glyphicon     glyphicon-shopping-cart"> </span> <b>
											Add to Cart </b>
									</a>
								</button>
							</p>


						</c:when>
						<c:when test="${book.bookTitle eq 'kallikaatu ithikasam' }">
							<div class="img">
								<img
									src="https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/714Fr5dibrL.jpg  	"
									width="200" height="270">
							</div>
							<br>
							<p>
								<button type="submit" class="btn btn-default btn-sm">
									<a href='<c:url  value="/cart?id=${book.bookId}"></c:url>'>

										<span class="glyphicon     glyphicon-shopping-cart"> </span> <b>
											Add to Cart </b>
									</a>
								</button>
							</p>


						</c:when>
						<c:when test="${book.bookTitle eq 'Ancient History' }">
							<div class="img">
								<img
									src="https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/916kc2876fL.jpg  	"
									width="200" height="300">
							</div>
							<br>
							<p>
								<button type="submit" class="btn btn-default btn-sm">
									<a href='<c:url  value="/cart?id=${book.bookId}"></c:url>'>

										<span class="glyphicon     glyphicon-shopping-cart"> </span> <b>
											Add to Cart </b>
									</a>
								</button>
							</p>


						</c:when>
						<c:when
							test="${book.bookTitle eq 'Elon Musk: A Biography of an Entrepreneur' }">
							<div class="img">
								<img
									src="https://m.media-amazon.com/images/I/414XDknuEkL.jpg  	"
									width="200" height="300">
							</div>
							<br>
							<p>
								<button type="submit" class="btn btn-default btn-sm">
									<a href='<c:url  value="/cart?id=${book.bookId}"></c:url>'>

										<span class="glyphicon     glyphicon-shopping-cart"> </span> <b>
											Add to Cart </b>
									</a>
								</button>
							</p>


						</c:when>
						<c:otherwise>
							<div class="img">
								<img
									src="https://img.freepik.com/free-psd/book-hardcover-mockup_125540-225.jpg?w=740&t=st=1678615199~exp=1678615799~hmac=150b5e20a1ff204dc1ffb5ad799d602894ce9b51bb7e83c0345a71a781498b1e "
									width="300" height="250">

							</div>
							<br>
							<p>
								<button type="submit" class="btn btn-default btn-sm">
									<a href='<c:url  value="/cart?id=${book.bookId}"></c:url>'>

										<span class="glyphicon     glyphicon-shopping-cart"> </span> <b>
											Add to Cart </b>
									</a>
								</button>
							</p>



						</c:otherwise>

					</c:choose>
					<br>

					<div>RS: ${book.price }</div>
				</div>
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