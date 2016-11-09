<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录界面</title>
<link rel="shortout icon" href="image/tang.ico"/>
<meta http-equiv="content-type" content="text/html;charset=utf-8">

<style type="text/css">
<!--
a:link {
 text-decoration: none;
}
a:visited {
 text-decoration: none;
}
a:hover {
 color:yellow;
}
a:active {
 text-decoration: none;
}
-->
</style>


<script type="text/javascript">
  function chk(){
	if(form1.UserName.value==""){
		alert("用户名不能为空！");
		form1.UserName.focus();
		return;				
	}	  		 	  
	if(form1.PassWord.value==""){
		alert("密码不能为空！");
		form1.PassWord.focus();
		return;				
	}	  		 	  
	
	form1.sub01();
  }
</script>



</head>
<body background="image/login.jpg" 
style="background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment: fixed;" >
<br><br><br><br><br><br>
<br><br><br><br><br><br>
<center>
<form action="userYz.jsp" name="form1" method="post">
<table border="0" >
<tr>
<td>
<table border="1" cellspacing="0" cellpadding="0"
background="image/lobj.jpg" width="360" height="200">
<tr height="150">
<td align="center">
输入用户姓名<input type="text" name="UserName" size="20" >
<br><br><br>
输入用户密码<input type="password" name="PassWord" size="20" >
<br><br><br>
<input type="submit" name="sub01" value="登录" onclick="chk()" size="12"/>&nbsp;&nbsp;&nbsp;
<a href="reg.jsp">注册</a> 
</td>
</tr>
<tr height="30">
<td bgcolor="#95bdff">&nbsp;&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table>
</form>
</center>
</body>
</html>