<%@include file="db.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
               <style>
.button {
  background-color: gray;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  
  cursor: pointer;
}
</style>
    </head>
    <body>
        <a href ="add.jsp">Add Student Data</a> <br/><br/>
        
        <a href ="view.jsp">View All Student Data</a><br/><br/>
        <h1>DElete Student Data</h1>
        
        
        <%    
    String sr_no = request.getParameter("id");
    System.out.println(sr_no);
    try
    {
        int i = st.executeUpdate("DELETE FROM student WHERE student_no=" + sr_no);
        response.sendRedirect("view.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    con.close();

        %>
    </body>
</html>
