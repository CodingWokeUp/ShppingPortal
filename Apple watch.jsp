<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="css/product.css" type="text/css" rel="stylesheet">
        <title>Apple watch</title>
    </head>
    <body class="container-fluid">
        <div id="header" style="height:25%">
            <%@include file="header.jsp" %>
        </div>
        <div id="navbar" height="100px" width="99%" style="margin-bottom:3px;margin-top:2px;">
            <%@include file="nav.jsp" %>
        </div>
        <div id="mid" class="container-fluid">
            <div id="midleft" >
                <%@include file="productPageMidLeft.jsp" %>
            </div>    

            <div id="midright">
                <div class="mrtop" style="height:5%; width:100%;">
                    <button type="button" style="height:80%; width:20%;" class="btn btn-warning" onclick="window.location.href = 'product.jsp';">All Products</button>
                    <button type="button" style="height:80%; width:20%;"
                            class="btn btn-dark bg-secondary ">Cusmaization</button>

                </div>
                <div id="productsearchbar" style="height:8%; width:80%; border-bottom: 2px solid black; margin:2%;">
                    <div id="psl" class="box" style="height:5%; width:20%; float: left;">
                        <h5 class="text-center ">All Products</h5>
                    </div>
                    <div id="psr" class="box" style="height:5%; width:70%; float:right;">
                        <!-- Search form -->
                        <div class="md-form mt-0">
                            <input class="form-control" type="text" placeholder="Search" aria-label="Search">
                        </div>
                    </div>
                </div>
                <div id="orderlinks" style="height:8%;">

                    <p style="padding-left:1rem ;">
                        Sortby <a href="#"> Merchant</a>
                        <a href="#">Choiced Comprehensnst</a>
                        <a href="#">orderd</a>
                        <a href="#">New Selected Products(0/20)</a>
                    </p>
                    <p style="padding-left:1rem ; font-size: small;">
                        click <button type="button" class="text-center bg-warning"
                                      style="height:20px; width: 20px; border-radius: 50px; border:none;"
                                      class="btn btn-warning ">+</button> to select products and contact the supplier
                        <!-- Search form -->

                    </p>
                </div>
                <div id="products">
                    <div id=" cardrow1">
                        <div class="card-group  ">
                            <div class="card">
                                <img class="card-img-top" src="Productimg/pimg14.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"></p>
                                    <a style="font-size:16px; color: black;" href="item2.jsp">

                                        <p class="card-text text-dark ">$389.00 - $430.00
                                            /Piece<br>
                                            1 Piece(Min. Order)</p></a>
                                </div>
                            </div>
                            <div class="card">
                                <img class="card-img-top" src="Productimg/pimg21.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"><a style="font-size:16px; color: black;" href="item1.jsp">$403.00 - $414.00/Piece
                                            1.0 Pieces(Min. Order)</a></p>
                                </div>
                            </div>

                            <div class="card">
                                <img class="card-img-top" src="Productimg/pimg42.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"></p><a style="font-size:16px; color: black;" href="item3.jsp">
                                        <p class="card-text text-dark">$384.00 - $414.00/Piece
                                            1.0 Pieces(Min. Order)</p></a>
                                </div>
                            </div>
                            <div class="card ">
                                <img class="card-img-top" src="Productimg/pimg43.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"></p><a style="font-size:16px; color: black;" href="item4.jsp">
                                        <p class="card-text text-dark">$397.00 - $419.00/Piece
                                            2.0 Pieces(Min. Order)
                                        </p></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="cardrow2">
                        <div class="card-group">
                            <div class="card">
                                <img class="card-img-top" src="Productimg/pimg44.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"></p><a style="font-size:16px; color: black;" href="item1.jsp">
                                        <p class="card-text text-dark">$403.00 - $414.00/Piece
                                            1.0 Pieces(Min. Order)</p></a>
                                </div>
                            </div>
                            <div class="card">
                                <img class="card-img-top" src="Productimg/pimg45.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"></p><a style="font-size:16px; color: black;" href="item4.jsp">
                                        <p class="card-text text-dark">$397.00 - $419.00/Piece
                                            1.0 Pieces(Min. Order)</p></a>
                                </div>
                            </div>

                            <div class="card">
                                <img class="card-img-top" src="Productimg/pimg46.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"></p><a style="font-size:16px; color: black;" href="item3.jsp">
                                        <p class="card-text text-dark">$384.00 - $414.00/Piece
                                            1.0 Pieces(Min. Order)</p></a>
                                </div>
                            </div>
                            <div class="card">
                                <img class="card-img-top" src="Productimg/pimg47.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"></p><a style="font-size:16px; color: black;" href="item1.jsp">
                                        <p class="card-text text-dark">$403.00 - $414.00/Piece
                                            1.0 Pieces(Min. Order)
                                        </p></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id=" row">
                        <div class="col-6">
                            <div class="card-group  ">
                                <div class="card">
                                    <img class="card-img-top" src="Productimg/pimg48.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <p class="card-text"></p>
                                        <a style="font-size:16px; color: black;" href="item3.jsp">

                                            <p class="card-text text-dark ">$384.00 - $414.00/Piece<br>
                                                1 Piece(Min. Order)</p></a>
                                    </div>
                                </div>
                                <div class="card">
                                    <img class="card-img-top"  src="Productimg/pimg49.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <p class="card-text"></p>
                                        <a style="font-size:16px; color: black;" href="item5.jsp">

                                            <p class="card-text text-dark">$391.00 - $414.00/Piece
                                                1.0 Pieces(Min. Order)</p></a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
</div>

<div  id="footer">
    <%@include file="footer.jsp" %>
</div>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
