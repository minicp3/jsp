<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
<!--
a:link {
 text-decoration: none;
}
a:visited {
 text-decoration: none;
 color:green;
}
a:hover {
 color:yellow;
}
a:active {
 text-decoration: none;
}
-->
</style>

<title>首</title>
</head>

<body>

<div style=" font:bold 14px 宋体;color:#7AEEC6">
<% 

String user=(String)session.getAttribute("UserName");
out.println(user+"用户，欢迎您！！");
 
%>
</div>
<br><br>
<a href="login.jsp" target="_parent">退出</a> 

</body>
</html>