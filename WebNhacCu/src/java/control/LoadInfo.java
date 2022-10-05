/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Customer;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet(name = "LoadInfo", urlPatterns = {"/LoadInfo"})
public class LoadInfo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DAO dao = new DAO();
        String phone = request.getParameter("phone");
        HttpSession session = request.getSession();

        
        Cookie arr[] = request.getCookies();
        List<Product> listP = new ArrayList<Product>();
        for (Cookie c : arr) {
            if (c.getName().equals("cart")) {
                String txt[] = c.getValue().split(",");
                for (String s : txt) {
                    String[] a = s.split(":");
                    Product p = dao.getProductsByID(a[0]);
                    p.setQuantity(Integer.valueOf(a[1]));
                    listP.add(p);
                }
            }
        }
        float total = 0;
        for (Product p : listP) {
            total += p.getQuantity() * p.getPrice();
        }
        
        Customer cus = dao.getCustomerByPhone(phone);
        
        String type = cus.getCus_type();
        float discount = 0;
        
        switch(type){
                case "BRONE": discount = total - total / 100;
                case "SILVER": discount = total - total * 2 / 100;
                case "GOLD": discount = total - total * 4 / 100;
                case "DIAMOND": discount = total - total * 7 / 100;
                case "PLATINUM": discount = total - total * 11 / 100;
                case "VIP": discount = total - total * 15 / 100;
                case "SVIP": discount = total - total * 20 / 100;
            }
        
        request.setAttribute("Phone", phone);
        request.setAttribute("Discount1", discount);
        request.setAttribute("Total", total);
        request.setAttribute("listP", listP);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
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
