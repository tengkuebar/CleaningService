/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package CS;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author akilesh.n
 */
@WebServlet(name = "Bookslot", urlPatterns = {"/Bookslot"})
public class Bookslot extends HttpServlet {

    Connection con;
    PreparedStatement ps;
    PrintWriter out;
    
String username, email, date, slot, team, bedroom, bathroom, living,dining,total="";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
      //  out.print("top");
       team = request.getParameter("team");
       username = request.getParameter("username");
       email = request.getParameter("email");
       date = request.getParameter("date");
       slot= request.getParameter("slot");
       bedroom = request.getParameter("bedroom");
        bathroom = request.getParameter("bathroom");
        living = request.getParameter("living");
        dining = request.getParameter("dining");
        total=  request.getParameter("total");
        // out.print("bottom");
     try {
            
           con = CS.dbconnection.getConnection();
            
         //   out.print("1111111111");
            String st = "insert into billing(customer,email,slot,dateb,team,bedroom,bathroom,living,dining,total)values('"+username+"','"+email+"','"+slot+"','"+date+"','"+team+"','"+bedroom+"','"+bathroom+"','"+living+"','"+dining+"','"+total+"')";
            ps = con.prepareStatement(st);
          // out.print("3333333"+st);
           ps.executeUpdate();
         //  out.print("44444");
            out.println("<script type=\"text/javascript\">");
   out.println("alert('Booked Successfully');");
   out.println("location='userhome.jsp';");
   out.println("</script>");
    			
          
        }catch(Exception e){
            out.println(e.getMessage());
            
        }   
        
        
        } finally {
            out.close();
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
