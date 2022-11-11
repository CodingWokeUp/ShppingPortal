
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>

    </head>
    <body class="container-fluid" id="back-body">
        <div class="container-fluid p-2" id="user-top">
            <%
                String email = null;
                HttpSession sess = request.getSession();
                if (sess != null) {
                    email = sess.getAttribute("UserSessionId").toString();
                } else {
                    response.sendRedirect("login.jsp");
                }
            %>
            <style>
                body{
                    background-image: url(image//userbg.jpg);height: 55rem;width: 100%;margin-bottom: 2%;
                }
                #product-button-slider{
                    cursor: pointer;
                    height: 38px;
                    font-family:Noto-serif;
                    font-size: 17px;
                    width:60%;
                    color:red;
                    border-radius: 27px;
                    background-color: transparent;
                    box-shadow: 0 6px 6px rgba(0, 0, 0, 0.6);
                    border:2px solid red;
                    font-weight: bold;
                }
                #product-button-slider:hover{
                    background-color: red;
                    color: white;
                    border:1px solid white;
                }
                /**slider imag css**/
                .slide img{
                    border-radius: 5px;
                }
                /** complete slider css**/
                #slider{
                    background-color: #e6e6ea ; padding: 2%;margin: 1%;opacity: 0.9;box-shadow: 0 6px 6px rgba(0, 0, 0, 0.6); border-radius: 5px;
                }
                /** smoll slider css**/
                .sub-slider{
                    padding: 1.5%; background-color: #ececec ;box-shadow: 0 6px 6px rgba(0, 0, 0, 0.6);
                }
                /** slider caption css**/
                .carousel-caption h5{
                    font-family: Georgia;
                }
                /**After slider text **/
                .user-mid-text{
                    box-shadow: 0 6px 6px rgba(0, 0, 0, 0.6); background-color:white; opacity: 0.8;padding: 4%;float: right; font-family: sans-serif; text-align: center;border-radius: 15px;margin: 3%;
                }
                /** view product button css**/
                #product-button{
                    width:100%;height: 95%;font-size: 95%;overflow: hidden;color: white;border:1px solid white;cursor: pointer; background-color: transparent;box-shadow: 0 6px 6px rgba(0, 0, 0, 0.6);
                }
                #product-button:hover{
                    background-color: white; color: black;
                }
            </style>
            <div class="row m-2">
                <%@include file="nav.jsp" %>
            </div>
            <!-- slider bar codding-->

            <div class="container-fluid">
                <div class="row shadow" id="slider">

                    <!-- first slider-->
                    <div class="col-3 shadow-sm sub-slider">
                        <div id="carouselExampleIndicators1" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators1" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators1" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators1" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="image//silderlaptop1.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First Slide</h5>
                                        <a class="btn "id="product-button-slider"href="mac book.jsp">buy now</a>
                                        <p>...</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="image//sliderphone1.jpg" alt="Second slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second Slide</h5>
                                        <a class="btn"id="product-button-slider" href="phone.jsp">buy now</a>
                                        <p>...</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="image//sliderwatch1.jpg" alt="Third slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third Slide</h5>
                                        <a class="btn"id="product-button-slider"href="Apple watch.jsp">buy now</a>
                                        <p>...</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators1" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators1" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <!-- Second slider-->
                    <div class="col-3 shadow-sm sub-slider">
                        <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="image//silderlaptop2.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First Slide</h5>
                                        <a class="btn"id="product-button-slider"href="mac book.jsp">buy now</a>
                                        <p>...</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="image//silderphone2.jpg" alt="Second slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second Slide</h5>
                                        <a class="btn"id="product-button-slider"href="phone.jsp">buy now</a>
                                        <p>...</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="image//sliderwatch2.jpg" alt="Third slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third Slide</h5>
                                        <a class="btn"id="product-button-slider"href="Apple watch.jsp">buy now</a>
                                        <p>...</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <!-- third slider-->
                    <div class="col-3 shadow-sm sub-slider">
                        <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators3" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators3" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators3" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="image//sliderlaptop3.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First Slide</h5>
                                        <a class="btn"id="product-button-slider"href="mac book.jsp">buy now</a>
                                        <p>...</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="image//sliderphone3.jpg" alt="Second slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second Slide</h5>
                                        <a class="btn"id="product-button-slider"href="phone.jsp">buy now</a>
                                        <p>...</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="image//sliderwatch3.jpg" alt="Third slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third Slide</h5>
                                        <a class="btn"id="product-button-slider"href="Apple watch.jsp">buy now</a> <p>...</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators3" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators3" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <!-- fourth slider-->
                    <div class="col-3 shadow-sm sub-slider">
                        <div id="carouselExampleIndicators4" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators4" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators4" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators4" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="image//slidderlaptop4.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First Slide</h5>
                                        <a class="btn"id="product-button-slider"href="mac book.jsp">buy now</a><p>...</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="image//sliderphone4.jpg" alt="Second slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second Slide</h5>
                                        <a class="btn"id="product-button-slider"href="phone.jsp">buy now</a><p>...</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="image//sliderairpod4.jpg" alt="Third slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third Slide<h5>
                                                <a class="btn"id="product-button-slider"href="Apple watch.jsp">buy now</a>
                                                <p>...</p>
                                                </div>
                                                </div>
                                                </div>
                                                <a class="carousel-control-prev" href="#carouselExampleIndicators4" role="button" data-slide="prev">
                                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                                <a class="carousel-control-next" href="#carouselExampleIndicators4" role="button" data-slide="next">
                                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                                </div>
                                                </div>
                                                </div>
                                                </div>

                                                <!-- slider bar coding end-->
                                                </div>
                                                <div id="user-mid">
                                                    <div class="row" style="padding:2%; ">

                                                        <div class="col-1"></div>
                                                        <div class="col-5" style="color:white;text-align:center;">
                                                            <h1 style="font-family:Georgia;padding-top: 22%;font-size: 40px;">MOII PORTAL</h1>
                                                        </div>
                                                        <div class="col-5">
                                                            <div class="row user-mid-text">
                                                                <h3>Best Shopping Site with Best Offers and minimum price</h3>
                                                            </div>
                                                            <div class="row user-mid-text">
                                                                <h4>Latest Product free delivery best marketing feature easy payment method. </h4>
                                                            </div>
                                                            <div class="row product-button" style="padding:2%;">
                                                                <div class="col-6">
                                                                    <a class="btn btn-muted" id="product-button"href="product.jsp"> View more Product</a>
                                                                </div>
                                                                <div class="col-6">
                                                                    <a class="btn btn-muted"id="product-button"href="Payment1.jsp" >check your products details</a>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-1"></div> 
                                                    </div>
                                                </div>
                                                <div id="user-bottum">
                                                    <%@include file="footer.jsp" %>
                                                </div>
                                                <script src="js/jquery.js"></script>
                                                <script src="js/bootstrap.js"></script>
                                                </body>
                                                </html>
