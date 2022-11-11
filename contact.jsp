<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">

        <title>JSP Page</title>
    </head>
    <body class="container-fluid">
        <%
             String email = null;
            try {
                HttpSession sess = request.getSession();
                if (sess != null) {
                    email = sess.getAttribute("UserSessionId").toString();
                }

            } catch (Exception e) {
                response.sendRedirect("login.jsp");
            }

        %>
        <style>
            #mid{
                height:62%;
                width: 100%;
                opacity: .9;
                background-image: url("image/contact.jpg"); background-repeat: no-repeat; background-size: cover;
            }
            #imge{
                padding-top: 9%; padding-left: 12%; border-radius: 25px;
            }
            #contact-form{
                margin-top: 8%;
            }

        </style>
        <div id="header" style="height:25%">
            <%@include file="header.jsp" %>
        </div>
        <div id="navbar" height="100px" width="99%" style="margin-bottom:3px;margin-top:2px;">
            <%@include file="nav.jsp" %>
        </div>
        <!-- mid part codding in html-->
        <div id="mid" class="container pb-5">
            <div class="row justify-content-center align-item-center fw-bold text-dark" style="padding-top:4% ;text-decoration: underline 2.2px;">
                <h1 style="text-shadow:2px 2px 4px gray, 0 0 22px white, 0 0 6px white;text-decoration-line:underline;font-family:Times New Roman, Times, serif;">Contact with Company</h1>
            </div>
            <div class="row">
                <div class="col-md-5 col-sm-8 col" id="imge">
                    <img src="image\\moiiicon.jpg" class="justify-content-center align-item-center"
                         style="  border-radius: 25px;" class="img-flex" width="50%" height="56%">
                    <h4 style="font-family: sans-serif; padding-top: 3%; padding-left: 2%; font-weight:4;">Mr. Moii Portal</h4>
                </div>
                <!--contact form start-->
                <form class="col-md-6 col-sm-8 col" id="contact-form"method="post" action="contactServlet">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label" style="text-shadow:0px 0px 1px gray;font-family: Arial, Helvetica, sans-serif;">Email address</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" name="email"
                               placeholder="name@example.com">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label"style="text-shadow:0px 0px 1px gray;font-family: Arial, Helvetica, sans-serif;">Example textarea</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="msg"></textarea>
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button class="btn btn-warning btn-text btn-rounded" id="submit" type="submit"
                                onclick='document.getElementById("msg").innerHTML = "Massage Send sucesse...."'>Submit</button>
                        <p id="msg"style="padding-right:2%;font-size:90%;">Send your massage</p>
                    </div>
                </form>
                <!--contact form end-->
            </div>
            <div class="row justify-content-center align-item-center fw-bold text-dark" style="padding-top: 5%; text-decoration: underline;">

                <h3 style="text-shadow:1px 1px 2px gray, 0 0 20px white, 0 0 5px white;text-decoration-line:underline;font-family:Times New Roman, Times, serif;"> Company Contact Information</h3>
            </div>
            <div class="row" style="padding-top: 4%;">
                <div class="col-6" style="text-align:right ;"> Company Name:</div>
                <div class="col-6"style="text-align:left ;"> Moii portal</div>

            </div>
            <div class="row">
                <div class="col-6"style="text-align:right ;"> Website:</div>
                <div class="col-6"style="text-align:left ;"><a href="">https://www.moii.app/</a></div>

            </div>

        </div>
        <div id="footer">
            <%@include file="footer.jsp" %>
        </div>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/jquery.js" type="text/javascript"></script>
    </body>
</html>
