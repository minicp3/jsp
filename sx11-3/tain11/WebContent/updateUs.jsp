<%@ page language="java" contentType="text/html; charset=gb2312" 
    import="java.sql.*,java.io.*" %>
<%@page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>��Ϣ�޸�</title>
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
 
 String sql="update [user] set UserName=?,PassWord=?,Name=?,age=?,major=?,ID=?,sex=?,email=?";
 PreparedStatement st=conn.prepareStatement(sql);
 
 String UserName=request.getParameter("UserName");
 String PassWord=request.getParameter("PassWord");  
 String Name=request.getParameter("Name");
 String age=request.getParameter("age");
 String major=request.getParameter("major");
 String ID=request.getParameter("ID");
 String sex=request.getParameter("sex");
 String email=request.getParameter("email");
 
 
 st.setString(1,UserName);
 st.setString(2,PassWord);
 st.setString(3,Name);
 st.setInt(4,Integer.parseInt(age));
 st.setString(5,major);
 st.setString(6,ID);
 st.setString(7,sex);
 st.setString(8,email);
 
 st.executeUpdate();
 
 st.close();
 conn.close();
 
 %>  

�޸ĳɹ���

</body>
</html>