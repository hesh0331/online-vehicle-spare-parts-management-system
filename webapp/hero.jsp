<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CDN for guaranteed styles -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>User Profile</title>
<style>
html, body {
	height: 100%;
}

body {
	background: #f5f7fa;
	min-height: 100vh;
	margin: 0;
	display: flex;
	flex-direction: column;
}

.header, .footer {
	background: #0d6efd;
	color: #fff;
	padding: 24px 0;
	text-align: center;
	font-size: 1.5rem;
	letter-spacing: 1px;
}

.footer {
	background: #343a40;
	font-size: 1rem;
}

.main-content {
	flex: 1 0 auto;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	min-height: 0;
}

.profile-card {
	width: 100%;
	max-width: 700px;
	background: #fff;
	border-radius: 16px;
	padding: 40px 40px;
	margin-top: 40px;
	margin-bottom: 40px;
}

@media ( max-width : 900px) {
	.profile-card {
		max-width: 98vw;
		padding: 24px 8px;
		margin-top: 24px;
		margin-bottom: 24px;
	}
}

.profile-fields .form-floating {
	margin-bottom: 1rem;
	border-bottom: 1px solid #e9ecef;
	padding-bottom: 0.5rem;
}

.profile-fields .form-floating:last-child {
	border-bottom: none;
}

.form-floating>.form-control:disabled, .form-floating>.form-control[readonly]
	{
	background-color: #f8f9fa;
	color: #495057;
	border: none;
	box-shadow: none;
	font-weight: 500;
}

.profile-actions {
	margin-top: 24px;
	display: flex;
	gap: 16px;
	justify-content: center;
}

.profile-actions .btn {
	min-width: 110px;
	font-weight: 500;
	border-radius: 8px;
}
</style>
</head>
<body>
	<div class="header">My Application Header</div>
	<div class="main-content">
		<div class="profile-card">
			<h2 class="text-center mb-4">My Profile</h2>
			<c:set var="use" value="${user}" />
			<fieldset disabled>
				<div class="profile-fields">
					<div class="form-floating mb-2">
						<input type="text" class="form-control" id="uid" name="uid"
							value="${use.uid}"> <label for="uid">UID</label>
					</div>
					<div class="form-floating mb-2">
						<input type="text" class="form-control" id="fname" name="fname"
							value="${use.fname}" placeholder="Ayesha"> <label
							for="fname">First Name</label>
					</div>
					<div class="form-floating mb-2">
						<input type="text" class="form-control" id="lname" name="lname"
							value="${use.lname}" placeholder="Withanage"> <label
							for="lname">Last Name</label>
					</div>
					<div class="form-floating mb-2">
						<input type="text" class="form-control" id="age" name="age"
							value="${use.age}" placeholder="25"> <label for="age">Age</label>
					</div>
					<div class="form-floating mb-2">
						<input type="text" class="form-control" id="gender" name="gender"
							value="${use.gender}" placeholder="Male"> <label
							for="gender">Gender</label>
					</div>
					<div class="form-floating mb-2">
						<input type="email" class="form-control" id="email" name="email"
							value="${use.email}" placeholder="name@example.com"> <label
							for="email">Email</label>
					</div>
					<div class="form-floating mb-2">
						<input type="text" class="form-control" id="phone" name="phone"
							value="${use.phone}" placeholder="0770523642"> <label
							for="phone">Phone</label>
					</div>
					<div class="form-floating mb-2">
						<input type="password" class="form-control" id="password"
							name="password" value="${use.password}" placeholder="agw12">
						<label for="password">Password</label>
					</div>
					<div class="form-floating mb-2">
						<input type="text" class="form-control" id="type" name="type"
							value="${use.type}" placeholder="User"> <label for="type">Type</label>
					</div>
				</div>
			</fieldset>
			<div class="profile-actions">
				<form method="post" action="update.jsp">
					<input type="hidden" name="uid" value="${use.uid}"> <input
						type="hidden" name="fname" value="${use.fname}"> <input
						type="hidden" name="lname" value="${use.lname}"> <input
						type="hidden" name="age" value="${use.age}"> <input
						type="hidden" name="gender" value="${use.gender}"> <input
						type="hidden" name="email" value="${use.email}"> <input
						type="hidden" name="phone" value="${use.phone}"> <input
						type="hidden" name="password" value="${use.password}"> <input
						type="hidden" name="type" value="${use.type}">
					<button type="submit" class="btn btn-primary">Update</button>
				</form>
				<form method="post" action="deleteUser">
					<input type="hidden" name="uid" value="${use.uid}">
					<button type="submit" class="btn btn-danger">Delete</button>
				</form>
			</div>
		</div>
	</div>
	<div class="footer">&copy; 2025 My Application Footer</div>
</body>
</html>
