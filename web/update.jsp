
<%@include file="db.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%    String id = request.getParameter("id");
      System.out.println(" update"+id);
       
    try {

        String sql = "select * from student where student_no=" + id;
        ResultSet resultSet = st.executeQuery(sql);
        while (resultSet.next()) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student Data</title>
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
        
        <a href ="add.jsp" class="button">Add Student Data</a> <br/><br/>
        <a href ="view.jsp" class="button">View All Student Data</a><br/><br/>
       
        <h1>Update Student data</h1>
        
       <form action="updateValid.jsp" method="post">
            
           <input type="hidden" name="studentNo1" placeholder="Student Id Number" value="<%=resultSet.getInt (2)%>"><br/><br/>
            
           <input type="text" name="studentName1" placeholder="Student Name" value="<%=resultSet.getString(3)%>"><br/><br/>
            
           <input type="date" name="studentDOB1" placeholder="Student date of Birth" value="<%=resultSet.getDate(4)%>"><br/><br/>
            
           <input type="date" name="studentDOJ1" placeholder="Student Date of Joining" value="<%=resultSet.getDate(5)%>"><br/><br/>
            
            <input type="submit" value="Update">
            
        </form>
    </body>
</html>
 <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
                con.close();
            %>
