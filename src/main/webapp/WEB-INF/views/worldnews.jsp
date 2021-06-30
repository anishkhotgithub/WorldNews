<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<img alt="" src="data:image/png;base64,${image}" width="300" height="300">
	</div>
</body>
</html>