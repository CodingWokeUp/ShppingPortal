<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="js/bootstrap.js" type="text/js" rel="stylesheet">
        <title>item34</title>
    </head>
    <body class="container-fluid" style="height:100%;" width="100%;">
        <style>
            .row {
                padding-left: 5%;
            }

            .row a {
                padding: 0%;
                margin: 0%;
                color: rgb(146, 146, 146);
                font-size: small;
            }
        </style>
        <nav id="navbar" style="z-index:30; margin:1%;position:sticky;top:0;">
            <%@include file="nav.jsp" %>
        </nav>

        <div class="row">
            <a href="index.jsp">Home ></a>
            <a href="#">All Industries ></a>
            <a href="#">Consumer Electronics ></a>
            <a href="#">Smart Electronics ></a>
            <a href="#">Wearable Devices ></a>
            <a href="#">Smart Watch ></a>
        </div>
        <div class="row " style="margin-top:4%;">
            <div class="col-md-5 col-sm-6 col">
                <img class="img-flex" src="Productimg/pimg37.jpg" width="80%" height="80%">
                <h4 style="color: rgb(146,146,146); text-align: center;padding-right: 13%; font-family: serif; padding-top: 5%; ">Large imege</h4>

            </div>
            <div class="col-md-5 col-sm-6 col">
                <p style="font-size: large;">IOS Phone 13 Pro With FaceTime Smartphone High-Definition Face Recognition 12GB+128GB long standby Time mobile phone smart phone</p>
                <label> FOB Reference Price: <a style="color:blue;" class="active" href="#">Get Letest Price</a></label>
                <div class="row"
                     style="  padding: 3%;border-bottom:.1px solid  rgb(146,146,146) ; border-top: 0.1px solid  rgb(146,146,146);">
                    <b style="font-size:x-large;">$1,108.00 - $1,423.00/ </b><span style="padding:1.5% ;">Piece|1 Piece/Pieces(Min.
                        Order)</span>
                </div>
                <div class="row my-4">
                    <div class="col-md-3"> Color:</div>
                    <div class="col-md-8"><img src="Productimg/pimg37.jpg" width="30px" height="30px"></div>
                </div>
                <div class="row my-3">
                    <div class="col-md-3">Storage: </div>
                    <div class="col-md-4">256GB</div>
                    <div class="col-md-4">512GB</div>
                </div>
                <div class="row my-3">
                    <div class="col-md-3">RAM:</div>
                    <div class="col-md-8">other</div>
                </div>

                <div class="row my-3">
                    <div class="col-md-3 ">
                        <label> Lead Time:</label>
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-5 col-sm-4" style="border: 1px solid  rgb(146,146,146);font-size: 90%;width:40%;"> Quantity (pieces)</div>
                            <div class="col-md-2 col-sm-2" style="border: 1px solid  rgb(146,146,146);font-size: 90%;width:20%;">1-2</div>
                            <div class="col-md-5 col-sm-4" style="border: 1px solid  rgb(146,146,146);font-size: 90%;width:40%;">>2</div>
                        </div>
                        <div class="row">
                            <div class="col-md-5 col-sm-6" style="border: 1px solid  rgb(146,146,146);font-size: 90%;width:40%;">Est Time(days)</div>
                            <div class="col-md-2 col-sm-2" style="border: 1px solid  rgb(146,146,146);font-size: 90%;width:20%;">5</div>
                            <div class="col-md-5 col-sm-4" style="border: 1px solid  rgb(146,146,146);font-size: 90%;width:40%;">To be negotiated</div>
                        </div>
                    </div>
                    <button type="button"onclick="window.location.href = 'BuyProduct.jsp?p_id=item34';" style="border-radius: 25px; border: none; width:30% ;  height:17%; color: gray;  padding-bottom:0.5%;  font-family: serif;"  class="bg-primary text-dark my-4">Buy Now</button>


                </div>

            </div>

        </div>
        <div  id="footer" style="margin-top: 2%;">
            <%@include file="footer.jsp" %>
        </div>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>

    </body>
</html>
