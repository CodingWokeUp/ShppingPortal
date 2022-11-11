
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="js/bootstrap.js" type="text/js" rel="stylesheet">

    </head>
    <body class="container-fluid">
        <style>
            body{
                background-image: url("image/signup_1.jpg"); background-repeat: no-repeat; background-size: cover;
            }
            #main-mid{
                height:70%; width:100%;padding:3%;background-color:#e5e5e5;margin-top: 5%;
            }
            #hadding{
                text-shadow:2px 2px 4px gray, 0 0 12px white, 0 0 6px white;text-decoration-line:underline;font-family:Times New Roman, Times, serif; text-align:center;font-size: 45px;height:10%;
            }
        </style>
        <%
            
        %>
        <div class="row">
            <div class="col-12 text-center pt-4" id="hadding">
                <h1>Forget Password</h1>
            </div>
        </div>

        <div id="main" class="row">

            <div class="col-3"></div>

            <div class="col-6 shadow rounded" id="main-mid">
                <form class="shadow p-3 bg-muted rounded" style="background-color:#f1f3f4;opacity: 0.9;">
                    <div class="form-outline mb-4">
                        <label class="form-label">Email</lable>
                        <input type="email" placeholder="Enter your login Email" name="user-email"class="form-control">
                        </div>
                    <div class="form-outline mb-4">
                        <lable class="form-label">Enter Your New Password</lable>
                        <input type="password" placeholder="Enter your password" name="user-pwd"class="form-control">
                    </div>
                    <div class="form-outline mb-4">
                        <lable class="form-label">Re-Enter Your Password</lable>
                        <input type="password" placeholder="Enter your password" class="form-control">
                    </div>
                    <div class="card-footer">
                        <a type="button" href="forgetPasswordServlet"class="btn btn-success btn-sm btn-block" value="Reset">Reset </a>
                    </div>
                </form>
            </div>
            <div class="col-3"></div>
        </div>
    </body>
</html>
