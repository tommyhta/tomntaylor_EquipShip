<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title> Equipship | Login & Registration</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="container-fluid bottom">
		<div class="centered">
		<img src="images/equipship.png" alt="logo"/>
		</div>
		<div class="row">
      <div class="col-lg-1"></div>
      <div class="col-lg-6">
	  	<h1 class="light-blue">Registration</h1>
     		<form:form action="/registration" method="post" modelAttribute="user">
	     		<table>
	     			<tr>
	     				<td><form:label class="orange" path="firstName">First Name:</form:label></td>
	     				<td><form:input class="light-blue grayBack" type="text" path="firstName"/></td>
	     				<td><form:errors class="red" path="firstName"/></td>
	     			</tr>
	     			<tr>
	     				<td><form:label class="orange" path="lastName">Last Name:</form:label></td>
	     				<td><form:input class="light-blue grayBack" type="text" path="lastName"/></td>
	     				<td><form:errors class="red" path="lastName"/></td>
	     			</tr>
	     			<tr>
	     				<td><form:label class="orange" path="email">Email:</form:label></td>
	     				<td><form:input class="light-blue grayBack" type="email" path="email"/></td>
	     				<td><form:errors class="red" path="email"/></td>
	     			</tr>
	     			<tr>
	     				<td><form:label class="orange" path="city">City:</form:label></td>
	     				<td><form:input class="light-blue grayBack" type="text" path="city"/></td>
	     				<td><form:errors class="red" path="city"/></td>
	     			</tr>
	     			<tr>
	     				<td><form:label class="orange" path="state">State</form:label></td>
						<td>
							<form:select class="light-blue grayBack" path="state">
							    <form:option value="AL">AL</form:option>
								<form:option value="AK">AK</form:option>
								<form:option value="AR">AR</form:option>	
								<form:option value="AZ">AZ</form:option>
								<form:option value="CA">CA</form:option>
								<form:option value="CO">CO</form:option>
								<form:option value="CT">CT</form:option>
								<form:option value="DC">DC</form:option>
								<form:option value="DE">DE</form:option>
								<form:option value="FL">FL</form:option>
								<form:option value="GA">GA</form:option>
								<form:option value="HI">HI</form:option>
								<form:option value="IA">IA</form:option>	
								<form:option value="ID">ID</form:option>
								<form:option value="IL">IL</form:option>
								<form:option value="IN">IN</form:option>
								<form:option value="KS">KS</form:option>
								<form:option value="KY">KY</form:option>
								<form:option value="LA">LA</form:option>
								<form:option value="MA">MA</form:option>
								<form:option value="MD">MD</form:option>
								<form:option value="ME">ME</form:option>
								<form:option value="MI">MI</form:option>
								<form:option value="MN">MN</form:option>
								<form:option value="MO">MO</form:option>	
								<form:option value="MS">MS</form:option>
								<form:option value="MT">MT</form:option>
								<form:option value="NC">NC</form:option>	
								<form:option value="NE">NE</form:option>
								<form:option value="NH">NH</form:option>
								<form:option value="NJ">NJ</form:option>
								<form:option value="NM">NM</form:option>			
								<form:option value="NV">NV</form:option>
								<form:option value="NY">NY</form:option>
								<form:option value="ND">ND</form:option>
								<form:option value="OH">OH</form:option>
								<form:option value="OK">OK</form:option>
								<form:option value="OR">OR</form:option>
								<form:option value="PA">PA</form:option>
								<form:option value="RI">RI</form:option>
								<form:option value="SC">SC</form:option>
								<form:option value="SD">SD</form:option>
								<form:option value="TN">TN</form:option>
								<form:option value="TX">TX</form:option>
								<form:option value="UT">UT</form:option>
								<form:option value="VT">VT</form:option>
								<form:option value="VA">VA</form:option>
								<form:option value="WA">WA</form:option>
								<form:option value="WI">WI</form:option>	
								<form:option value="WV">WV</form:option>
								<form:option value="WY">WY</form:option> 		
				            </form:select> 
						</td>
	     			</tr>
	     			<tr>
	     				<td><form:label class="orange" path="password">Password:</form:label></td>
	     				<td><form:input class="light-blue grayBack" type="password" path="password"/></td>
	     				<td><form:errors class="red" path="password"/></td>
	     			</tr>
	     			<tr>
	     				<td><form:label class="orange" path="passwordConfirmation">Confirm PW:</form:label></td>
	     				<td><form:input class="light-blue grayBack" type="password" path="passwordConfirmation"/></td>
	     				<td><form:errors class="red" path="passwordConfirmation"/></td>
	     			</tr>
	     		</table> 
	     			<button class="btn btn-primary">Register</button>
	     	</form:form>       
      </div>
        
      <div class="col-lg-5">
	  	<h1 class="light-blue">Login!</h1>
	    <form action="/login" method="post">
		    <table>
		    	<tr>
		    		<td><label class="orange"for="email">Email:</label></td>
		    		<td><input type="email" name="email" class="light-blue grayBack"></td>
		    		<td class="red"><c:out value="${error}"/></td>
		    	</tr>
		    	<tr>
		    		<td><label class="orange" for="password">Password:</label></td>
		    		<td><input type="password" name="password" class="light-blue grayBack"></td>
		    		<td></td>
		    	</tr>
		    </table> 
		    <button class="btn btn-primary">Login</button>
	    </form>     
      </div>

    </div>
	    
	    
	</div>
</body>
</html>