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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Avancer
 */
@WebServlet(name = "dregister", urlPatterns = {"/dregister"})
public class dregister extends HttpServlet {

   
    
       Connection con;
    PreparedStatement ps;
    PrintWriter out;
    
    String username,password,email; 
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
               
        //cid=request.getAttribute("id").toString();
        username = request.getParameter("user");
        password = request.getParameter("password");
        email = request.getParameter("email");
        
               try {
            
           con = CS.dbconnection.getConnection();
            
            out.print("1111111111");
            String st = "insert into user(username,email,password)values('"+username+"','"+email+"','"+password+"')";
            out.print("22222222");
            ps = con.prepareStatement(st);
            out.print("3333333");
            ps.executeUpdate();
           out.print("44444");
            out.println("<script type=\"text/javascript\">");
   out.println("alert('Registered Successfully');");
   out.println("location='index.jsp';");
   out.println("</script>");
    			
          
        }catch(Exception e){
            out.println(e.getMessage());
            
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
