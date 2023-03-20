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
		<h1>AUTHORS</h1>
		<hr>
		<br>
		<div class="container">


			<div class="container overflow-hidden">
				<div class="row gy-5">
					<c:forEach var="author" items="${authors}">
						<c:choose>
							<c:when test="${author eq 'Ankur Warikoo'}">

								<div class="col-6">
									<div class="p-3 border bg-light">
										<h5>${author }</h5>
										<div>
											<img
												src="https://media.licdn.com/dms/image/D4D03AQHW7rG3cPqBiQ/profile-displayphoto-shrink_800_800/0/1670902721264?e=2147483647&v=beta&t=MIyL3wgX71B2-Rn2jUjFffIXF_PlNOUqmE6d0vx5lBE"
												width="200" height="200">
										</div>
									</div>
								</div>

							</c:when>
							<c:when test="${author eq 'sephean hawking'}">

								<div class="col-6">
									<div class="p-3 border bg-light">
										<h5>${author }</h5>
										<div>
											<img
												src="https://i.guim.co.uk/img/media/b36ce1d3e4122c3d9ea61aae97435427a2be6db7/0_314_3356_2014/master/3356.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=60ab4090e8670420d755b58c39ab63b4"
												width="200" height="200">
										</div>
									</div>
								</div>

							</c:when>
							<c:when test="${author eq 'JK Rowling'}">

								<div class="col-6">
									<div class="p-3 border bg-light">
										<h5>${author }</h5>
										<div>
											<img
												src="https://media-cldnry.s-nbcnews.com/image/upload/newscms/2020_26/3155921/191219-j-k-rowling-2018-ac-845p.jpg"
												width="200" height="200">
										</div>
									</div>
								</div>

							</c:when>
							<c:when test="${author eq 'Dr.APJ Abdul Kalam'}">

								<div class="col-6">
									<div class="p-3 border bg-light">
										<h5>${author }</h5>
										<div>
										 <img
												src="https://www.apjabdulkalamfoundation.org/images/about/abdulkalamprofile.jpg"
												width="200" height="200">
										</div>
									</div>
								</div>

							</c:when>
							<c:when test="${author eq 'vairamuthu'}">

								<div class="col-6">
									<div class="p-3 border bg-light">
										<h5>${author }</h5>
										<div>
											<br> <img
												src="https://upload.wikimedia.org/wikipedia/commons/f/f3/Pratibha_Devisingh_Patil_presenting_the_Rajat_Kamal_Award_to_Shri_Vairamuthu_for_the_Best_Lyrics_%28Tamil_Thenmerkku_Paruvakkatru%29%2C_at_the_58th_National_Film_Awards_function%2C_in_New_Delhi_on_September_09%2C_2011_%28cropped%29.jpg"
												width="200" height="200">
										</div>
									</div>
								</div>

							</c:when>
							<c:when test="${author eq 'Elon Musk'}">

								<div class="col-6">
									<div class="p-3 border bg-light">
										<h5>${author }</h5>
										<div>
											 <img
												src="https://hips.hearstapps.com/hmg-prod/images/gettyimages-1229892983-square.jpg?resize=1200:*"
												width="200" height="200">
										</div>
									</div>
								</div>

							</c:when>
							<c:when test="${author eq 'Rob Delaney'}">

								<div class="col-6">
									<div class="p-3 border bg-light">
										<h5>${author }</h5>
										<div>
											<img
												src="data:image/jpeg;base64,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"
												width="200" height="200">
										</div>
									</div>
								</div>

							</c:when>
							<c:when test="${author eq 'R.RadhaKrishnan'}">

								<div class="col-6">
									<div class="p-3 border bg-light">
										<h5>${author }</h5>
										<div>
											 <img
												src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO4OtXlIJMoPqz2v2Dp1VWyl2TynWZKE7NcnqHs50S0WUovwmUTJc8Nf5n68z-rjlgXno&usqp=CAU"
												width="200" height="200">
										</div>
									</div>
								</div>

							</c:when>
							<c:when test="${author eq 'David Bellos'}">

								<div class="col-6">
									<div class="p-3 border bg-light">
										<h5>${author }</h5>
										<div>
											<img
												src="https://fit.princeton.edu/sites/g/files/toruqf2351/files/styles/3x4_750w_1000h/public/people/davidbellos0919_0001.jpg?h=372bea4d&itok=sI_E8GbJ"
												width="200" height="200">
										</div>
									</div>
								</div>

							</c:when>

							<c:when test="${author eq 'Eric Brown'}">

								<div class="col-6">
									<div class="p-3 border bg-light">
										<h5>${author }</h5>
										<div>
											<img
												src="https://cdn.thecwa.co.uk/wp-content/uploads/2021/04/17173738/CWA-Author-Eric-Brown-1-300x332.jpg"
												width="200" height="200">
										</div>
									</div>
								</div>

							</c:when>
						</c:choose>
					</c:forEach>

				</div>
			</div>

		</div>
	</div>

</body>
</html>