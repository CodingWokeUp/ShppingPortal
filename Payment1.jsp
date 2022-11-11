<%@page import="ShoppingAction.OrderProductAction"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment1</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>

    </head>
    <body class="container-fluid">
        <style>
            .container-fluid{
                background-color:rgb(0,168,132);
            }
            .table-wrapper-scroll-y{
                display: block;
            }
            #paymentPandingProductDetalitsDiv{
                position: relative; height: 370px;overflow: auto;margin-top: 4%;width:100%;margin-left: 6%;margin-right:0%;overflow-x: hidden;
            }
            #paymentPandingProductDetalitsDiv::-webkit-scrollbar{
                width: 7px;   
            }
            #paymentPandingProductDetalitsDiv::-webkit-scrollbar-track{
                border-radius: 25px;background-color:black;
            }
            #paymentPandingProductDetalitsDiv::-webkit-scrollbar-thumb{
                background-color:gray;border-radius: 25px;  
            }
            #addProductButton{
                margin-left:6.5%;width:80%;height: 95%;font-size: 95%;color: white;border:1px solid white;cursor: pointer; background-color: transparent;box-shadow: 0 6px 6px rgba(0, 0, 0, 0.6);
            }
            #addProductButton:hover{
                background-color: white;color: black;
            }
        </style>
        <!--nav bar coding-->
        <header id="navbar"style="margin: 1%;">
            <%@include file="nav.jsp" %>
        </header>
        <%
            ResultSet rs = null;
            try {
                OrderProductAction acc = new OrderProductAction();
                rs = acc.productForPayment(email1);
            } catch (Exception e) {
            }
        %>
        <!--mid area coding-->
        <div class="row">
            <div class="col-7 table-wrapper-scroll-y" id="paymentPandingProductDetalitsDiv">
                <table id="paymentPandingProductDetalits"class="table table-hover bg-white text-dark rounded table-bordered shadow">
                    <thead class="thead-dark">
                        <tr scope="row">
                            <th>ORDER ID</th>
                            <th>PRODUCT ID</th>
                            <th>PRODUCT NAME</th>
                            <th>PRODUCT PRICE</th>
                            <th>DIS %</th>
                            <th>QUANTITY</th>
                            <th>TOTAL</th>
                            <th>REMOVE ITEM</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int grandTotal = 0;
                            while (rs.next()) {
                                if (rs.getString(10).equals("pending")) {
                                    grandTotal = grandTotal + rs.getInt(9);
                        %>
                        <tr scope="row">
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getInt(6)%></td>
                            <td><%=rs.getInt(7)%></td>
                            <td><%=rs.getInt(8)%></td>
                            <td><%=rs.getInt(9)%></td>
                            <td><a href="RemoveProductServlet?order_id=<%=rs.getInt(1)%>">[REMOVE]</a></td>

                        </tr>


                        <%
                                }
                            }
                        %>
                        <tr>
                            <td colspan="6" class="text-left"><b>Grand Total</b></td>
                            <td colspan="2"><b><%=grandTotal%></b></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="col-4 mt-4 ">
                <div class="row">
                    <div class="col">
                        <img src="image//whatsapp_qr.png" height="95%" width="88%"style="padding-left:4.7%;">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <a href="product.jsp" id="addProductButton"class="btn btn-info mb-2">Add More product </a>
                    </div>
                </div>
                <div class="col-1"></div>
            </div>
            <p style="color:red; padding-left: 7.5%;padding-top:0.7%; width:60%;">After payment please sand screen shot of receipt at whatsapp no.8954xxxxxx or email at: tanudhiman@gmail.com.   </p>       

        </div>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
    </body>
</html>
