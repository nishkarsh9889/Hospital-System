<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg bg-success bg-gradien">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fas fa-clinic-medical"></i> Medi-Now</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link active"
					href="index.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="doctor.jsp">ADD DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="view_doctor.jsp">VIEW DOCTORS</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="patient.jsp">PATIENTS</a></li>
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-success dropdown-toggle" type="button"
						data-bs-toggle="dropdown" aria-expanded="false">
						<i class="fa-solid fa-user"></i> Admin
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../adminLogout">Logout</a>
					</ul>
				</div>
			</form>

		</div>
	</div>
</nav>