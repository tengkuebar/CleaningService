<%-- 
    Document   : logincheck
    Created on : Aug 24, 2015, 4:50:51 PM
    Author     : Akilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@include file="dbconnection.jsp"%> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"   />
<title>Untitled Document</title>
</head>

<body>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
//Blob image=null;
 

%>
<%
try{
if(!(email.equals(""))&&!(password.equals(""))){

 PreparedStatement pst=con.prepareStatement("select userid,email from user where email=? and password=? ");
            pst.setString(1, email);
            pst.setString(2, password);
       out.println("result:"+email);
              // pst.setString(3, usertype);
            ResultSet rs=pst.executeQuery();
                if((rs.next())){

      
       
            String s=rs.getString("email");
            session.setAttribute("email", s);
            session.setAttribute("cid",rs.getString("userid"));
                                        System.out.println("result:"+st);                 
                 response.sendRedirect("userhome.jsp?file=yes");
                 return;
                   } else{
%>
          <script language="javascript" type="text/javascript">
alert('Login Failed...User Not Available');

window.location = "index.jsp";
</script>
        
        
        
        <%           }}
        %>
    
    <script language="javascript" type="text/javascript">
alert('Login Failed...');

window.location = "index.jsp";
</script>
    <%
   // response.sendRedirect("index.jsp");

}
catch(Exception e){
           out.println("else"+e);
}






%>
</body>
</html>