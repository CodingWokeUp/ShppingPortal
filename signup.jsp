<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <title>sign up</title>
    </head>
    <body class="container-fluid">
        <style>
            body{
                background-image: url("image/signup_1.jpg"); background-repeat: no-repeat; background-size: cover;
            }
            form{
                border:none;
                padding: 5%;
            }
        </style>
        <div class="row">
            <div class="col-lg ms-auto text-center">
                <legend class="mt-2"style="text-shadow:2px 2px 4px gray, 0 0 12px white, 0 0 6px white;text-decoration-line:underline;font-family:Times New Roman, Times, serif; text-align:center;font-size: 45px;">Get Started</legend>
                <h3 style="text-align:center;font-family:Times New Roman, Times, serif;padding-top: -2; "><b>Sign up Now</b></h3>
            </div>
        </div>
        <div class="row pl-2 pr-2 pb-2">
            <div class="col-lg-3 col-sm"></div>
            <div class="col-lg-6 col-sm m-2">

                <form class="shadow p-3 mb-5 bg-muted rounded" method="post" action="SignUpServlet">

                    <div class="form-outline mb-4">
                        <label class="form-label">Your Name</label>
                        <input type="text" name="name"  class="form-control" placeholder="Enter your name" />
                    </div>

                    <div class="form-outline mb-4">
                        <label class="form-label">Your Email</label>
                        <input type="text" name="email" class="form-control" placeholder="abcXX@gmail.com" />

                    </div>

                    <div class="form-outline mb-4">
                        <label class="form-label">Password</label>
                        <input type="text" name="password" class="form-control"placeholder="Enter your password" />

                    </div>

                    <div class="form-outline mb-4">
                        <label class="form-label">Repeat your password</label>
                        <input type="text" name="re-password" class="form-control"placeholder="Re-Enter your password" />

                    </div>

                    <div class="card-footer"> 
                        <input type="submit" value="sign_up" name="signup" class="subscribe btn btn-primary btn-block shadow-sm" />
                    </div>

                    <p class="text-center text-light mt-3 mb-0">Have already an account? <a href="login.jsp" class="fw-bold text-body"><u>Login here</u></a></p>
                </form>
            </div>
            <div class="col-lg-3 col-sm"></div>
        </div>

        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/jquery.js" type="text/javascript"></script>
    </body>
</html>
