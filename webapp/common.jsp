<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Common JSP file</title>

<!-- Link bootstrap style sheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">

<!-- Link bootstrap icons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-icons.css">

<!-- Favicon -->
<link rel="icon"
	href="${pageContext.request.contextPath}/images/favicon.ico"
	type="image/x-icon">

<!-- Link style sheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>
	<!-- include header -->
	<jsp:include page="Header.jsp" />

	<!-- include top bar -->
	<jsp:include page="TopBar.jsp" />






	<!-- include footer -->
	<jsp:include page="Footer.jsp" />

	<!-- Link bootstrap script file -->
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"
		defer></script>
</body>
</html>