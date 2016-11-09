<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*,java.io.*"%>
<%@page import="java.sql.DriverManager" %>
<%
   request.setCharacterEncoding("utf-8");
   response.setCharacterEncoding("utf-8");
   response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人信息</title>
<style type="text/css"> 
        a {text-decoration:none;} 
        a:hover {text-decoration:underline; } 
        a:visited{color:blue;}
       .dv01{position:absolute;
            top:470px;
            left:390px;
            color:#fff;}

</style>
</head>
<body background="image/upbj.jpg" 
      style="background-repeat:no-repeat ;
      background-size:100% 100%; 
      background-attachment: fixed;" > 
 
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String connectSQL="jdbc:sqlserver://localhost:1433;DatabaseName=software";
Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","seasonflower"); 
Statement stmt=conn.createStatement();

String UserName=request.getParameter("UserName");

String sql="select * from [user] where UserName = '"+UserName+"'";
PreparedStatement st=conn.prepareStatement(sql);
ResultSet rs=stmt.executeQuery("select * from [user]");


String PassWord="";
String Name="";
int age=0;
String major="";
String ID="";
String sex="";
String email="";

while(rs.next()){	 
		    UserName=rs.getString("UserName");	 
		    PassWord=rs.getString("PassWord");
		    Name=rs.getString("Name");
		    age=rs.getInt("age");
		    major=rs.getString("major");
		    ID=rs.getString("ID");		    
		    sex=rs.getString("sex");
		    email=rs.getString("email");
				 	 
	 }

%>


<form action="updateUs.jsp" method="post">
  <p>用户姓名<input type="text"  name="UserName"  value='<%=UserName%>'></p> 
  <p>密&nbsp;&nbsp;码<input type="text"  name="PassWord"  value='<%=PassWord%>'></p>
  <p>真实姓名<input type="text"  name="Name"  value='<%=Name %>'></p>
  <p>年&nbsp;&nbsp;龄<input type="text"  name="age"  value='<%=age %>'></p>
  <p>职&nbsp;&nbsp;业<input type="text"  name="major"  value='<%=major %>'></p>
  <p>身份证号<input type="text"  name="ID"  value= '<%=ID %>'></p>
  <p>性&nbsp;&nbsp;别<input type="text"  name="sex"  value='<%=sex %>'></p>
  <p>电子邮箱<input type="text"  name="email"  value='<%=email %>'></p>
<button type="submit">提交</button>&nbsp;&nbsp;
<a href="bottom.jsp" >返回</a> 
  </form> 
 <div class="dv01">
                  抵制不良游戏 &nbsp;拒绝盗版游戏&nbsp; 注意自我保护 &nbsp;谨防上当受骗<br>
                  适度游戏益脑 &nbsp;过度游戏伤身&nbsp; 合理安排时间&nbsp; 享受健康生活
   </div>
 </body>
</html>