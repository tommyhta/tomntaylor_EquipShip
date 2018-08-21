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
        <title>EquipShip | Full Name </title>
        <link rel="stylesheet" href="css/tommycss.css">
    </head>
<body>
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
        <img src="images/equipship-boat.png" width="50" height="50" class="d-inline-block align-center" alt="boat">
        EquipShip
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
            <a class="nav-link" href="#">My Profile</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="#">Mentors</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="#">Mentees</a>
            </li>
        </ul>
        </div>
    </nav>
        <div class="main">
            <h1 class="center bluFont">Hello Full Name</h1>
            <div class="top row">
                <div class="col-lg-1"></div>
                <div class="profile col-lg-2 vAllign">
                    <img class="profileImg" src="images/profilepic.png" alt="Profile Image">
                    <p class="name">Full Name</p>
                    <p class="name">Tag Line</p>
                    <p class="name">RATING</p>
                </div>
                <div class="message col-lg-5 vAllign">

                    <div class="chatbox"></div>


                    <form action="#" method="post" class="mt-3">
                        <label for="category">Skill Category:</label>
                        <select name="category" class="stdInput">
                            <option value="developer">Developer</option>
                            <option value="healthcare">HealthCare</option>
                            <option value="information technology">Information Technology</option>
                            <option value="music">Music</option>
                            <option value="rock climbing">Rock Climbing</option>
                        </select>
                        <button class="btn-primary">Add</button>
                    </form>
                </div>
                <div class="session col-lg-3 vAllign">
                    <h6 class="center requestSession">Prices</h6>
                    <table>
                        <tr>
                            <td>My Rate:</td>
                            <td>$215.00/hr</td>
                        </tr>
                        <tr>
                            <td>Billing:</td>
                            <td>$32,000.00</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="bottom row mt-5">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <h3>Reviews</h3>
                    <div class="reviewList"></div>
                </div>

            </div>
        </div>
</body>
</html>