
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <title>index page</title>
    </head>
    <body class="container-fluid">
        <style>
           
        </style>
        <div id="header" style="height:25%">
            <%@include file="header.jsp" %>
        </div>
        <div id="navbar" height="100px" width="99%" style="margin-bottom:3px;margin-top:2px;" class="container-fluid">
            <%@include file="nav.jsp" %>
        </div>

        <!--mid area-->
        <div id="mid" class="container-fluid">
           
            <div id="top-img">
                <img src="image\\topimg.jpg" class="img-fluid" style="width:100%; height:auto;" usemap="#topimge">
                <map name="topimge">
                    <area coords="36,430,206,537" target="#" alt="#" shape="rect" href="Apple watch.jsp">
                </map>

            </div>

            <div class=" flegs" style="height:15% ; width:100%; margin:none; padding:none;">
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs1.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs2.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs3.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs4.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs5.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs6.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%">
                    <img src="image\\flegs7.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs8.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs9.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs10.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs11.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
                <div style="display: inline-block; width:8%;">
                    <img src="image\\flegs12.jpg" class="img-fluid" style="width:100%; height:100%;">
                </div>
            </div>
            <div id="img13">

                <img src="image\\img13.jpg" class="img-fluid" alt=" multipleLinkImage" usemap="#multilinks"
                     style="width:100%;height:auto;">
                <map id="multilinks" name="multilinks">
                   
                    <area shape="rect" coords="502,183,708,366" alt="irpot" href="#footer">
                    <area shape="ract" coords="373,998,-1,813" alt="irpode" href="item13.jsp">
                    <area shape="ract" coords="415,814,785,993" alt="hadphone" href="item15.jsp">
                    <area shape="ract" coords="827,814,1199,999" alt="dwon" href="item9.jsp">
                </map>

            </div>

            <div id="img14">

                <img src="image\\img14.jpg" class="img-fluid" style="width:100%;height:auto;" alt="#" usemap="#laptops">

                <map name="laptops" id="laptops">
                    <area shape="rect" coords="240,552,74,419" alt="Apple" href="Apple accessories.jsp">
                    <area shape="rect" coords="752,737,343,561" alt="#" href="item22.jsp">
                    <area shape="rect" coords="1196,311,773,82" alt="#" href="item21.jsp">
                    <area shape="rect" coords="1196,529,773,317" alt="#" href="item28.jsp">
                    <area shape="rect" coords="1196,737,775,535" alt="#" href="item22.jsp">
                </map>
            </div>

            <div id="img15">

                <img src="image\\img15.jpg" class="img-fluid" style="width:100%;height:auto;" alt="#" usemap="#apple-watch">

                <map name="apple-watch" id="apple-watch">
                    <area shape="rect" coords="1056,48,1198,131" alt="Apple" href="Apple watch.jsp">
                    <area shape="rect" coords="51,194,445,538" alt="#" href="item3.jsp">
                    <area shape="rect" coords="661,194,1057,539" alt="#" href="item4.jsp">
                    <area shape="rect" coords="51,595,442,938" alt="#" href="item2.jsp">
                    <area shape="rect" coords="661,596,1050,940" alt="#" href="item1.jsp">
                </map>
            </div>

            <div id="img16">
                <img src="image\\img16.jpg" class="img-fluid" style="width:100%;height:auto;" alt="#" usemap="#mac-book">
                <map name="mac-book" id="mac-book">
                    <area shape="rect" coords="488,202,717,373" alt="Apple" href="#footer">
                    <area shape="rect" coords="732,607,968,780" alt="#" href="Apple accessories.jsp">
                    <area shape="rect" coords="735,1038,982,1191" alt="#" href="Apple accessories.jsp">
                    <area shape="rect" coords="1,1654,372,1854" alt="#" href="item24.jsp">
                    <area shape="rect" coords="413,1656,787,1854" alt="#" href="item25.jsp">
                    <area shape="rect" coords="828,1656,1197,1855" alt="#" href="item25.jsp">
                </map>

            </div>

            <div id="img17">
                <img src="image\\img17.jpg" class="img-fluid" style="width:100%;height:auto;" usemap="#contact">
                <map name="contact">
                    <area shape="rect" coords="3,645,516,739" href="contact.jsp" alt="#">
                </map>
            </div>
        </div>
        <div  id="footer">
            <%@include file="footer.jsp" %>
        </div>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.js"></script>
    </body>
</html>
