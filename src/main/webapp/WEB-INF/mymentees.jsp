<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Equipship | My Mentees</title>
    <style>
        *{
            /* border: 1px solid black; */
           color:#FFAF23; 
        }
        .main{
            background-color: black;
            height: 100vh;
            padding: 20px;
        }
        .switchBtn{
            margin-top: 100px;
            text-align: center!important;
        }
        div.profile{
            text-align: center;
        }
        img.profileImg{
            width: 50%;
            margin: 10px;  
            border-radius: 50%;
          
            border: 2px solid #FFAF23;
        }
        p.name{
            margin: 0;
        }
        .center{
            text-align: center;
        }
        table{
            width: 100%;
        }
        .requestSession{
            border-bottom: 1px solid #FFAF23;
        }
        div.session{
            margin: 10px;
        }
        .vAllign{
            vertical-align: top;
        }
        div.chatbox{
            width: 100%;
            height: 150px;
            border: 1px solid #FFAF23;
            overflow: auto;
            margin-top: 10px;
            color: #00A9E5;
            background: #343a40;
        }
        .msgInput{
            width: 85%;
            margin:0;
        }
        .btnInput{
            width:13%;
            margin:0;
            text-align: center;
        }
        .stdInput{
            background-color: #343a40;
            color:#00A9E5;
        } 
        #mentor{
           margin: 20px;
        }
        .reqForm{
            padding: 20px;
        }
        .bluFont{
            color: #00A9E5;
            font-weight: 700;
        }

    </style>
</head>
<body>
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
        <div class="body">
            <h2 class="center bluFont">Mentees</h2>

<!-- ------------------------------------------------------------ -->

            <div id="mentor"class="row">
                <div class="col-lg-1"></div>
                <div class="profile col-lg-2 vAllign">
                    <img class="profileImg" src="/images/profilepic.png" alt="Profile Image">
                    <p class="name">Full Name</p>
                    <p class="name">City, State</p>
                </div>
                <div class="session col-lg-3 vAllign">
                <h6 class="center requestSession">Session Request</h6>
                    <div class="reqForm">
                        <table>
                            <tr>
                                <td>Time:</td>
                                <td>   </td>
                            </tr>
                            <tr>
                                <td>Date:</td>
                                <td>   </td>
                            </tr>
                            <tr>
                                <td>Location:</td>
                                <td>   </td>
                            </tr>
                        </table>
                        <div class="center mt-2">
                            <button class="btn-primary">Accept</button>
                            <button class="btn-primary">Decline</button>
                        </div>
                    </div>
                </div>
                <div class="message col-lg-5 vAllign">
                    <div class="chatbox"></div>
                    <div class="form">
                        <form action="#" action="post">
                            <input class="msgInput stdInput mt-2" type="text" name="message" placeholder="Type your message here">
                            <button class="btnInput btn-primary">Send</button>
                        </form>
                    </div>
                </div>
            </div>
    
            <!-- ------------------------------------------------------------ -->


            <div id="mentor"class="row">
                    <div class="col-lg-1"></div>
                    <div class="profile col-lg-2 vAllign">
                        <img class="profileImg" src="/images/profilepic.png" alt="Profile Image">
                        <p class="name">Full Name</p>
                        <p class="name">City, State</p>
                    </div>
                    <div class="session col-lg-3 vAllign">
                    <h6 class="center requestSession">Session Request</h6>
                        <div class="reqForm">
                            <table>
                                <tr>
                                    <td>Time:</td>
                                    <td>   </td>
                                </tr>
                                <tr>
                                    <td>Date:</td>
                                    <td>   </td>
                                </tr>
                                <tr>
                                    <td>Location:</td>
                                    <td>   </td>
                                </tr>
                            </table>
                            <div class="center mt-2">
                                <button class="btn-primary">Accept</button>
                                <button class="btn-primary">Decline</button>
                            </div>
                        </div>
                    </div>
                    <div class="message col-lg-5 vAllign">
                        <div class="chatbox"></div>
                        <div class="form">
                            <form action="#" action="post">
                                <input class="msgInput stdInput mt-2" type="text" name="message" placeholder="Type your message here">
                                <button class="btnInput btn-primary">Send</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div id="mentor"class="row">
                        <div class="col-lg-1"></div>
                        <div class="profile col-lg-2 vAllign">
                            <img class="profileImg" src="/images/profilepic.png" alt="Profile Image">
                            <p class="name">Full Name</p>
                            <p class="name">City, State</p>
                        </div>
                        <div class="session col-lg-3 vAllign">
                        <h6 class="center requestSession">Session Request</h6>
                            <div class="reqForm">
                                <table>
                                    <tr>
                                        <td>Time:</td>
                                        <td>   </td>
                                    </tr>
                                    <tr>
                                        <td>Date:</td>
                                        <td>   </td>
                                    </tr>
                                    <tr>
                                        <td>Location:</td>
                                        <td>   </td>
                                    </tr>
                                </table>
                                <div class="center mt-2">
                                    <button class="btn-primary">Accept</button>
                                    <button class="btn-primary">Decline</button>
                                </div>
                            </div>
                        </div>
                        <div class="message col-lg-5 vAllign">
                            <div class="chatbox"></div>
                            <div class="form">
                                <form action="#" action="post">
                                    <input class="msgInput stdInput mt-2" type="text" name="message" placeholder="Type your message here">
                                    <button class="btnInput btn-primary">Send</button>
                                </form>
                            </div>
                        </div>
                    </div>


        </div>
    </div>
</body>
</html>