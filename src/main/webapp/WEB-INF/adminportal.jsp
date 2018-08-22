<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Equipship | Admin Portal</title>
<link rel="stylesheet" href="/css/tommycss.css">
<link rel="stylesheet" href="/css/adminportal.css">
</head>
<body>
	<div class="container-fluid p-0">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="/">
			<img src="/images/equipship-boat.png" width="50" height="50" class="d-inline-block align-center" alt="boat">
	    	Equipship
	    	</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item">
		        <a class="nav-link" href="/myprofile">My Profile</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="/mymentors">Mentors</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="/mymentees">Mentees</a>
		      </li>
		    </ul>
		  </div>
		</nav>
		<div class="main">
			<table class="table table-hover table-dark">
				<thead>
					<tr>
						<th scope="col">User Level</th>
						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Email</th>
						<th scope="col">City</th>
						<th scope="col">State</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="light-blue">Admin</td>
						<td class="light-blue">Taylor</td>
						<td class="light-blue">Brudos</td>
						<td class="light-blue">taylor@brudos.com</td>
						<td class="light-blue">Sunnyvale</td>
						<td class="light-blue">CA</td>
						<td><a  class="red" href="#">Delete</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>