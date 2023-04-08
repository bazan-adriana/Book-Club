<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<meta charset="UTF-8">
<title>DISPLAY ONE </title>
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-end">
        <div class="col-md-4 mt-3 mt-md-0">
            <a href="/" class="btn btn-outline-primary">Back to the shelves</a>
        </div>
    </div>
    <h3 style="color:blue"><c:out value="${book.title}"/></h3>
</div>
<div class="container mt-5"> 
    <p style="color:deeppink"><c:out value="${book.donor.userName}"/> 
    <span style="color:black">read</span>
    <span style="color:blue"><c:out value="${book.title}"/></span>
     <span style="color:black">by</span> 
     <span style="color:orangered"><c:out value="${book.author}"/></span>.</p>
    <br> 
	<p><span style="color:black">Here are</span> <span style="color:deeppink">${book.donor.userName}'s</span> thoughts:</p> <hr>
	<p><c:out value="${book.thoughts}"/></p> 
	<hr>
<p>	<a class="btn btn-warning" href="/books/edit/${book.id}">Edit</a> </p>
   <form action="/books/${book.id}" method="post">
      	<input type="hidden" name="_method" value="delete"/>
      	<input type="submit" value="delete" class="btn btn-otline-white btn-danger"/>
      </form>
</div>
</body>
</html>
