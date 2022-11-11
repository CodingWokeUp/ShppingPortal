<%@page import="java.sql.ResultSet"%>
<%@page import="ShoppingAction.ProductAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product detail</title>
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
            String product_id = request.getParameter("product_id");

        %>
        <style>
            body{
                background-image:url("image//adminTablebg.jpg"); background-repeat: no-repeat; background-size: cover; 
            }
            .my-custom-scrollbar {
                position: relative;
                height: 500px;
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
                background-color:rgb(8,8,30);  
                border-radius: 25px;  
            }
            #tabledata td{
                border:1px solid gray;
            }
            .text-light th{
                border:0.6px solid white;
            }
            #hadding{
               padding-left:15%;color:rgb(10,10,35); display: inline-block; text-shadow:2px 2px 4px gray , 0 0 6px white;text-decoration-line:underline;font-family:Times New Roman, Times, serif;text-align:center;font-size: 43px;font-weight: 10%; 
            }
            #add-new-product-button{
              width:50%;margin:2%; display: block; border-radius:27px;border:#007bff;font-family:serif;background-color: blue;color:white;
            }
            #add-new-product-button:hover{
               background-color:transparent; color: blue;border: 2px solid blue; 
            }
            #back-button{
              width:30%;margin:2%;margin-left:12%;border-radius:27px;font-family:serif;background-color:rgb(246,0,0);color: white;  
            }
            #back-button:hover{
                background-color:transparent; color: rgb(246,0,0);border: 2px solid rgb(246,0,0);
            }
        </style>
        <!-- product details table start-->
        <div class="row">
            <div class="col-4">

            </div>
            <div class="col-5">
                <h4 class="mt-2 pb-3" id="hadding">Products Details</h4>
            </div>

            <div class="col-3" >
                <a class="btn btn-sm shadow-sm"data-toggle="modal"id="add-new-product-button" data-target="#addproduct" href="#addproduct">Add New Product </a>
                <a class="btn btn-sm shadow-sm " href="AdminD.jsp"id="back-button">Back</a>
            </div>
        </div>

        <div id="tables" class="table-wrapper-scroll-y my-custom-scrollbar" style="margin-left:5%;margin-right: 5%;">

            <table id="sign_up"class="table table-hover bg-white text-dark rounded table-borderless shadow "style="text-align:center;">
                <tr class="text-light" style="position:sticky; top:0;background-color:rgb(8,8,30)">
                    <th>Id</th>
                    <th>NAME</th>
                    <th>DETAILS</th>
                    <th>PRICE</th>
                    <th>QUANTITY</th>
                    <th>SELL QUANTITY</th>
                    <th>PAYMENT STATUS</th>
                    <th>DELETE</th>
                </tr>
                <%

                    ProductAction sa = new ProductAction();
                    ResultSet rs = sa.getProduct();
                    while (rs.next()) {


                %>
                <tbody>
                    <tr id="tabledata">
                        <td><%=rs.getString(1)%> </td>
                        <td><%=rs.getString(2)%> </td>
                        <td><%=rs.getString(3)%> </td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td></td>
                        <td></td>
                        <td><a href="DeleteProducrServlet?pid=<%=rs.getString(1)%>" onclick="return confirm('Are you sure you want to delete?')"><img src="image/delete.png" width-="25px" height="30px"></a></td>

                    </tr>
                </tbody>
                <%
                    }
                %>
            </table>
         
            <!-- product add modal start-->
            <div class="modal" id="addproduct">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <a> <h4>Add Product</h4></a>
                           <button  type="button"class="close" data-dismiss="modal" >&times;</button>
                        </div>
                        <div class="modal-body">
                            <form method="post" action="ProductServlet">
                                <div class="form-group">
                                    <label class="text-bold">PRODUCT ID</label>
                                    <input type="text"  placeholder="Enter product Id" name="p_id" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>PRODUCT NAME</label>
                                    <input type="text" placeholder="Enter product name" name="p_name" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>PRODUCT DETAILS</label>
                                    <input type="text" placeholder="Enter product details"name="p_detail" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>PRODUCT PRICE</label>
                                    <input type="text"placeholder="Enter product price" name="p_price" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>PRODUCT QUANTITY</label>
                                    <input type="text"placeholder="Enter product quantity" name="quantity" class="form-control">
                                </div>
                                <input type="submit" value="addproduct"class="btn btn-success">

                            </form>                                    
                        </div>
                        <div class="modal-footer"></div>
                    </div>
                </div>

            </div> 
            <!-- product add modal end-->

            <script src="js/jquery.js"></script>
            <script src="js/bootstrap.js"></script>
            <%
                if (product_id != null) {

            %>
            <script>
                            $(document).ready(function()
                            {
                                $("#addproduct").modal('show');
                            }

                            );

            </script>
            <%    }
            %>

    </body>
</html>
