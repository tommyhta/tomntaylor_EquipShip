<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="UTF-8">
<title> Equipship | Login & Registration</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="container-fluid bottom">
		<img src="images/equipship.png" alt="logo"/>
		<h1 class="light-blue">Already have an account? Login!</h1>
	    <p><c:out value="${error}" /></p>
	    <form method="post" action="/login">
	        <p>
	            <label class="orange" type="email" for="email">Email</label>
	            <input type="text" id="email" name="email"/>
	        </p>
	        <p>
	            <label class="orange" for="password">Password</label>
	            <input type="password" id="password" name="password"/>
	        </p>
	        <input type="submit" class="btn btn-primary back-blue" value="Login"/>
	    </form>    
		<h1 class="light-blue">Register!</h1>
	    <p><form:errors path="user.*"/></p>
	    <form:form method="POST" action="/registration" modelAttribute="user">
	        <p>
	            <form:label class="orange" path="firstName">First Name:</form:label>
	            <form:input path="firstName"/>
	        </p>
	        <p>
	            <form:label class="orange" path="lastName">Last Name:</form:label>
	            <form:input path="lastName"/>
	        </p>
	        <p>
	            <form:label class="orange" path="city">City:</form:label>
	            <form:input path="city"/>
	        </p>
	        <p>
	            <form:label class="orange" path="state">State:</form:label>
	            <form:input path="state"/>
	        </p>
	        <p>
	            <form:label class="orange" path="email">Email:</form:label>
	            <form:input path="email"/>
	        </p>
	        <p>
	            <form:label class="orange" path="password">Password:</form:label>
	            <form:password path="password"/>
	        </p>
	        <p>
	            <form:label class="orange" path="passwordConfirmation">Password Confirmation:</form:label>
	            <form:password path="passwordConfirmation"/>
	        </p>
	        <input type="submit" class="btn btn-primary back-blue" value="Register"/>
	    </form:form>
	</div>
</body>
</html>