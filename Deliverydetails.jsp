
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delivery details</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
         <%
            
            String email = null;
            HttpSession  sess = request.getSession();
            if (sess != null)
            {
                email = sess.getAttribute("AdminSessionId").toString();
            } else {
                response.sendRedirect("login.jsp");
            }

        %>
        <style>
            body{
                background-image:url("image//deliverybg2.jpg"); background-repeat: no-repeat; background-size: cover; 
            }
        </style>
        <h1>Hello World!</h1>
         <script src="js/jquery.js"></script>
            <script src="js/bootstrap.js"></script>
    </body>
</html>
