
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin D Page</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <%
            String email = null;
            HttpSession sess = request.getSession();
            if (sess != null) {
                email = sess.getAttribute("AdminSessionId").toString();
            } else {
                response.sendRedirect("login.jsp");
            }
        %>    
        <style>
            #main{
                width: 84.2rem; 
                height:39.2rem;
                background-color: rgb(239,239,239);
            }  
            #left{
                background-image:url("image//adminleftbg.jpg"); background-repeat: no-repeat; background-size: cover; 
                height: 100%;
                width: 17%;
                float: left;
                border-radius: 2px 2px 2px 2px; 
            }
            #right{
                height: 100%;
                width: 83%;
                float: right;
                background-color:rgb(239,239,239);
            }
            #left_bottom a{
                text-align: center;
                text-decoration: none;
                font-size: 1.1em;
                border-radius: 25px; border: none;  height:17%; padding-left:5%;  color:white;  padding-bottom:1.5%;  font-family:Palatino;
            }
            #sidebarMenu a.active {
                background-color: pink;

            }

            #sidebarMenu a:hover:not(.active) {
                background-color:rgb(30,144,255);
                color:black;
            }

        </style>
        <div id="main">
            <div id="left" class="shadow-lg mb-5 bg-white">
                <!-- left top start-->
                <div id="left_top" class="p-5">

                    <div class="border-bottom text-secondary">
                        <h5 class="text-center text-light pb-3">CREATIVE TIM</h5>
                    </div>
                    <div class="img-fluid text-center p-4 ">
                        <img src="image/adminpic.jpg" style="border-radius:50px;" height="62px" width="62px">
                    </div>
                    <div class="border-bottom text-secondary">
                        <h6 class="text-center text-light pb-2">hello Admin:</h6>
                    </div>
                </div>
                <!-- left top end-->
                <!-- left bottom start-->
                <div id="left_bottom">
                    <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse text-light text-ceter">
                        <div class="position-sticky">
                            <div class="list-group list-group-flush mx-3  sidebar p-3 m-1">
                                <a href="index.jsp">Home </a>
                                <a href="productdetail.jsp">Products </a>
                                <a href="Deliverydetails.jsp">Delivery</a>
                                <a href="#">Payment status</a>
                                <a href="CurrentOrder.jsp">Current Order</a>
                                <a href="signupdetail.jsp">Sign_up details</a>
                                <a href="signup.jsp">Sign_up</a>
                                <a href="login.jsp">Logout</a>
                            </div>

                        </div>
                    </nav>

                </div>


            </div>
            <div id="right">
                <!-- right navigation bar -->
                <nav class="navbar mb-3 m-3 shadow-sm rounded" style="background-color:rgb(8,8,30)">
                    <a class="navbar-brand" href="#"style="float:left" >
                        <img src="image/adminicon.jpg" class="d-inline-block align-top" alt="" height="30px" width="30px">
                        <spam class="text-light"> Welcome Admin:  <%=email%></spam>
                    </a>
                    <a href="logout.jsp" class="btn btn-primary"> Logout</a>

                </nav>
                <!-- side navigation bar end-->
                <!-- right table area start-->
                <div id="TableArea"  class="p-3">
                    <div id="leftTableArea" style="height:100%;width:21%; float: left;" class="p-3 shadow rounded" >

                        <div id="totalEarn"style="height:7rem;width:100%;background-color:rgb(247,247,0)" class="mb-5 mt-2 shadow rounded" >

                            <div id="icon1"style="float:left;">
                                <img src="image/adminEarningicon.jpg" width="80px" height="80px"style="border-radius: 50%;"class="m-3 shadow-sm">
                            </div>
                            <div id="text"style="float:right;">
                                <h5 class="text-light p-2" style="text-decoration:underline">Today <br> Earn</h5>
                            </div>

                        </div>
                        <div id="TodayStatus" style="height:7rem;width:100%;background-color:rgb(247,63,5)" class="mb-5 shadow rounded">

                            <div id="icon2" style="float:left; margin-bottom: -3%; " >
                                <img src="image/adminOrder.jpg" width="80px" height="80px" style="border-radius: 50%;"class="m-3 shadow">
                            </div>
                            <div id="text"style="float:right;"class="text-center">
                                <h5 class="text-light p-2" style="text-decoration:underline">Today<br> Status</h5>
                            </div>
                        </div>
                        <div id="order"style="height:7rem;width:100%; background-color:rgb(7,176,196)" class="shadow rounded mb-2">

                            <div id="icon3" style="float:left;">
                                <img src="image/adminCustomer.jpg" width="80px" height="80px"style=" border-radius: 50%;" class="m-3 shadow">
                            </div>
                            <div id="text"style="float:right;">
                                <h5 class="text-light p-2" style="text-decoration:underline">Order</h5>
                            </div>
                        </div>
                    </div>
                    <div id="rightTableArea" style="height:30rem;width:77%; float: right;"class="p-3 shadow rounded" >
                        <div id="tables"style="height:100%;width:100%;  float: left; background-color:rgb(255,255,255)">
                            <img src="image/adminSellChat.jpg" height="100%" widht="100%">
                        </div>

                    </div>
                    <script src="js/jquery.js"></script>
                    <script src="js/bootstrap.js"></script>

                    </body>
                    </html>
