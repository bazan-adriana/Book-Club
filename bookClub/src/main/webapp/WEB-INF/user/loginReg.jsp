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
<meta charset="ISO-8859-1">
<title>Login Registration</title>
</head>
<body>
<div class="mt-5 text-center" style="color:blueviolet"><h2>Book Club</h2>
<p style="color:deeppink">A place for friends to share thoughts on books.</p></div>
    <div class="container mt-5">
        <div class="row">
            <div class="col">
                <h2>Register</h2>
                <form:form action="/users/process/register" method="post" modelAttribute="newUser">
                    <div class="form-group">
                        <label>User Name</label>
                        <form:input path="userName" class="form-control" />
                        <form:errors path="userName" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <form:input path="email" class="form-control" />
                        <form:errors path="email" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <form:input type="password" path="password" class="form-control" />
                        <form:errors path="password" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Confirm Password</label>
                        <form:input type="password" path="confirm" class="form-control" />
                        <form:errors path="confirm" class="text-danger" />
                    </div>
                    <input type="submit" value="Register User" class="btn btn-primary" />
                </form:form>
            </div>
            <div class="col">
            <h2>login</h2>
            <form:form action="/users/login" method="post" modelAttribute="loginUser">
                    <div class="form-group">
                        <label>Email</label>
                        <form:input path="email" class="form-control" />
                        <form:errors path="email" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <form:input type="password" path="password" class="form-control" />
                        <form:errors path="password" class="text-danger" />
                    </div>
                    <input type="submit" value="Login" class="btn btn-primary" />
                </form:form>
            </div>
        </div>
    </div>
</body>

</html>