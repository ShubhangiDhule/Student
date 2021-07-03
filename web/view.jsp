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

.button1 {
  background-color: greenyellow;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  
  cursor: pointer;
}
.button2 {
  background-color: red;
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
        <a href ="add.jsp" class="button">Add Student Data</a><br/><br/>
        <a href ="view.jsp" class="button">View All Student Data</a><br/><br/>
        <h1>View All Student Data</h1>
        
        <table id="example" class="table-borders shadow-huge round-medium " >
                <thead>
                
                <tr  width="20">
                    
                    <th class="bg-18 " >Student Id</th>
                    <th class="bg-18 " >Student name</th>
                    <th class="bg-18 " >Student DOB</th>
                     <th class="bg-18 " >Student DOJ</th>
                     <th class="bg-18 " >Update</th>
                     <th class="bg-18 " >Delete</th>

                </tr>
            </thead>
            <tbody>

                <%  
                    ResultSet rs2 = null;
                    PreparedStatement pstn1 = con.prepareStatement("select * from student");
                    rs2 = pstn1.executeQuery();
                    while (rs2.next()) {
                        String id=rs2.getString(2);
                        System.out.println("Id "+id);
                %>
                <tr>
                    
                    <td style="text-align: center"><%=rs2.getString(2)%></td>
                    <td style="text-align: center"><%=rs2.getString(3)%></td>
                    <td style="text-align: center"><%=rs2.getString(4)%></td>
                    <td style="text-align: center"><%=rs2.getString(5)%></td>
                     <td> <a href="update.jsp?id=<%=rs2.getString(2)%>"class="button1">Update</a> </td>
                    <td> <a href="delete.jsp?id=<%=rs2.getString(2)%>"class=" button2"> Delete</a> </td>
                </tr>
                <%

                    }
                    
                %>




            </tbody>
            </table>

    </body>
</html>
