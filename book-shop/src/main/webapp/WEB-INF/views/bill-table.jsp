<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
input {
	border: none;
	width: 120px
}
</style>

<title>bill</title>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="container mt-5">
		<div class="d-flex justify-content-center row">
			<div class="col-md-8">
				<form action="order-success">

					<div class="p-3 bg-white rounded">
						<div class="row">
							<div class="col-md-6">
								<h1 class="text-uppercase">Invoice</h1>
								<div class="billed">
									<span class="font-weight-bold text-uppercase">Billed:</span><span
										class="ml-1">${orderBills.user.name } </span>
								</div>

							</div>
							<div class="col-md-6 text-right mt-3">
								<h4 class="text-danger mb-0">${orderBills.user.name }</h4>
								<span> <input type="text" name="email"
									value="${orderBills.user.email }" readonly="readonly">

								</span>
							</div>
							
							
						</div>
						<div class="mt-3">
							<div class="table-responsive">
								<hr>

								<table class="table" border="1">
									<thead>
										<tr>
											<th>Product</th>
											<th>Author</th>
											<th>Quantity</th>
											<th>Price</th>
											<th>Total</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input type="text" name="bookTitle"
												value="${orderBills.bookTitle }" readonly="readonly"></td>
											<td><input type="text" name="author"
												value="${orderBills.author }" readonly="readonly"></td>
											<td><input type="text" name="quantity"
												value="${orderBills.quantity }" readonly="readonly" /></td>
											<td><input type="text" name="price"
												value="${orderBills.price }" readonly="readonly" /></td>
											<td><input type="text" name="totalPrice"
												value="${orderBills.totalPrice}" readonly="readonly" /></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="text-right mb-3">
							<button class="btn btn-danger btn-sm mr-5" type="submit">Pay
								Now</button>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>