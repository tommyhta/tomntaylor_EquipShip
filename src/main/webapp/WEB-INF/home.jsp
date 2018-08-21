<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Equipship | Home</title>
<link rel="stylesheet" type="text/css" href="css/home.css">
</head>
<body>
	<div class="container-fluid p-0 bottom">
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
			<h1 class="headline light-blue">The convenient & affordable way to get equipped with empowering skills by getting mentorship from people in your community.</h1>
			<h4 class="tagline orange">Choose from over 10,000 verified Mentors to equip you with knowledge & skills without breaking the bank!</h4>
			<img class="boat" src="/images/equipship-boat.png" alt="boat">
			<div class="centered padding-sides">
				<form>
			    	<input class="form-control mr-sm-2" type="search" placeholder="Type your desired skillset..." aria-label="Search">
			  	</form>
		  	</div>
			<div class="row">
    			<div class="col-sm">
			      <a href="/showcategory" class="btn btn-dark background-light-blue">Category</a>
			    </div>
			    <div class="col-sm">
			      <a href="/showcategory" class="btn btn-dark background-light-blue">Category</a>
			    </div>
			    <div class="col-sm">
			      <a href="/showcategory" class="btn btn-dark background-light-blue">Category</a>
			    </div>
			    <div class="col-sm">
			      <a href="/showcategory" class="btn btn-dark background-light-blue">Category</a>
			    </div>
			    <div class="col-sm">
			      <a href="/showcategory" class="btn btn-dark background-light-blue">Category</a>
			    </div>
			</div>
			<div class="row">
    			<div class="col-sm">
			      <a href="/showcategory" class="btn btn-dark background-light-blue">Category</a>
			    </div>
			    <div class="col-sm">
			      <a href="/showcategory" class="btn btn-dark background-light-blue">Category</a>
			    </div>
			    <div class="col-sm">
			      <a href="/showcategory" class="btn btn-dark background-light-blue">Category</a>
			    </div>
			    <div class="col-sm">
			      <a href="/showcategory" class="btn btn-dark background-light-blue">Category</a>
			    </div>
			    <div class="col-sm">
			      <a href="/showcategory" class="btn btn-dark background-light-blue">Category</a>
			    </div>
			</div>
			<h2 class="orange pt-4">Real People, Real Mentorship</h2>
			<div class="row">
				<div class="col-md">
					<img width="100" height="100" src="/images/profilepic.png" alt="profile">
					<p class="light-blue">This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... </p>
					<p class="orange">~ John Doe, CPA Mentor</p>
				</div>
				<div class="col-md">
					<img width="100" height="100" src="/images/profilepic.png" alt="profile">
					<p class="light-blue">This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... </p>
					<p class="orange">~ John Doe, CPA Mentor</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md">
					<img width="100" height="100" src="/images/profilepic.png" alt="profile">
					<p class="light-blue">This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... </p>
					<p class="orange">~ John Doe, CPA Mentor</p>
				</div>
				<div class="col-md">
					<img width="100" height="100" src="/images/profilepic.png" alt="profile">
					<p class="light-blue">This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... This is a testimonial from an Equipship user... </p>
					<p class="orange">~ John Doe, CPA Mentor</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>