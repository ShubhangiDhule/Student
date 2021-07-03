
<%@page import="java.sql.*"%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Statement st = null;
            Connection con = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useUnicode=yes&characterEncoding=UTF-8", "root", "root");
                st=con.createStatement();
            }catch(Exception e)
                    {
                        e.printStackTrace();
                        System.err.println(e);
                    }
            %>
    </body>
</html>
