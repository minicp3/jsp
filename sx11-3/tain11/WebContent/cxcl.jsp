<%@ page language="java" contentType="text/html; charset=gb2312" 
    import="java.sql.*,java.io.*" %>
<%@ page %>

<head>
<style type="text/css"> 
        a {text-decoration:none;
            font-size:20px;
            position:absolute;
            top:150px;
            left:590px;
            color:#fff;
            display:block;
            background:url('image/cx.jpg');
            width:59px;
            
            } 
        a:hover {color:yellow;} 
       .tab1{position:absolute;
             left:200px;}
      .dv01{position:absolute;
            top:470px;
            left:390px;
            color:#fff;}


</style>
</head>
<html>
<body background="image/bj03.jpg" 
style="background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment: fixed;" >

<h1>��ѯ�������:</h1>

<%
 
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
 String url="jdbc:sqlserver://localhost:1433;DatabaseName=software";

 Connection conn=java.sql.DriverManager.getConnection(url,"sa","seasonflower");
 Statement stmt=conn.createStatement();
 ResultSet rs=stmt.executeQuery("select * from client");


String gname=request.getParameter("gname");
String sql="select * from client where gname ='"+gname+"'";
PreparedStatement st=conn.prepareStatement(sql);

int lv=0;
String wp01="";
String wp02="";
String wp03="";
String wp04="";
String wp05="";
String pet="";
int win=0;
int los=0;
String rank="";

rs = st.executeQuery();


while(rs.next()){
		 			 
		    gname=rs.getString("gname");	 
		     lv=rs.getInt("lv");
		     wp01=rs.getString("wp01");
		     wp02=rs.getString("wp02");
		     wp03=rs.getString("wp03");
		      wp04=rs.getString("wp04");
		      wp05=rs.getString("wp05");
		    pet=rs.getString("pet");
		     win=rs.getInt("win");
		     los=rs.getInt("los");
		    rank=rs.getString("rank");
		 				 	 
	 }

%>

<table class="tab1" border="1" style="text-align:center;">
<tr>
<td>�û���</td>
<td>�ȼ�</td>
<td>������</td>
<td>������</td>
<td>װ��1</td>
<td>װ��2</td>
<td>װ��3</td>
<td>����</td>
<td>ʤ��</td>
<td>ʧ��</td>
<td>��λ</td>
</tr>

<tr>
<td><%=gname %></td>
<td><%=lv %></td>
<td><%=wp01 %></td>
<td><%=wp02 %></td>
<td><%=wp03 %></td>
<td><%=wp04 %></td>
<td><%=wp05 %></td>
<td><%=pet %></td>
<td><%=win %></td>
<td><%=los %></td>
<td><%=rank %></td>

</tr>

</table>
 <div style="text-align:center;"><a href="cjcx.jsp">����</a></div>
  <div class="dv01">
                  ���Ʋ�����Ϸ &nbsp;�ܾ�������Ϸ&nbsp; ע�����ұ��� &nbsp;�����ϵ���ƭ<br>
                  �ʶ���Ϸ���� &nbsp;������Ϸ����&nbsp; ������ʱ��&nbsp; ���ܽ�������
   </div>
</body>
</html>