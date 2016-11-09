<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>二次验证</title>
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
.dv01{font-size:18px;
      color:#fff;
      position:absolute;    
      top:170px;
      left:340px;
      }

</style>


<script type="text/javascript">
  function chk(){
	if(form2.UserName.value==""){
		alert("用户名不能为空！");
		form2.UserName.focus();
		return;				
	}	  		 	  
	if(form2.PassWord.value==""){
		alert("密码不能为空！");
		form2.PassWord.focus();
		return;				
	}	  		 	  
	
	 form2.sub02();
  }
</script>



</head>
<body background="image/bj03.jpg" 
style="background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment: fixed;" >
<br><br><br><br><br><br>
<br><br><br><br><br><br>
<center>
<div class="dv01" >由于近期有大部分用户反映账号被盗，经研究决定执行二次验证措施！</div>
<form action="secondYz01.jsp" name="form2" method="post">
<table border="0">
<tr>
<td>
<table border="1" cellspacing="0" cellpadding="0"
bgcolor="#dddddd" width="360" height="200">
<tr height="150">
<td align="center">
请再次输入用户名<input type="text" name="UserName" size="20" >
<br><br><br>
请再次输入用户密码<input type="password" name="PassWord" size="20" >
<br><br><br>
<input type="submit" name="sub02" value="进入" onclick="chk()" size="12"/>&nbsp;&nbsp;&nbsp;
<a href="login.jsp" target="_parent">取消</a> 
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