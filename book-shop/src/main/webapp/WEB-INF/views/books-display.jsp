<%@page import="com.ty.bookshop.model.Order"%>
<%@page import="com.ty.bookshop.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
ServletContext context = getServletContext();
Order ordered = (Order) context.getAttribute("ordered");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>display books</title>

<style type="text/css">
.col-6 {
	display: flex;
}

.left-div {
	flex-basis: 50%;
}

.right-div {
	flex-basis: 50%;
}
</style>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<%
	if (ordered != null) {
	%>
	<div class="container">
		<h2 id="Message" style="color: Green; text-align: center;">
			Your Order ID is :
			<%=ordered.getOrderId()%></h2>


	</div>
	<%
	}
	if (ordered != null) {
	try {
		Thread.sleep(3000);

		context.removeAttribute("ordered");

	} catch (Exception exception) {
		exception.printStackTrace();
	}

	}
	%>

	<div class="container">
		<div>
			<div id="Message" style="color: red; text-align: center;">
				${error}</div>
		</div>

		<div class="container">
			<div>
				<div id="Message" style="color: red; text-align: center;">
					${successfull}</div>


			</div>

			<br>
			<div class="container mt-3">
				<h2>ONLINE BOOKS</h2>
				<marquee style="color: white; background: #8c061a">WELCOME
					HERE WE PROVIEDS VARIOUS BOOKS IN OUR ONLINE WEBSITE KEEP SHOPPING
					IN OUR WEBSITE</marquee>
				<hr>
				<div class="container overflow-hidden">
					<div class="row gy-5">
						<c:forEach var="list" items="${list }">
							<c:choose>
								<c:when test="${list.bookTitle eq 'Wings of Fire' }">

									<div class="col-6">
										<div class="p-3 border bg-light">${list.bookTitle }
											<hr>
											<div class="left-div">
												<img
													src="https://i0.wp.com/www.scribblewhatever.com/wp-content/uploads/2020/11/Wings-of-Fire-1.jpg?fit=1086%2C1086&ssl=1"
													width="200" height="200">
											</div>
											<br>
											<div class="right-div">${list.author }</div>
											<hr>
											<h5>RS: ${list.price }</h5>
											<br>
											<p>
												<button type="submit" class="btn btn-default btn-sm">
													<a href='<c:url  value="/cart?id=${list.bookId}"></c:url>'>

														<span class="glyphicon     glyphicon-shopping-cart">
													</span> <b> Add to Cart </b>
													</a>
												</button>
											</p>

										</div>

									</div>


								</c:when>
								<c:when test="${list.bookTitle eq 'A brief history of times' }">

									<div class="col-6">
										<div class="p-3 border bg-light">${list.bookTitle }
											<hr>
											<div class="left-div">
												<img
													src="https://productimages.worldofbooks.com/0593060504.jpg"
													width="200" height="280">
											</div>
											<br>
											<div class="right-div">${list.author }</div>
											<hr>

											<h5>RS: ${list.price }</h5>
											<br>
											<p>
												<button type="button" class="btn btn-default btn-sm">
													<a href='<c:url  value="/cart?id=${list.bookId}"></c:url>'>

														<span class="glyphicon     glyphicon-shopping-cart">
													</span> <b> Add to Cart </b>
													</a>
												</button>

											</p>

										</div>
									</div>


								</c:when>
								<c:when test="${list.bookTitle eq 'DO EPIC SHIT.' }">

									<div class="col-6">
										<div class="p-3 border bg-light">${list.bookTitle }
											<hr>
											<div class="left-div">
												<img
													src="https://www.ajayonlinestall.com/wp-content/uploads/2022/01/9789391165482.jpg"
													width="200" height="200">
											</div>
											<br>
											<div class="right-div">${list.author }</div>
											<hr>

											<h5>RS: ${list.price }</h5>
											<br>
											<p>
												<button type="button" class="btn btn-default btn-sm">
													<a href='<c:url  value="/cart?id=${list.bookId}"></c:url>'>

														<span class="glyphicon     glyphicon-shopping-cart">
													</span> <b> Add to Cart </b>
													</a>
												</button>
											</p>

										</div>
									</div>


								</c:when>

								<c:when
									test="${list.bookTitle eq 'Harry Potter Box Set The Complete Collection (Set of 7 Volumes) (Paperback)' }">

									<div class="col-6">
										<div class="p-3 border bg-light">
											Harry Potter
											<hr>
											<div class="left-div">
												<img
													src="https://boicycle.com/wp-content/uploads/9780545162074_p3_v1_s600x595.jpg"
													width="200" height="200">
											</div>
											<br>
											<div class="right-div">${list.author }</div>
											<hr>

											<h5>RS: ${list.price }</h5>
											<br>
											<p>
												<button type="button" class="btn btn-default btn-sm">
													<a href='<c:url  value="/cart?id=${list.bookId}"></c:url>'>

														<span class="glyphicon     glyphicon-shopping-cart">
													</span> <b> Add to Cart </b>
													</a>
												</button>
											</p>


										</div>
									</div>


								</c:when>

								<c:when test="${list.bookTitle eq 'kallikaatu ithikasam' }">

									<div class="col-6">
										<div class="p-3 border bg-light">
											${list.bookTitle }
											<hr>
											<div class="left-div">
												<img
													src="https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/714Fr5dibrL.jpg"
													width="200" height="250">
											</div>
											<br>
											<div class="right-div">${list.author }</div>
											<hr>

											<h5>RS: ${list.price }</h5>
											<br>
											<p>
												<button type="button" class="btn btn-default btn-sm">
													<a href='<c:url  value="/cart?id=${list.bookId}"></c:url>'>

														<span class="glyphicon     glyphicon-shopping-cart">
													</span> <b> Add to Cart </b>
													</a>
												</button>
											</p>


										</div>
									</div>


								</c:when>
								<c:when test="${list.bookTitle eq 'Ancient History' }">

									<div class="col-6">
										<div class="p-3 border bg-light">
											${list.bookTitle }
											<hr>
											<div class="left-div">
												<img
													src="https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/916kc2876fL.jpg"
													width="200" height="280">
											</div>
											<br>
											<div class="right-div">${list.author }</div>
											<hr>

											<h5>RS: ${list.price }</h5>
											<br>
											<p>
												<button type="button" class="btn btn-default btn-sm">
													<a href='<c:url  value="/cart?id=${list.bookId}"></c:url>'>

														<span class="glyphicon     glyphicon-shopping-cart">
													</span> <b> Add to Cart </b>
													</a>
												</button>
											</p>


										</div>
									</div>


								</c:when>
								<c:when
									test="${list.bookTitle eq 'Elon Musk: A Biography of an Entrepreneur' }">

									<div class="col-6">
										<div class="p-3 border bg-light">
											A Biography of an Entrepreneur
											<hr>
											<div class="left-div">
												<img
													src="https://m.media-amazon.com/images/I/414XDknuEkL.jpg"
													width="200" height="280">
											</div>
											<br>
											<div class="right-div">${list.author }</div>
											<hr>

											<h5>RS: ${list.price }</h5>
											<br>
											<p>
												<button type="button" class="btn btn-default btn-sm">
													<a href='<c:url  value="/cart?id=${list.bookId}"></c:url>'>

														<span class="glyphicon     glyphicon-shopping-cart">
													</span> <b> Add to Cart </b>
													</a>
												</button>
											</p>

										</div>
									</div>


								</c:when>
								<c:when test="${list.bookTitle eq 'Rich Dad Poor Dad' }">

									<div class="col-6">
										<div class="p-3 border bg-light">
											Rich Dad Poor Dad
											<hr>
											<div class="left-div">
												<img
													src="https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/51Hfv2MfNGL._SX331_BO1,204,203,200_.jpg"
													width="200" height="280">
											</div>
											<br>
											<div class="right-div">${list.author }</div>
											<hr>

											<h5>RS: ${list.price }</h5>
											<br>
											<p>
												<button type="button" class="btn btn-default btn-sm">
													<a href='<c:url  value="/cart?id=${list.bookId}"></c:url>'>

														<span class="glyphicon     glyphicon-shopping-cart">
													</span> <b> Add to Cart </b>
													</a>
												</button>

											</p>


										</div>
									</div>


								</c:when>
								<c:when
									test="${list.bookTitle eq 'Exploring Translation Theories' }">

									<div class="col-6">
										<div class="p-3 border bg-light">
											Exploring Translation Theories
											<hr>
											<div class="left-div">
												<img
													src="https://images.tandf.co.uk/common/jackets/crclarge/978041583/9780415837910.jpg"
													width="200" height="280">
											</div>
											<br>
											<div class="right-div">${list.author }</div>
											<hr>

											<h5>RS: ${list.price }</h5>
											<br>
											<p>
												<button type="submit" class="btn btn-default btn-sm">
													<a href='<c:url  value="/cart?id=${list.bookId}"></c:url>'>

														<span class="glyphicon     glyphicon-shopping-cart">
													</span> <b> Add to Cart </b>
													</a>
												</button>
											</p>
										</div>
									</div>

								</c:when>
							</c:choose>

						</c:forEach>
					</div>
				</div>
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
