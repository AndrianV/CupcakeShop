package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Order", urlPatterns = {"/Order"})
public class Order extends HttpServlet {

    private String bottom, topping;
    int bottomprice, toppingprice, quantity, quantitysum, sumprice, sumorder;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            bottom = request.getParameter("bottom");
            topping = request.getParameter("topping");
            quantity = 0;
            quantity = Integer.parseInt(request.getParameter("quantity"));
            if (quantity == 0){
                if(bottom == null || topping == null){
                response.sendRedirect("navigation/myplace.jsp");
            }
            }
            
            
            
            bottomprice = 0;
            switch (bottom) {
                case "Chocolate":
                    bottomprice += 5;
                    break;
                case "Vanilla":
                    bottomprice += 5;
                    break;
                case "Nutmeg":
                    bottomprice += 5;
                    break;
                case "Pistacio":
                    bottomprice += 6;
                    break;
                case "Almond":
                    bottomprice += 7;
                    break;
            }
            toppingprice = 0;
            switch (topping) {
                case "Chocolate":
                    toppingprice += 5;
                    break;
                case "Blueberry":
                    toppingprice += 5;
                    break;
                case "Raspberry":
                    toppingprice += 5;
                    break;
                case "Crispy":
                    toppingprice += 6;
                    break;
                case "Strawberry":
                    toppingprice += 6;
                    break;
                case "Rum/Raisin":
                    toppingprice += 7;
                    break;
                case "Orange":
                    toppingprice += 8;
                    break;
                case "Lemon":
                    toppingprice += 8;
                    break;
                case "Blue cheese":
                    toppingprice += 9;
                    break;
            }
            quantitysum = 0;
            switch (quantity) {
                case 0:
                    quantitysum = 0;
                    break;
                case 1:
                    quantitysum += 1;
                    break;
                case 2:
                    quantitysum += 2;
                    break;
                case 5:
                    quantitysum += 5;
                    break;
                case 10:
                    quantitysum += 10;
                    break;
            }
            sumprice = bottomprice + toppingprice;
            sumorder = sumprice * quantitysum;
            HttpSession session = request.getSession();
            session.setAttribute("bottomprice", bottomprice);
            session.setAttribute("toppingprice", toppingprice);
            session.setAttribute("sumprice", sumprice);
            session.setAttribute("bottom", bottom);
            session.setAttribute("topping", topping);
            session.setAttribute("quantitysum", quantitysum);
            session.setAttribute("sumorder", sumorder);
            response.sendRedirect("navigation/order.jsp");
            
        } catch (Exception e) {
            
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
        processRequest(request, response);
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
        processRequest(request, response);
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
