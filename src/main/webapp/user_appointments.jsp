
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.*"%>
<%@page import="com.Db.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@ include file="components/allCSS.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, -4), rgba(0, 0, 0, -4)),
		url("");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>

</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<div class="container-fluid backImg p-5">
		<div class="row">
			<div class="col-md-6 p-5">
				<img alt="" src="images/doc1.jpg">
			</div>

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Book Appointment</p>

						<c:if test="${not empty succMsg}">
							<p class="text-center text-success fs-3">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="AppointmentServlet" class="row g-3" method="post">

							<input type="hidden" name="userId" value="${userObj.id}">

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full Name</label><input
									required name="fullname" type="text" class="form-control">
							</div>

							<div class="col-md-6">
								<label>Gender</label> <select class="form-control" name="gender"
									required>
									<option value="male">Male</option>
									<option>Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Age</label><input
									required name="age" type="number" class="form-control">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Appointment
									Date</label><input required name="appointDate" type="date"
									class="form-control">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label><input
									required name="email" type="email" class="form-control">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Phone no</label><input
									maxlength="10" required name="phNo" type="number"
									class="form-control">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Diseases</label><input
									required name="diseases" type="text" class="form-control">
							</div>

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Doctor</label> <select
									required class="form-control" name="doct">
									<option value="">--select--</option>

									<%
									DoctorDao dao = new DoctorDao(DbConnect.getConn());
									List<Doctor> list = dao.getAllDoctor();
									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)
									</option>
									<%
									}
									%>
								</select>
							</div>

							<c:if test="${empty userObj}">
								<a href="users.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							</c:if>
							<c:if test="${not empty userObj}">
								<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>