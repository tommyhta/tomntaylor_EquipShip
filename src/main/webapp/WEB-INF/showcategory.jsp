<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Equipship | Category Name</title>
<link rel="stylesheet" type="text/css" href="css/showcategory.css">
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
			<h1 class="light-blue pt-5">Software Development Mentors in San Jose, CA</h1>
			<h4 class="orange pb-3">Showing 1-3 of 11 mentors</h4>
			<div class="row pb-5">
				<div class="col-sm">
					<img width="100" height="100" src="/images/profilepic.png" alt="profile">
					<p class="light-blue">Full Name</p>
					<p class="orange">Mentor-created tagline</p>
					<img src="/images/stars.png" alt="stars">
				</div>
				<div class="col-sm">
					<p class="light-blue bold">What I can offer you:</p>
					<p class="orange">These are the skills that I can equip you with through mentorship via this cool platform... These are the skills that I can equip you with through mentorship via this cool platform... </p>
					<p class="light-blue italic">Rate: $25.00/hour</p>
					<a href="#" class="btn btn-info">Add Mentor</a>
				</div>
				<div class="col-lg">
					<p class="light-blue bold">Reviews:</p>
					<div class="orange italic scrollbox">
						<p>"This mentor was freaking fantastic!  He is just so helpful, dude!!" ~ John Smith</p>
						<p>"This mentor was freaking fantastic!  He is just so helpful, dude!!" ~ John Smith</p>
						<p>"This mentor was freaking fantastic!  He is just so helpful, dude!!" ~ John Smith</p>
						<p>"This mentor was freaking fantastic!  He is just so helpful, dude!!" ~ John Smith</p>
						<p>"This mentor was freaking fantastic!  He is just so helpful, dude!!" ~ John Smith</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm">
					<img width="100" height="100" src="/images/profilepic.png" alt="profile">
					<p class="light-blue">Full Name</p>
					<p class="orange">Mentor-created tagline</p>
					<img src="/images/stars.png" alt="stars">
				</div>
				<div class="col-sm">
					<p class="light-blue bold">What I can offer you:</p>
					<p class="orange">These are the skills that I can equip you with through mentorship via this cool platform... These are the skills that I can equip you with through mentorship via this cool platform... </p>
					<p class="light-blue italic">Rate: $25.00/hour</p>
					<a href="#" class="btn btn-info">Add Mentor</a>
				</div>
				<div class="col-lg">
					<p class="light-blue bold">Reviews:</p>
					<div class="orange italic scrollbox">
						<p>"This mentor was freaking fantastic!  He is just so helpful, dude!!" ~ John Smith</p>
						<p>"This mentor was freaking fantastic!  He is just so helpful, dude!!" ~ John Smith</p>
						<p>"This mentor was freaking fantastic!  He is just so helpful, dude!!" ~ John Smith</p>
						<p>"This mentor was freaking fantastic!  He is just so helpful, dude!!" ~ John Smith</p>
						<p>"This mentor was freaking fantastic!  He is just so helpful, dude!!" ~ John Smith</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>