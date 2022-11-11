
<%@page import="java.sql.ResultSet"%>
<%@page import="ShoppingAction.ProductAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buy Product</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
    </head>
    <style>
        .container-fluid{
            background-color: rgb(233,236,239);
        }
        #header{
            margin: 1%;
            position:sticky;
            top:0;
            z-index: 4;
            background-color: rgb(233,236,239);
        }
        #title{
            font-family: poptop;
            display: flex;
            padding-left: 2%;
            text-align: left;
            font-weight: bold;
        }
        #productdetail-form{
            padding:4%;
            border:1px solid black;
            background-color: white;
            border-radius: 25px;
        }
        #productdetail-form label{
            font-size: 17px;
            font-family: triton;
            font-weight: bolder;
        }
        #productdetail-form input{
            font-family:serif;
            color: black;
        }
        #productdetail{
            font-family: serif;
            color: black;
        }
        #submit-button .btn{
            display:flex;
        }
    </style>
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

            String ProductId = request.getParameter("p_id");

            ProductAction ac = new ProductAction();
            ResultSet rs = ac.getBuyProduct(ProductId);
            rs.next();
       %>

        <header id="header" class="row">
            <%@include file="nav.jsp" %>
        </header>
        <div class="container">
            <main id="main">
                <div class="row">
                    <div class="col-2"></div>
                    <div class=" col-8">
                        <div class="row" id="title">
                            <div class="col"><h1>Product Detail</h1></div>

                        </div>
                        <!--product detail form start-->
                        <form id="productdetail-form" action="OrderProductServlet" method="post">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name="email"class="form-control"value="<%=email%>" readonly="">
                            </div>
                            <div class="form-group">
                                <label>Id</label>
                                <input type="text" name="p_id" class="form-control" value="<%=rs.getString(1)%>" readonly="">
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="p_name" class="form-control" value="<%=rs.getString(2)%>" readonly="">
                            </div>
                            <div class="form-group">
                                <label>Detail</label>
                                <textarea id="productdetail" name="p_detail" type="text" class="form-control" value="" readonly=""><%=rs.getString(3)%></textarea>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input id="price"type="text" name="price" class="form-control" value="<%=rs.getInt(4)%>" readonly="">
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input id="quantity" type="number"name="quantity" class="form-control" value="0">
                            </div>
                            <div class="form-group">
                                <label>Discount</label>
                                <input id="discount" type="number"name="discount" value="0"class="form-control"readonly="">
                            </div>
                            <div class="form-group">
                                <label>Total</label><span style="font-size:small;color:red;">( To get the total price on click Total field.)</span>
                                <input id="total" type="text"name="total" class="form-control"readonly="" onclick="totalprice()"/>
                            </div>
                            <div id="submit-button">
                                <input class="btn btn-success"type="submit"/>
                            </div>
                        </form>
                        <!--product detail form end-->
                    </div>
                    <div class="col-2"></div>
                </div>
            </main>
        </div>
        <footer id="footer" class="row"></footer>
        <script>
                                    function totalprice() {

                                        var p = document.getElementById("price").value;
                                        var q = document.getElementById("quantity").value;
                                        var d = document.getElementById("discount").value;
                                    
                                        var price = parseInt(p);
                                        var quantity = parseInt(q);
                                        var discount = parseInt(d);
                                        
                                        var total= price*quantity;
                                     
                                        total=total*(100-discount)/100;
                                        document.getElementById("total").value=total;

                                    }
        </script>


        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.js"></script>
    </body>
</html>
                                       
