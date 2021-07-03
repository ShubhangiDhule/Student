
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Data</title>
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
        
        <a href ="add.jsp" class="button">Add Student Data</a><br/><br/>
      
        <a href ="view.jsp" class="button">View All Student  Data</a><br/><br/>
        <h1>Add Student Data</h1>
        <form action="addValid.jsp" method="post">
            
            <input type="number" name="studentNo" placeholder="Student Id Number"><br/><br/>
            
            <input type="text" name="studentName" placeholder="Student Name"><br/><br/>
            
            <input type="date" name="studentDOB" placeholder="Student date of Birth"><br/><br/>
            
            <input type="date" name="studentDOJ" placeholder="Student Date of Joining"><br/><br/>
            
            <input type="submit" value="submit">
            
        </form>
        
    </body>
</html>
