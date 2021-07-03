<%@include file="db.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update student data</title>
    </head>
    <body>
        <%
            
           
            String studentNo = request.getParameter("studentNo1");
            String studentName = request.getParameter("studentName1");
            String studentDOB = request.getParameter("studentDOB1");
            String studentDOJ = request.getParameter("studentDOJ1");
            
            
            
            
                try{
            PreparedStatement ps = con.prepareStatement("Update student set student_name=?,student_dob=?,student_doj=? where student_no='" + studentNo + "'");
           
             ps.setString(1, studentName);
             ps.setString(2, studentDOB);
             ps.setString(3, studentDOJ);
              
              
              ps.executeUpdate();
              
               %>
        <script>
            alert("Record Updated");
            window.location = "index.html";
        </script>
        <%
                }catch(Exception e)
                {
                    System.out.print(e);
                }

        %>
        <script>
            alert("Record Not Updated");
            window.location = "index.html";
        </script>
        
    </body>
</html>
