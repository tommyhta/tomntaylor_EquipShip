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
    <title>EquipShip | User Profile </title>

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
    <div class="container container-fluid">
    
    
    </div>
</body>
</html>