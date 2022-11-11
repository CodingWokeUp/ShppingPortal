<%
    session.removeAttribute("UserSessionId");
    response.sendRedirect("index.jsp");
%>