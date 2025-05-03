<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@ page import ="java.sql.*" %>
 
<% 

  String url = "jdbc:mysql://localhost:3306/prevention";
        String user = "root";
        String password = "";
        int id=Integer.parseInt(request.getQueryString());
            Connection conn = DriverManager.getConnection(url, user, password);
            // String id=request.getParameter("id");
            
            String sql = "Select *  from upload where id='" + id + "'";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                
                Blob blob = result.getBlob("file");
                String fname = result.getString("sub");
          
                 String filePath = "C:/Users/BAIDEHI KASHYAP/Desktop/ '"+ fname +"'.txt";
                InputStream inputStream = blob.getBinaryStream();
                OutputStream outputStream = new FileOutputStream(filePath);
 
                int bytesRead = -1;
                byte[] buf = new byte[1024];
                while ((bytesRead = inputStream.read(buf)) != -1) {
                    outputStream.write(buf, 0, bytesRead);
                }
 
                inputStream.close();
                outputStream.close();
               out.println("<script>alert('File Saved Successfully')");
            }response.sendRedirect("fdown.jsp");
      
%>
