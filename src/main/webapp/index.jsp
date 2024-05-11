
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.Db.DbConnect"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<%@ include file="components/allCSS.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<div id="carouselExample" class="carousel slide">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="images/first.jpg" class="d-block w-100" alt="..."
					height="450px">
			</div>
			<div class="carousel-item">
				<img src="images/second.jpg" class="d-block w-100" alt="..."
					height="450px">
			</div>
			<div class="carousel-item">
				<img src="images/third.jpg" class="d-block w-100" alt="..."
					height="450px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExample" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExample" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2 ">Key Features of Our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">

					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety></p>
								<p>Safety is our top priority</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>A clean environment is a happy environment.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctor</p>
								<p>Our compassionate doctors are here to care for you.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Purpose of medical research is to improve health.</p>
							</div>
						</div>
					</div>

				</div>
			</div>

			<div class="col-md-4">
				<img alt="Doctor image" src="images/doc.jpg" width="450px"
					height="300px">
			</div>
		</div>
	</div>
	<hr>

	<div class="container p-2">
		<p class="text-center fs-2 ">Our Team</p>

		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="images/doc1.jpg" width="280px" height="300px" alt="DOC1">
						<p class="fw-bold fs-5">Eddie Frommer</p>
						<p class="fs-7">(CEO and Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="images/doc2.jpg" width="280px" height="300px" alt="DOC2">
						<p class="fw-bold fs-5">Dr. Christina Seright</p>
						<p class="fs-7">(Cheif Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="images/doc3.jpg" width="280px" height="300px" alt="DOC3">
						<p class="fw-bold fs-5">Dr. Billy Mahurin</p>
						<p class="fs-7">(Cheif Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="images/doc4.jpg" width="280px" height="300px" alt="">
						<p class="fw-bold fs-5">Dr. Hayden Maull</p>
						<p class="fs-7">(Cheif Doctor)</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="components/footer.jsp"%>
</body>
</html>