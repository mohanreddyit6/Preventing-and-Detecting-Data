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
String  msg=(String)session.getAttribute("Key");
    System.out.println("message"+msg);
    String  email=(String)session.getAttribute("Email");
//    String  dec=(String)session.getAttribute("email");
     System.out.println("Email id"+email);
    int i = st.executeUpdate("update reg set skeys = '" + msg + "' where mail = '" + email + "'");
    if (i != 0) {
        response.sendRedirect("udetail.jsp?msg=Message Sent Successfully");
    } else {
        response.sendRedirect("User_request.jsp?msg=Error");
    }
%>