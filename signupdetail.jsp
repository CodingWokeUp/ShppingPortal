<%@page import="java.sql.ResultSet"%>
<%@page import="ShoppingAction.SignupAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sign-up detail</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <style>
            body{
                background-image:url("image//adminTablebg.jpg"); background-repeat: no-repeat; background-size: cover;

            }
            .my-custom-scrollbar {
                position: relative; height: 500px; overflow: auto;
            }
            .table-wrapper-scroll-y {
                display: block;
            }
            .my-custom-scrollbar::-webkit-scrollbar{
                width: 7px;   
            }
            .my-custom-scrollbar::-webkit-scrollbar-track{
                border-radius: 25px; background-color:white;
            }
            .my-custom-scrollbar::-webkit-scrollbar-thumb{
                background-color:gray; border-radius: 25px;  
            }
        </style>
        <%
            String email = null;
            
            HttpSession sess = request.getSession();
            if (sess != null)
            {
                email = sess.getAttribute("AdminSessionId").toString();
            } else 
            {
                response.sendRedirect("login.jsp");
            }

            String emailid = request.getParameter("email");

        %>
        <!--sign up table -->
        <div class="row">
            <div class="col-4"></div>
            <div class="col-5">
                <h4 class="mt-2 pb-3"style="padding-left:15%; display: inline-block; text-shadow:2px 2px 4px gray , 0 0 6px white;text-decoration-line:underline;font-family:Times New Roman, Times, serif;text-align:center;font-size: 43px;color:rgb(8,8,30);">Sign-up Details</h4>
            </div>
            <div class="col-1"></div>
            <div class="col-2">
                <a class="btn btn-sm text-light" href="AdminD.jsp" style="width:50%;margin:5%;margin-top:12%; border-radius: 25px; background-color:rgb(246,0,0)">Back </a>
            </div>
        </div>
        <div id="tables" class="table-wrapper-scroll-y my-custom-scrollbar" style="margin-left:5%;margin-right: 5%;">

            <table id="sign_up"class="table table-hover bg-white text-dark rounded table-bordered shadow "style="text-align:center;">
                <tr style="position:sticky; top:0; background-color:rgb(8,8,30)" class="text-light">
                    <th>Id No.</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>PASSWORD</th>
                    <th>MOBILE</th>
                    <th>DELETE</th>
                    <th>UPDATE</th>
                </tr>
                <%
                    SignupAction sa = new SignupAction();
                    ResultSet rs = sa.getCustomers();
                    int i = 1;
                    while (rs.next()) {
                %>
                <tbody>
                    <tr>
                        <td><%=i%> </td>
                        <td><%=rs.getString(1)%> </td>
                        <td><%=rs.getString(2)%> </td>
                        <td><%=rs.getString(3)%> </td>
                        <td><%=rs.getString(4)%> </td>
                        <td><a href=" DeletePersonServlet?email=<%=rs.getString(2)%>" onclick="return confirm('Are you sure you want to delete?')"><img src="image/delete.png" width="25px" height="30px"></a></td>
                        <td><a href="signupdetail.jsp?email=<%=rs.getString(2)%>" class="btn btn-success btn-sm" style="height:30px;">Update</a></td>
                    </tr>
                </tbody>
                <%
                        i++;
                    }
                %>
            </table>
            <%
                rs.beforeFirst();
                String id = null, name = null, mobile = null, password = null;
                while (rs.next()) {
                    if (rs.getString(2).equals(emailid)) {
                        id = rs.getString(2);
                        name = rs.getString(1);
                        password = rs.getString(3);
                        mobile = rs.getString(4);
                    }
                }
            %>
            <!--update modal start -->
            <div class="modal" id="update">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4>Update Data</h4>
                            <button  type="button"class="close" data-dismiss="modal" >&times;</button>
                        </div>
                        <div class="modal-body">

                            <form method="post" action="updateUserDataServlet">

                                <div class="form-group">
                                    <label>NAME</label>
                                    <input type="text" value="<%=name%>" name="name" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>EMAIL</label>
                                    <input type="email" value="<%=id%>" name="email" class="form-control" readonly="">
                                </div>
                                <div class="form-group">
                                    <label>PASSWORD</label>
                                    <input type="password" value="<%=password%>" name="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>MOBILE</label>
                                    <input type="text" value="<%=mobile%>" name="mobile" class="form-control">
                                </div>
                                <input type="submit" value="update-details"class="btn btn-success">

                            </form>                                    
                        </div>
                        <div class="modal-footer"></div>
                    </div>
                </div>

            </div>
            <!--update data modal end-->  
            <script src="js/jquery.js"></script>
            <script src="js/bootstrap.js"></script>

            <%
                if (emailid != null) {

            %>
            <script>
                            $(document).ready(function()
                            {
                                $("#update").modal('show');
                            }

                            );

            </script>

            <%                }
            %>

    </body>
</html>
