<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Not found</title>
<style type="text/css">
.no-results {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

.no-results-content {
	text-align: center;
}


.no-results-animation img {
	width: 150px;
	height: 150px;
}

@
keyframes bounce { 0% {
	transform: translateY(0);
}
50


%
{
transform


:


translateY
(


-10px


)
;


}
100


%
{
transform


:


translateY
(


0


)
;


}
}
</style>
</head>
<body>
	<jsp:include page="admin.jsp"></jsp:include>

	<div class="no-results">
		<div class="no-results-content">
			<h1>No Results Found</h1>
			<p>Please try a different search term.</p>
		</div>
		
	</div>

</body>
</html>