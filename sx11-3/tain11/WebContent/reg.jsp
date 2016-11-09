<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册页面</title>
  <link rel="shortout icon" href="image/tang.ico"/>
  <style type="text/css"> 
        a {text-decoration:none;
            font-size:20px;
            color:#fff;
            display:block;
            background:url('image/cx.jpg');
            width:59px;
           } 
        a:visited{color:white;}
        a:hover {color:yellow;} 
        .tb{color:#fff;}
        .bx{color:red;}


</style>


</head>
<body background="image/bj06.jpg" 
style="background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment: fixed;" >

<form action="regYz.jsp" method="post">
<br><br><br><br><br>
<table  border="1" width="310" align="center">
<tr>
<td colspan="2">
<h3 align="center" class="tb">请注册...</h3>
</td>
<tr>
<tr>
<td align="center" class="bx">*用户名称: </td>
<td><input type="text" name="UserName" size="20"/></td>
</tr>
<tr>
<td align="right" class="bx">*密&nbsp;&nbsp;码：</td>
<td>
<input type="password" name="PassWord" size="22"/>
</td>
</tr>
<tr>
<td align="right" class="bx">*真实姓名：</td>
<td>
<input type="text" name="Name" size="10"/></td>
</tr>
<tr>
<td align="right" class="tb">年龄：</td>
<td><input type="text" name="age" size="15"/></td>
</tr>
<tr>
<td align="right" class="tb">从事职业：</td>
<td><input type="text" name="major" size="15"/></td>
</tr>
<tr>
<td align="right" class="bx">*身份证号：</td>
<td><input type="text" name="ID" size="18"/></td>
</tr>
<tr>
<td align="right" class="tb">性别：</td>
<td>
<input type="text" name="sex" size="15"/>
</td>
</tr>
<tr>
<td align="right" class="bx">*电子邮箱：</td>
<td><input type="text" name="email"/></td>
</tr>
<tr>
  <td align="right"><input type="submit" value="提交"/></td>
  <td style="text-align:center;"><a href="login.jsp" >返回</a></td>
</tr>
</table>
</form>
</body>
</html>