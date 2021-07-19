<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h1>Register page</h1>
	<div class="container">
	<sp:form modelAttribute="user" action="/user/inserted" method="post">
			<div class="form-group">
				<label>Username</label>
				<sp:input path="username" placeholder="Enter Username" class="form-control"/>
				<sp:errors path="username" class="text-danger"></sp:errors>
			</div>
			<div class="form-group">
				<label>Email</label>
				<sp:input path="emailID" placeholder="Enter Email" class="form-control"/>
				<sp:errors path="emailID" class="text-danger"></sp:errors>
			</div>
			
			<div class="form-group">
				<label>Password</label>
				<sp:input path="password" placeholder="Enter password" class="form-control"/>
				<sp:errors path="password" class="text-danger"></sp:errors>
			</div>
			
			
			<div class="form-group">
				<input type="submit" value="Submit" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
	</sp:form>
	</div>
</body>
</html>