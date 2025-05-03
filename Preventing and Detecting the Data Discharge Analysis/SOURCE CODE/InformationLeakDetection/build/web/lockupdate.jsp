<%-- 
    Document   : update
    Created on : Mar 10, 2016, 11:01:22 AM
    Author     : java4
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
    String j = request.getQueryString();
                Connection con = DbConnection.getConnection();
                Statement st =con.createStatement();
                String file = request.getParameter("file");
String  msg="No";
    System.out.println("message"+msg);
//    String  file=(String)session.getAttribute("sub");
//    String  dec=(String)session.getAttribute("email");
     System.out.println("File name"+file);
    int i = st.executeUpdate("update upload set showfile = '" + msg + "' where sub = '" + file + "'");
    if (i != 0) {
        response.sendRedirect("uviewfile.jsp?msg= file locked Successfully");
    } else {
        response.sendRedirect("User_request.jsp?msg=Error");
    }
%>
