package controller;

import data.UserMapper;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    int id, balance;
    String username, password, name, address, phone, email, regdate;
    User ausr = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            /* Checking if submitted parameters from login form are available inside a DB */
            String usernme = request.getParameter("username");
            String passwrd = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cupcakes",
                    "root", "Abby77^nice");
// ====================================================== CHANGE USER AND PASSWORD!!! =====================================================================
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from members where username='" + usernme + "' and password='" + passwrd + "'");

            if (rs.next()) {
                int idssn = Integer.parseInt(rs.getString("id"));
                UserMapper usr = new UserMapper();
//            name = session.getAttribute("ssn");
//            id = Integer.parseInt((String) request.getAttribute("ssn"));
                User ausr = usr.getUser(idssn);
                id = ausr.getId();
                username = ausr.getUsername();
                password = ausr.getPassword();
                name = ausr.getName();
                address = ausr.getAddress();
                phone = ausr.getPhone();
                email = ausr.getEmail();
                regdate = ausr.getRegdate();
                balance = ausr.getBalance();
                HttpSession session = request.getSession();
                session.setAttribute("id", id);
                session.setAttribute("username", username);
                session.setAttribute("password", password);
                session.setAttribute("name", name);
                session.setAttribute("address", address);
                session.setAttribute("phone", phone);
                session.setAttribute("email", email);
                session.setAttribute("regdate", regdate);
                session.setAttribute("balance", balance);
                response.sendRedirect("navigation/viewprofile.jsp");

            } else {
                response.sendRedirect("login/fail.jsp");
            }
        } catch (Exception SQLException) {
            response.sendRedirect("login/failSQL.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
