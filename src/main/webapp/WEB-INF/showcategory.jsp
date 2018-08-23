<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/tommycss.css">
<link rel="stylesheet" href="/css/showcategory.css">
<title>Equipship | <c:out value="${thiscategory.name}"/> Mentors</title>
</head>
<body>
	<div class="container-fluid p-0">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="/">
        <img src="/images/equipship-boat.png" width="50" height="50" class="d-inline-block align-center" alt="boat">
        <span class="dBluFont boldFont">equip</span><span class="bluFont">ship</span>
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
      <div>
      	<c:choose>
      		<c:when test="${sessionScope.userId == null}">
      			<a href="/loginreg"><button class="btn btn-secondary">Login</button></a> 
      		</c:when>
      		<c:otherwise>
      			<span class="orange">Hello, <a class="orange" href="#"><c:out value="${sessionScope.firstName}"/></a></span>
      			<a href="/logout"><button class="btn btn-sm btn-dark">Logout</button></a>
      		</c:otherwise>  	
      	</c:choose>
      </div>
    </nav>
		<div class="main">
			<h1 class="light-blue pt-5"><c:out value="${thiscategory.name}"/> Mentors</h1>
			<h4 class="orange pb-3">Showing <c:out value="${thiscategory.getUsersInCategory().size()}"/> mentors</h4>
			<c:forEach items="${thiscategory.getUsersInCategory()}" var="mentor">
				<div class="row pb-5">
					<div class="col-sm">
						<img width="100" height="100" src="/images/profilepic.png" alt="profile">
						<p class="light-blue"><c:out value="${mentor.firstName}"/> <c:out value="${mentor.lastName}"/></p>
						<p class="orange"><c:out value="${mentor.tagline}"/></p>
						<c:choose>
	                    	<c:when test="${mentor.avgRating < 0.5}">
	                    		<img src="/images/0.png" alt="0Stars">
	                    	</c:when>
	                    	<c:when test="${mentor.avgRating < 1.0}">
	                    		<img src="/images/0half.png" alt="0halfStars">
	                    	</c:when>
	                    	<c:when test="${mentor.avgRating < 1.5}">
	                    		<img src="/images/1.png" alt="1Stars">
	                    	</c:when>
	                    	<c:when test="${mentor.avgRating < 2.0}">
	                    		<img src="/images/1half.png" alt="1halfStars">
	                    	</c:when>
	                    	<c:when test="${mentor.avgRating < 2.5}">
	                    		<img src="/images/2.png" alt="2Stars">
	                    	</c:when>
	                    	<c:when test="${mentor.avgRating < 3.0}">
	                    		<img src="/images/2half.png" alt="2halfStars">
	                    	</c:when>
	                    	<c:when test="${mentor.avgRating < 3.5}">
	                    		<img src="/images/3.png" alt="3halfStars">
	                    	</c:when>
	                    	<c:when test="${mentor.avgRating < 4.0}">
	                    		<img src="/images/3half.png" alt="3halfStars">
	                    	</c:when>
	                    	<c:when test="${mentor.avgRating < 4.5}">
	                    		<img src="/images/4.png" alt="4Stars">
	                    	</c:when>
	                    	<c:when test="${mentor.avgRating < 5.0}">
	                    		<img src="/images/4half.png" alt="4halfStars">
	                    	</c:when>
	                    	<c:when test="${mentor.avgRating >= 5.0}">
	                    		<img src="/images/5.png" alt="5Stars">
	                    	</c:when>
                    	</c:choose>
					</div>
					<div class="col-sm">
						<p class="light-blue bold">What I can offer you:</p>
						<p class="orange"><c:out value="${mentor.description}"/></p>
						<p class="light-blue italic">Rate: $<c:out value="${mentor.billingRate}"/>/hour</p>
						<a href="/addmentor/${mentor.id}" class="btn btn-info">Add Mentor</a>
					</div>
					<div class="col-lg">
						<p class="light-blue bold">Reviews:</p>
						<div class="orange italic scrollbox">
							<c:forEach items="${mentor.receivedReviews}" var="review">
								<p>"<c:out value="${review.reviewContent}"/>" ~<c:out value="${review.reviewer.firstName}"/> (<c:out value="${review.reviewer.city}"/>, <c:out value="${review.reviewer.state}"/>)</p>
							</c:forEach>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>