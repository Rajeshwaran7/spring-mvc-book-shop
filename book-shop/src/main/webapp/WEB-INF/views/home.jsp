<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK ONLINE STORE</title>
<style type="text/css">
* {
	box-sizing: border-box;
}

* {
	box-sizing: border-box
}

body {
	font-family: Verdana, sans-serif;
	margin: 0
}

/* Slideshow container */
.slideshow-container {
	position: relative;
	background: #f1f1f1f1;
}

/* Slides */
.mySlides {
	display: none;
	padding: 80px;
	text-align: center;
}

/* Next & previous buttons */
.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	margin-top: -30px;
	padding: 16px;
	color: #888;
	font-weight: bold;
	font-size: 20px;
	border-radius: 0 3px 3px 0;
	user-select: none;
}

/* Position the "next button" to the right */
.next {
	position: absolute;
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
	color: white;
}

/* The dot/bullet/indicator container */
.dot-container {
	text-align: center;
	padding: 20px;
	background: #ddd;
}

/* The dots/bullets/indicators */
.dot {
	cursor: pointer;
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

/* Add a background color to the active dot/circle */
.active, .dot:hover {
	background-color: #717171;
}

/* Add an italic font style to all quotes */
q {
	font-style: italic;
}

/* Add a blue color to the author */
.author {
	color: cornflowerblue;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.container {
	padding: 64px;
}

.row:after {
	content: "";
	display: table;
	clear: both
}

.column-66 {
	float: left;
	width: 66.66666%;
	padding: 20px;
}

.column-33 {
	float: left;
	width: 33.33333%;
	padding: 20px;
}

.large-font {
	font-size: 48px;
}

.xlarge-font {
	font-size: 64px
}

.button {
	border: none;
	color: white;
	padding: 14px 28px;
	font-size: 16px;
	cursor: pointer;
	background-color: #04AA6D;
}

img {
	display: block;
	height: auto;
	max-width: 100%;
}

@media screen and (max-width: 1000px) {
	.column-66, .column-33 {
		width: 100%;
		text-align: center;
	}
	img {
		margin: auto;
	}
}
</style>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<br>
	<div style="text-align: center">
		<h2  style="color:navy ; font-weight: 700;font-stretch: wider;		">Buy Your Desired Books</h2>
		<p style="color: red; font-weight: 500;">With Joyfull And Amazing Experience.</p>
		
		<!-- The App Section -->
		<div class="container">
			<div class="row">
				<div class="column-66">
					<h1 class="xlarge-font">
						<b>Book Shop</b>
					</h1>
					<div class="column-33">
					<img
						src= "https://cdn.dribbble.com/users/1003944/screenshots/14172755/media/34f773a7849807396bc92929b28222f7.gif"
						width="600" height="581">
				</div>
					<h1 class="large-font" style="color: MediumSeaGreen;">
						<b>Why buy it?</b>
					</h1>
					<p>
						<span style="font-size: 36px">Get books like a pro.</span> You
						should buy this app because to enhance and explore your knowledge.
						Books are a great source of knowledge on a wide range of topics.
						Whether you're interested in history, science, literature, or any
						other subject, there's probably a book that covers it in detail.
						Reading books can help you improve your vocabulary and language
						skills. The more you read, the more exposure you have to new words
						and phrases, which can help you communicate more effectively.
					</p>
					<button class="button">Download Application</button>
				</div>
				
			</div>
		</div>
				<br> <br>
		<!-- Clarity Section -->
		
		<div  style="background-color: #f1f1f1">
			<div class="row">
				<div class="column-33" align="center">
					<img
						src="https://cdn.dribbble.com/users/653185/screenshots/4596952/media/79f2a0be081a92bf14e2af0946692ed7.gif"
						alt="App" width="450" height="600" >
				</div>
				<div class="column-66">
					<h1 class="xlarge-font">
						<b>KNOWLEDGE</b>
					</h1>
					<h1 class="large-font" style="color: red;">
						<b>Growth, who?</b>
					</h1>
					<div class="container">
					<p>
						<span style="font-size: 24px">A revolution in quality of
							person.</span> This online book store is a website or platform where
						users can browse, purchase, and download digital or physical
						books. These stores provide an extensive collection of books
						covering a wide range of topics and genres, often at competitive
						prices. Online book stores usually have a user-friendly interface
						that allows customers to search for books by author, title, genre,
						or keywords.
					</p>
					</div>
					<button class="button" style="background-color: red;">
						<a style="color: white; text-decoration: none;"
							href="./books-display">BUY BOOKS</a>
					</button>
				</div>
			</div>
		</div>



		<!-- The App Section -->
		<div class="container">
			<div class="row">
				<div class="column-66">
					<h1 class="xlarge-font">
						<b>Book Shop</b>
					</h1>
					<h1 class="large-font" style="color: MediumSeaGreen;">
						<b>Why buy it?</b>
					</h1>
					<p>
						<span style="font-size: 36px">Get books like a pro.</span> Today,
						books continue to be an important medium of learning and
						entertainment, with millions of new titles published every year.
						They can be accessed through physical bookstores, libraries, and
						online platforms, making them easily accessible to anyone with an
						interest in reading.

					</p>
					<button class="button">Download Application</button>
				</div>
				<div class="column-33">
					<img
						src="https://i2.wp.com/pennmoney.com/wp-content/uploads/2021/06/reading.jpeg?resize=768%2C576"
						width="435" height="571">
				</div>
			</div>
		</div>

		<script>
			var slideIndex = 1;
			showSlides(slideIndex);

			function plusSlides(n) {
				showSlides(slideIndex += n);
			}

			function currentSlide(n) {
				showSlides(slideIndex = n);
			}

			function showSlides(n) {
				var i;
				var slides = document.getElementsByClassName("mySlides");
				var dots = document.getElementsByClassName("dot");
				if (n > slides.length) {
					slideIndex = 1
				}
				if (n < 1) {
					slideIndex = slides.length
				}
				for (i = 0; i < slides.length; i++) {
					slides[i].style.display = "none";
				}
				for (i = 0; i < dots.length; i++) {
					dots[i].className = dots[i].className
							.replace(" active", "");
				}
				slides[slideIndex - 1].style.display = "block";
				dots[slideIndex - 1].className += " active";
			}
		</script>
</body>
</html>
