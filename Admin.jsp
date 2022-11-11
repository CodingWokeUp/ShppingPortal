
<%@page import="ShoppingAction.ProductAction"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ShoppingAction.SignupAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
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

            String emailid = request.getParameter("email");

        %>

        <style>
            body{
                background-image:url("image//adminbg.jpg"); background-repeat: no-repeat; background-size: cover;


            }
            #left{
                background-image:url("image//adminbgl.jpg"); background-repeat: no-repeat; background-size: cover; 
            }
            #main{
                /* margin: 4%;
                 /* background-color: rgb(229,229,229);*/
                width: 80rem; 
                height:39.2rem;
            }
            #left{
                height: 100%;
                width: 19%;
                float: left;
                /* padding-left: 2%;*/
            }
            left_top{
                height:30%;
                width:80%;
            }
            left_bottum{
                height:65%;
                width:80%;
            }
            #right{
                height: 100%;
                width: 77%;
                float: right;
            }
            .my-custom-scrollbar {
                position: relative;
                height: 390px;
                overflow: auto;
            }
            .table-wrapper-scroll-y {
                display: block;
            }
            .my-custom-scrollbar::-webkit-scrollbar{
                width: 7px;   
            }
            .my-custom-scrollbar::-webkit-scrollbar-track{
                border-radius: 25px;
                background-color:white;
            }
            .my-custom-scrollbar::-webkit-scrollbar-thumb{
                background-color:gray;  
                border-radius: 25px;  
            }
        </style>


        <div id="main" >
            <div id="left">
                <div id="left_top">
                    <span style="text:center; color: white;"><h5> CREATIVE TIM </h5> </spam>
                </div>

                <nav id="sidebarMenu" id="left_bottum" class="collapse d-lg-block sidebar collapse rounded">
                    <div class="position-sticky">
                        <div class="">
                            <a href="#" class=" ripple" aria-current="true">
                                <i class=" me-3 "></i><span></span>
                            </a>
                            <a href="#product_table" class=" py-2 ripple">
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        All Product
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">A irpods</a>
                                        <a class="dropdown-item" href="#"></a>
                                        <a class="dropdown-item" href="#">Tablet</a>
                                        <a class="dropdown-item" href="#">mac book</a>
                                        <a class="dropdown-item" href="#"></a>
                                    </div>
                                </div>
                            </a>
                            <a href="#" class=" py-2 ripple"><i
                                    class="me-3"></i><span data-toggle="modal" data-target="#addproduct">Add New Product</span>
                            </a>
                            <a href="#" class=" py-2 ripple">
                                <i class=" me-3"></i><span>Apple watch</span>
                            </a>
                            <a href="#" class=" py-2 ripple">
                                <i class="fas fa-chart-pie fa-fw me-3"></i><span>A irpods</span>
                            </a>
                            <a href="#" class="py-2 ripple">
                                <i class="fas fa-chart-bar fa-fw me-3"></i><span>Phone</span>
                            </a>
                            <a href="#" class="py-2 ripple">
                                <i class="fas fa-globe fa-fw me-3"></i><span>mac-book</span>
                            </a>
                            <a href="#" class="py-2 ripple">
                                <i class="fas fa-building fa-fw me-3"></i><span>Tablet</span>
                            </a>
                            <a href="#" class="py-2 ripple">
                                <i class="fas fa-calendar fa-fw me-3"></i><span>Cancel order</span>
                            </a>
                            <a href="#" class="py-2 ripple">
                                <i class="fas fa-users fa-fw me-3"></i><span>Deliver order </span>
                            </a>
                            <a href="#" class="py-2 ripple">
                                <i class="fas fa-money-bill fa-fw me-3"></i><span>Payment</span>
                            </a>
                            <a href="signupdetail.jsp" class="py-2 ripple">
                                <i class="fas fa-money-bill fa-fw me-3"></i><span>Sign-up</span>
                            </a>
                        </div>
                    </div>
                </nav>


            </div>
            <div id="right">
                <!-- Image and text -->
                <nav class="navbar navbar-dark bg-dark mb-3 shadow-sm rounded">
                    <a class="navbar-brand" href="#"style="float:left" >
                        <img src="image/adminicon.jpg" class="d-inline-block align-top" alt="" height="30px" width="30px">
                        <spam class="text-light"> Welcome Admin: <%=email%></spam>
                    </a>
                    <a href="logout.jsp" class="btn btn-primary"> Logout</a>

                </nav>

                <!--product modal-->
                <div class="modal" id="addproduct">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4>Add Product</h4>
                                <button  type="button"class="close" data-dismiss="modal" >&times;</button>
                            </div>
                            <div class="modal-body">
                                <form method="post" action="ProductServlet">
                                    <div class="form-group">
                                        <label class="text-bold">PRODUCT ID</label>
                                        <input type="text" value="Enter product id" name="p_id" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>PRODUCT NAME</label>
                                        <input type="text" value="Enter product name" name="p_name" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>PRODUCT DETAILS</label>
                                        <input type="text" value="Enter product details" name="p_detail" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>PRODUCT PRICE</label>
                                        <input type="text" value="Enter product price" name="p_price" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>PRODUCT QUANTITY</label>
                                        <input type="text" value="Enter product quantity" name="quantity" class="form-control">
                                    </div>
                                    <input type="submit" value="addproduct"class="btn btn-success">

                                </form>                                    
                            </div>
                            <div class="modal-footer"></div>
                        </div>
                    </div>

                </div> 
                <!--add product modal end-->
                <!--total earning -->
                <div id="total-earning">


                </div>
                <!--total earning end-->

            </div>


        </div>
    </div>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>


</body>
</html>
