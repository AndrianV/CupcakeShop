<%@ page import ="java.sql.*" %>
<%
    
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cupcakes",
            "root", "Abby77^nice");
    // ====================================================== CHANGE USER AND PASSWORD!!! =====================================================================
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into members(username, password, name, address, phone, email, regdate, balance) values ('" + username + "','" + password + "','" + name + "','" + address + "','" + phone + "','" + email + "', CURDATE(),77)");
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("index.html");
    }
    
%>