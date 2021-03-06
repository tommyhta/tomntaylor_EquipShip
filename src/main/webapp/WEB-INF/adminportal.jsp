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
			<form action="/addCategory" method="post">
				<label for="category">New Category: </label>
				<input type="text" name="category">
				<button>Add</button>
			</form> 
			<ul>
				<c:forEach items="${categories}" var="cat">
					<li><c:out value="${cat.name}"/>
						<form class="formI" action="/delCat/${cat.id}" method="post">
							<button class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button> 
						</form>
				</c:forEach>
			</ul>	
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
					<c:forEach items="${users}" var="user">
					<tr>
						<td class="light-blue">
							<c:choose>
								<c:when test="${user.user_level == 9 }">
									Admin User
								</c:when>
								<c:otherwise>
									Standard User
								</c:otherwise>
							</c:choose>	
						</td>
						<td class="light-blue"><c:out value="${user.firstName}"/></td>
						<td class="light-blue"><c:out value="${user.lastName}"/></td>
						<td class="light-blue"><c:out value="${user.email}"/></td>
						<td class="light-blue"><c:out value="${user.city}"/></td>
						<td class="light-blue"><c:out value="${user.state}"/></td>
						<td>
							<form class="formI" action="/admin/deleteuser/${user.id}" method="post">
								<button class="btn-xm btn-danger">Delete</button>
							</form>
							<form class="formI" action="/admin/changeUserLevel/${user.id }" method="post">
								<button class="btn-xm btn-success">Change User Level</button>
							</form>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>