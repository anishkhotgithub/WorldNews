<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<h1>Upload new Photo</h1>
		<form method="POST" action="/worldnews/add" enctype="multipart/form-data">
		    Title:<input type="text" name="title" />
		    Image:<input type="file" name="image" accept="image/*" />
		    <input type="submit" value="Upload" />
		</form>
	</div>
</body>
</html>