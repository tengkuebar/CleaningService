/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CS;


import java.sql.*;


   public class dbconnection {

      static Connection con;
      static String url;

      public static Connection getConnection()
      {

         try
         {
            String url = "jdbc:mysql://localhost:3306/cs";
            // assuming "DataSource" is your DataSource name

            Class.forName("com.mysql.jdbc.Driver");

            try
            {
               con = DriverManager.getConnection(url,"root","root");

            // assuming your SQL Server's	username is "username"
            // and password is "password"

            }

            catch (SQLException ex)
            {
               ex.printStackTrace();
            }
         }

         catch(ClassNotFoundException e)
         {
            System.out.println(e);
         }

      return con;
}

    static Connection getConnection(String dbURL, String dbUser, String dbPass) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   }