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

<title>order-table</title>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<h1>Order Table</h1>
		</div>
		<div class="row">
			<div class="col-lg-3">
				<a href="./track-order" class="btn btn-primary btn-sm mb-3">
					Back</a>
			</div>
		</div>
		<table class="table table-striped table-bordered">
			<thead class="table-dark">
				<tr>
					<th>Order Id</th>
					<th>Name</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Total Price</th>
					<th>Order Status</th>
				</tr>
			</thead>

			<tbody>
					<tr>
						<td>${orderBills.orderId }</td>
						<td>${orderBills.user.name }</td>
						<td>${orderBills.bookTitle }</td>
						<td>${orderBills.price }</td>
						<td>${orderBills.quantity}</td>
						<td>${orderBills.totalPrice }</td>
						<td style="color: green;font-weight: 600">Placed</td>
					</tr>
			</tbody>

		</table>

	</div>


</body>
</html>