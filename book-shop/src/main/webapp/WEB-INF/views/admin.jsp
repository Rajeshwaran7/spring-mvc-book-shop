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


<title>admin</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="background-color: #e3f2fd">
		<div class="container-fluid">
			<a class="navbar-brand" href="./admin">ADMIN</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="./addbook">ADD BOOKS</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="./displaybooks"> BOOKS</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							EXIT </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">

							<li><a class="dropdown-item" href="./admin-page">LOG OUT</a></li>

							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">BACK</a></li>
						</ul></li>
				</ul>
				<form class="d-flex" action="search-admin">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search" name = "bookTitle"  required="required">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>


</body>
</html>