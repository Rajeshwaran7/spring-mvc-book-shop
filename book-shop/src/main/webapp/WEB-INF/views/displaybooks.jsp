<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>display books</title>
</head>
<body>
	<jsp:include page="admin.jsp"></jsp:include>

	<div class="container mt-3">
		<h2>ONLINE BOOKS</h2>
		<p>Books are available</p>
		<table class="table table-striped table-hover">
			<tr>
				<th>Category</th>
				<th>Title</th>
				<th>Author</th>
				<th>Price</th>
				<th colspan="2">ACTION</th>
			</tr>
			<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.category.name}</td>
					<td>${list.bookTitle}</td>
					<td>${list.author}</td>
					<td>${list.price}</td>
					<td><a
						href="<c:url value="/action?id=${list.bookId}"/>">Edit</a></td>
					<td><a
						href="<c:url value="/delete?id=${list.bookId}"/>">DELETE</a></td>

				</tr>

			</c:forEach>

		</table>
	</div>

</body>
</html>