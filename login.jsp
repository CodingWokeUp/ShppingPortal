<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <title>Login</title>
    </head>
    <body class="container-fluid">
        <style>
            body{
                background-image: url("image/login.jpg"); background-repeat: no-repeat; background-size: cover;
            }
            .divider:before {
                content: "";
                flex: 1;
                height: 1px;
                background: #eee;
            }
            .h-custom {
                height: calc(100% - 73px);
            }
            @media (max-width: 450px) {
                .h-custom {
                    height: 100%;
                }
            }
            form button{
                border-radius: 50%;
                background-color: rgb(232,232,234);
            }
        </style>
        <div class="row pt-3">
            <div class="col-sm-3 col-lg-5"></div>
            <div class="col-sm col-lg">
                <div class="row pb-4">
                    <div class="col-lg ms-auto text-ceter">
                        <legend class="mt-3"style="text-shadow:2px 2px 4px gray, 0 0 12px white, 0 0 6px white;text-decoration-line:underline;font-family:Times New Roman, Times, serif; text-align:center;font-size: 45px;">Login</legend>
                    </div>
                </div>
                <div class="row" class="shadow-sm p-3 mb-5 bg-white rounded">
                    <div class="col-sm-2 col-lg-3"></div>
                    <div class="col-sm-8 col-lg">
                        <form method="post" action="LoginServlet">

                            <div style="padding-bottom: 4%;">
                                <input value="user" name="person" type="radio" ><span class="mx-4" >User</span>
                                <input value="admin" name="person" type="radio" ><span class=" mx-4">Admin</span>
                            </div>
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <label class="form-label" for="form3Example3">Email address</label>
                                <input type="email" id="form3Example3"  name="user" class="form-control"
                                       placeholder="Enter a valid email address" />
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-3">
                                <label class="form-label" for="form3Example4">Password</label>
                                <input type="password" id="form3Example4" name="password" class="form-control"
                                       placeholder="Enter password" />
                            </div>

                            <div class="d-flex justify-content-between align-items-center">
                                <!-- Check box -->
                                <div class="form-check mb-0">
                                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                                    <label class="form-check-label" for="form2Example3">
                                        Remember me
                                    </label>
                                </div>
                                <a href="#!" class="text-body">Forgot password?</a>
                            </div>

                            <div class="text-center text-lg-start mt-4 pt-2">
                                <input type="submit" class="btn btn-primary " value="log_In" name="login"
                                       style="padding-left: 2.5rem; padding-right: 2.5rem;"/>
                                <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="signup.jsp"
                                                                                                  class="link-danger">Sign in</a></p>
                            </div>
                            <div class="divider d-flex align-items-center my-3">
                                <p class="text-center fw-bold mx-2 mb-0">Or</p>
                            </div>

                            <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start" style="padding-left:6%;">
                                <p class="lead mb-0 text-dark">Sign in with</p>
                                <button type="button" class="btn btn-floating ">
                                    <i class="fab fa-facebook-f"><img src="image/facebook.png"></i>
                                </button>

                                <button type="button" class="btn btn-floating ">
                                    <i class="fab fa-twitter"><img src="image/twitter.png" ></i>
                                </button>

                                <button type="button" class="btn  btn-floating ">
                                    <i class="fab fa-linkedin-in"><img src="image/linkedin.png"></i>
                                </button>
                            </div>


                        </form>
                    </div>
                    <div class="col-sm-2 col-lg-3"></div>
                </div>
            </div>
        </div>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/jquery.js" type="text/javascript"></script>
    </body>
</html>
