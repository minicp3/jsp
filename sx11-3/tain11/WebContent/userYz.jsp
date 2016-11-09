<%@ page language="java" contentType="text/html; charset=gb2312" 
    import="java.sql.*,java.io.*" %>
<%@page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆验证处理</title>
</head>
<body>



<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
%>

 
   <%
   
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    String connectSQL="jdbc:sqlserver://localhost:1433;DatabaseName=software";
    Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","seasonflower"); 
    
    String UserName = request.getParameter("UserName");
    String PassWord = request.getParameter("PassWord");
    String sql = " select * from [user] where UserName = '" + UserName+ "' and PassWord = '" + PassWord + "'";  
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);

  
    if ( rs.next() )
    {
    response.sendRedirect("main.jsp");
   
    } 
    else   
    {
    	response.sendRedirect("login.jsp");
    }

    rs.close();
    stmt.close();
    conn.close();
   %>

<%
   String username=""; 
   session.setAttribute("UserName",UserName);
%>
   
  </body>
 </html>
 
 
 
 
 
 
 