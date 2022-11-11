<%@page import="java.sql.ResultSet"%>
<%@page import="ShoppingAction.OrderProductAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Current Order</title>
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
        </style>
        <!-- product details table start-->
        <div class="row">
            <div class="col-4">

            </div>
            <div class="col-5">
                <h4 class="mt-2 pb-3"style="padding-left:15%;color:rgb(10,10,35); display: inline-block; text-shadow:2px 2px 4px gray , 0 0 6px white;text-decoration-line:underline;font-family:Times New Roman, Times, serif;text-align:center;font-size: 43px;font-weight: 10%;">All Products Details</h4>
            </div>

            <div class="col-3" >
                <a class="btn btn-sm bg-primary text-light shadow-sm" href="index.jsp" style="width:50%;margin:2%; display: block; border-radius:27px;border:#007bff;font-family:serif; ">Add New Product </a>
                <a class="btn btn-sm text-white shadow-sm bg-warning" href="AdminD.jsp" style="width:30%;margin:2%;margin-left:12%;border-radius:27px;border: solid rgb(240,161,80) 2px;font-family:serif;">Back</a>
            </div>
        </div>

        <div id="tables" class="table-wrapper-scroll-y my-custom-scrollbar" style="margin-left:5%;margin-right: 5%;">

            <table id="sign_up"class="table table-hover bg-white text-dark rounded table-borderless shadow "style="text-align:center;">

                <thead class="text-light" style="position:sticky; top:0;background-color:rgb(8,8,30)">
                <th>ORDER ID</th>
                <th>EMAIL</th>
                <th>PRODUCT Id</th>
                <th>NAME</th>
                <th>PRICE</th>
                <th>DISCOUNT</th>
                <th>QUANTITY</th>
                <th>TOTAL</th>
                <th>STATUS</th>
                <th>REMOVE</th>
                </thead>

                <tbody>
                    <%
                        OrderProductAction ac = new OrderProductAction();
                        ResultSet rs1 = ac.allProductOrder();
                        while (rs1.next()) {
                    %>
                    <tr id="tabledata">
                        <td><%=rs1.getInt(1)%> </td>
                        <td><%=rs1.getString(2)%> </td>
                        <td><%=rs1.getString(3)%> </td>
                        <td><%=rs1.getString(4)%></td>
                        <td><%=rs1.getInt(6)%></td>
                        <td><%=rs1.getInt(7)%></td>
                        <td><%=rs1.getInt(8)%></td>
                        <td><%=rs1.getInt(9)%></td>
                         <td>
                                        <%
                                           if(rs1.getString(10).equals("pending"))
                                           {
                                         %>
                                            <a href="ProductOrderSuccessServlet?order_id=<%=rs1.getInt(1) %>" onclick="return confirm('Are you sure to received Payment')"><%=rs1.getString(10) %></a>
                                         <%
                                           }
                                           else
                                           {
                                        %>
                                           <span style="color:green"><%=rs1.getString(10) %></span>
                                              <%
                                           }
                                               %>
                                    </td>
                        <td><a href="OrderDeleteServlet?order_id=<%=rs1.getInt(1)%>" onclick="return confirm('Are you sure you want to delete?')">[DELETE]</a></td>

                    </tr>
                    <%                        }
                    %>
                </tbody>
            </table>

            <script src="js/jquery.js"></script>
            <script src="js/bootstrap.js"></script>
           </body>
</html>
