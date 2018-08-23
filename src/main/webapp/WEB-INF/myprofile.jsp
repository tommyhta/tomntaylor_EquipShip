<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
        <title>EquipShip | <c:out value="${user.firstName}"/> <c:out value="${user.lastName}"/></title>
        <link rel="stylesheet" href="css/tommycss.css">
    </head>
<body>
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
      			<span>Hello, <a class="orange" href="/myprofile"><c:out value="${sessionScope.firstName}"/></a></span>
      			<a href="/logout"><button class="btn btn-xm btn-dark">Logout</button></a>
      		</c:otherwise>  	
      	</c:choose>
      	<c:if test="${sessionScope.userLv == 9}">
      		<a href="/admin"><button class="btn btn-xm btn-secondary">Admin</button></a>
      	</c:if>
      </div>
    </nav>
    <div class="main">
        <div class="body">
        <div class="main">
            <h1 class="center bluFont">Hello, <c:out value="${user.firstName}"/>!</h1>
            <div class="top row">
                <div class="col-lg-1"></div>
                <div class="profile col-lg-2 vAllign">
                    <img class="profileImg" src="images/profilepic.png" alt="Profile Image">
                    <p class="name"><c:out value="${user.firstName}"/> <c:out value="${user.lastName}"/></p>
                    <form action="/myprofile/edittagline" method="post">
                    		<input class="tagEdit" type="text" value="${user.tagline}" name="tagline"/>
                    		<button type="submit" class="btn-primary btn-xm mt-2">Update</button>
                    </form>
                    <c:choose>
                    	<c:when test="${user.avgRating < 0.5}">
                    		<img src="/images/0.png" alt="0Stars">
                    	</c:when>
                    	<c:when test="${user.avgRating < 1.0}">
                    		<img src="/images/0half.png" alt="0halfStars">
                    	</c:when>
                    	<c:when test="${user.avgRating < 1.5}">
                    		<img src="/images/1.png" alt="1Stars">
                    	</c:when>
                    	<c:when test="${user.avgRating < 2.0}">
                    		<img src="/images/1half.png" alt="1halfStars">
                    	</c:when>
                    	<c:when test="${user.avgRating < 2.5}">
                    		<img src="/images/2.png" alt="2Stars">
                    	</c:when>
                    	<c:when test="${user.avgRating < 3.0}">
                    		<img src="/images/2half.png" alt="2halfStars">
                    	</c:when>
                    	<c:when test="${user.avgRating < 3.5}">
                    		<img src="/images/3.png" alt="3halfStars">
                    	</c:when>
                    	<c:when test="${user.avgRating < 4.0}">
                    		<img src="/images/3half.png" alt="3halfStars">
                    	</c:when>
                    	<c:when test="${user.avgRating < 4.5}">
                    		<img src="/images/4.png" alt="4Stars">
                    	</c:when>
                    	<c:when test="${user.avgRating < 5.0}">
                    		<img src="/images/4half.png" alt="4halfStars">
                    	</c:when>
                    	<c:when test="${user.avgRating >= 5.0}">
                    		<img src="/images/5.png" alt="5Stars">
                    	</c:when>
                    </c:choose>
                </div>
                <div class="message col-lg-4 vAllign">
                    		<form action="/myprofile/editdescription" method="post">
                    			<textarea class="descEdit" name="description"><c:out value="${user.description}"/></textarea><br>
                    			<button type="submit" class="btn-primary btn-xm">Update</button>
                    		</form>
                </div>
                <div class="session col-lg-4 vAllign">
                    <h6 class="center requestSession">Pricing Info:</h6>
                    <table>
                        <tr>
                            <td>My Rate:</td>
                            <td>
                            <form action="/myprofile/editbillingrate" method="post">
                            		<input type="number" step="0.01" name="billingrate" value="${user.billingRate}"/>
                            		<button type="submit" class="btn-primary btn-xm">Update</button>
                            </form>
                            </td>
                        </tr>
                        <tr>
                            <td>Total Earnings:</td>
                            <td>$<c:out value="${user.totalEarnings}"/></td>
                        </tr>
                    </table>
                    <br>
                    <h6 class="center requestSession">My Skill Categories:</h6>
                    
                    
                   
                    <form action="/myprofile/addcategory" method="post" class="mt-3">
                        <label for="category">Skill Category:</label>
                        <select name="category" class="stdInput">
                        	<c:forEach items="${categories}" var="category">
                            <option value="${category.id}"><c:out value="${category.name}"/></option>
                            </c:forEach>
                        </select>
                        <button class="btn-primary btn-xm">Add</button>
                    </form>

                    
                    <ul>
                    	<c:forEach items="${user.getUserCategories()}" var="userCategory">
                    		<li>
	                    		<c:out value="${userCategory.name}"/>   
	                    		<a href="/myprofile/removecategory/${userCategory.id}">Remove</a>
                    		</li>
                    	</c:forEach>
                    </ul>
                </div>
            </div>
            <div class="bottom row mt-5">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <h3>Reviews</h3>
                    <div class="reviewList">
                    <c:forEach items="${user.receivedReviews}" var="review">
                    <p class="bluFont grayBack">"<c:out value="${review.reviewContent}"/>" ~<c:out value="${review.reviewer.firstName}"/> (<c:out value="${review.reviewer.city}"/>, <c:out value="${review.reviewer.state}"/>)</p>
                    </c:forEach>
                    </div>
                </div>
				</div>
				</div>
            </div>
        </div>
</body>
</html>