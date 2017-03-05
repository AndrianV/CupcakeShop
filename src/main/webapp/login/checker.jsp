<%
    if ((session.getAttribute("username") == null || session.getAttribute("username") == "") || (session.getAttribute("password") == null || session.getAttribute("password") == "")) {
        response.sendRedirect("../index.html");
    } else {
        response.sendRedirect("navigation/myplace.jsp");
    }
%>