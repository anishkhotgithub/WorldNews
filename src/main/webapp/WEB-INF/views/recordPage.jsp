<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<sec:authorize access="hasAuthority('admin')">
	<div class="container mt-4">
		<table class="table table-striped table-dark">
		  <thead>
		    <tr>
		      <th scope="col">Username</th>
		      <th scope="col">EmailID</th>
		      <th scope="col">Authority</th>
		    </tr>
		  </thead>
		  <c:forEach var="row" items="${data}">
		  <form action="/user/recordUpdate" method="POST">
		  <tbody>
		    <tr>
		      <input type="hidden" value="${row.userid}" name="userid" class="bg-dark">
		      <td><input type="text" value="${row.username}" name="username"></td>
		      <td><input type="text" value="${row.emailID}" name="emailID"></td>
		      <td><input type="text" value="${row.authority}" name="authority"></td>
		      <td><input type="submit" value="Update_btn" class="btn btn-primary"></td>
		   </form>
		   	  <td>
				<form action="/user/recordDelete" method="POST">
					<input type="hidden" value="${row.userid}" name="userid">
					<input type="submit" value="DELETE" class="btn btn-danger">
				</form>
			  </td>
		    </tr>
		  </tbody>
		  </c:forEach>
		</table>
	</div>
	</sec:authorize>
	<div class="container mt-4">
		<table class="table table-striped table-dark">
		  <thead>
		    <tr>
		      <th scope="col">Username</th>
		      <th scope="col">EmailID</th>
		      <th scope="col">Authority</th>
		    </tr>
		  </thead>
		  <c:forEach var="row" items="${data}">
		  <tbody>
		    <tr>
		      <td>${row.username}</td>
		      <td>${row.emailID}</td>
		      <td>${row.authority}</td>
		    </tr>
		  </tbody>
		  </c:forEach>
		</table>
	</div>
</body>
</html>