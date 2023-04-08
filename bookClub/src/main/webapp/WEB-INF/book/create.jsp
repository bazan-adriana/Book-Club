<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<meta charset="UTF-8">
<title>CREATE PAGE</title>
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-end">
        <div class="col-md-4 mt-3 mt-md-0">
            <a href="/" class="btn btn-outline-primary">Back to the shelves</a>
        </div>
    </div>
    </div>

	<div class="container text-center mt-5">
	<h2>Add a Book to Your Shelf!</h2>
		<form:form action="/books/process/create" modelAttribute="book" method="post">
			<form:input type="hidden" path="donor" value="${user_id }"/>
			<div>
			<br>
				<label>Title</label>
				<form:input type="text" path="title"/>
				<form:errors path="title" class="text-danger"/>
			</div>
			<br>
			<div>
				<label>Author</label>
				<form:input type="text" path="author"/>
				<form:errors path="author" class="text-danger"/>
			</div>
			<br>
			<div>
				<label>My Thoughts</label>
				<form:input type="text" path="thoughts"/>
				<form:errors path="thoughts" class="text-danger"/>
			</div>
			<br>
			<input type="submit" value="Add book" class="btn btn-outline-success"/>
			</form:form>
			</div>
</body>
</html>