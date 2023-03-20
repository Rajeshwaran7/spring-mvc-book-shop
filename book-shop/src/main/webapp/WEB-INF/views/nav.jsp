<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">

.dropdown-item .em{
border:1px solid green;
width: 280px;
	height: 39px;
}
.dropdown-item .btn btn-outline-success{
text-align: center;

}

</style>
<title>Book online</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="background-color: #e3f2fd">
		<div class="container-fluid">
			<a class="navbar-brand" href="./home">BOOK SHOP</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="./home">HOME</a></li>
					<li class="nav-item"><a class="nav-link"
						href="./books-display">BOOKS</a></li>
					<li class="nav-item"><a class="nav-link" href="./get-author">AUTHOR</a></li>
					<li class="nav-item"><a class="nav-link" href="cart-table">CART</a></li>


					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							CATEGORIES </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="./get-novel">Novel</a></li>
							<li><a class="dropdown-item" href="./get-selfhelp">Self-Help</a></li>
							<li><a class="dropdown-item" href="./get-translation">Translation</a></li>
							<li><a class="dropdown-item" href="./get-history">History</a></li>
							<li><a class="dropdown-item" href="./get-biography">Biography</a></li>
							<li><a class="dropdown-item" href="./get-science">Science</a></li>
							<li><a class="dropdown-item" href="./get-poetry">Poetry</a></li>

							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">BACK</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							ENROLL </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">

							<li><a class="dropdown-item" href="./register">REGISTER</a></li>
							<li><hr class="dropdown-divider"></li>

							<li><a class="dropdown-item" href="./admin-page">ADMIN </a></li>

							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">BACK</a></li>
						</ul></li>


					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							TRACK YOUR ORDER </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="track-order">TRACK BY
									ORDER NUMBER</a></li>
							<hr>
							<li class="dropdown-item">
								<form action="my-order">
									<input class="em"  type="email" name="email" placeholder="TRACK BY EMAIL"
										required="required"> <br> <br> <input
										class="btn btn-outline-success" type="submit" value="Track" />
								</form>
							</li>

							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">BACK </a></li>
						</ul></li>

				</ul>
				<form class="d-flex" action="search-user">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search" name="bookTitle" required="required">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
</body>
</html>