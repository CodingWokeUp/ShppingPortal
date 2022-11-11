<%@page import="ShoppingAction.OrderProductAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="js/bootstrap.js" type="text/js" rel="stylesheet">
        <link href="css/navBar.css" type="text/css" rel="stylesheet">
        <title>Navigation bar</title>
    </head>
    <body>

        <!-- navigation bar-->
        <nav id="nav" class="navbar navbar-expand-lg navbar-light ">

            <button class="navbar-toggler navbar-brand bg-dark" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <!--home button sodding-->
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <!--product button sodding-->
                    <li class="nav-item dropdown show">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Products
                        </a>
                        <div class="dropdown-menu bg-dark " aria-labelledby="navbarDropdown">
                            <a class="dropdown-item text-light " href="product.jsp">see all categories</a>
                            <a class="dropdown-item text-light" href="tablet.jsp">Tablet</a>
                            <a class="dropdown-item text-light" href="A irpods.jsp">A irpods</a>
                            <a class="dropdown-item text-light" href="mac book.jsp">Mac book </a>
                            <a class="dropdown-item text-light" href="Apple watch.jsp">Apple watch</a>
                            <a class="dropdown-item text-light" href="Apple accessories.jsp">Apple accessoriess</a>
                        </div>
                    </li>
                    <!--Sign up button sodding-->
                    <li>
                        <a class="nav-link" href="signup.jsp">Signup<span class="sr-only">(current)</span></a>
                    </li>
                    <!--contact button start-->
                    <li class="nav-item active">
                        <a class="nav-link" href="contact.jsp">Contact <span class="sr-only">(current)</span></a>
                    </li>
                    <!--User details start-->
                    <%
                        String email1 = null;

                        HttpSession sess1 = request.getSession();
                        if (sess1 != null) {
                            try {
                                email1 = sess1.getAttribute("UserSessionId").toString();

                            } catch (Exception e) {
                                email1 = " ";
                            }
                        }
                        OrderProductAction aac = new OrderProductAction();
                        int i = 0;
                        i = aac.orderInKard(email1);
                    %>
                    <li> 
                        <a href="user.jsp" class="nav-link">
                            <%=email1%>
                        </a>
                    </li>
                    <%
                        if (!email1.equals(" ")) {
                    %>    

                    <li><a href="logout.jsp" class="nav-link" style="color:white;">Logout</a></li>
                        <%                        }
                        %>
                    <li class="m-1">
                        <a href="Payment1.jsp">
                            <img src="image//trolliyicon.jpg" height="45px" width="45px" style="border-radius: 25px;" >
                            <b><sup><%=i%></sup></b>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        <!--end of nav-bar-->
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
    </body>
</html>