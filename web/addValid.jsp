
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
           
            String studentNo = request.getParameter("studentNo");
            String studentName = request.getParameter("studentName");
            String studentDOB = request.getParameter("studentDOB");
            String studentDOJ = request.getParameter("studentDOJ");
            
            
            
            
                try{
            PreparedStatement ps = con.prepareStatement("insert into student(student_no,student_name,student_dob,student_doj) values(?,?,?,?)");
            ps.setString(1, studentNo);
             ps.setString(2, studentName);
             ps.setString(3, studentDOB);
             ps.setString(4, studentDOJ);
              
              
              ps.executeUpdate();
              
               %>
        <script>
            alert("Record inserted");
            window.location = "index.html";
        </script>
        <%
                }catch(Exception e)
                {
                    System.out.print(e);
                }

        %>
        <script>
            alert("Record Not inserted");
            window.location = "index.html";
        </script>
        <%
              
              
              
     
%>
          
    </body>
</html>
