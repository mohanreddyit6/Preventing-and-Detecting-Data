<%@page import="network.mail"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="network.mail"%>
<%@page import="java.util.Random"%>
<%@ page import ="java.sql.*" %>
<%
{
   String url = "jdbc:mysql://localhost:3306/prevention";
        String user = "root";
        String password = "";
        int id=Integer.parseInt(request.getQueryString());
        System.out.println("id get successfully"+id);
            Connection conn = DriverManager.getConnection(url, user, password);
           
            
            String sql = "Select *  from reg where id = '" + id + "' ";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            if(result.next()) {
                  Random RANDOM = new SecureRandom();
                     int PASSWORD_LENGTH = 10;
                     String letters = "abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ123456789+@$%!*%#+-?/";
                     String key = "";
                    
                     for (int i=0; i<PASSWORD_LENGTH; i++)
                 {
                int index = (int)(RANDOM.nextDouble()*letters.length());
                key += letters.substring(index, index+1);
                 }
             String name =result.getString("name");
            String email =result.getString("mail");
            session.setAttribute( "Email", email );  
             String msg ="Key : "+key ;
             session.setAttribute( "Key", key );  
                      System.out.println("uour randome string"+msg);
            mail m = new mail();
            m.secretMail(msg, name, email);
           
           response.sendRedirect("update.jsp");
     }else{
           response.sendRedirect("a_s_details.jsp");
     }
     }
%>

