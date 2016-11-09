<%@ page language="java" contentType="text/html; charset=gb2312" 
    import="java.sql.*,java.io.*" %>
<%@ page %>

<head>
<style type="text/css"> 
        
        a {text-decoration:none;
            font-size:20px;} 
        a:visited{color:blue;}
        a:hover {color:yellow;} 
       
       h1{color:#fff;}
       table.bgN1{border:1px solid;}
             
       table.bgN1 th{background:url('image/cx.jpg');
	                 border-width: 1px;
	                 padding: 8px;
	                 border-style: solid;	     	      
	                 color: #fff;}
        table.bgN1 td{background:url('image/td.jpg');
                      text-align:center;}

         .dv0{font-size:18px;                          
              position:absolute;    
              left:390px;                  
             }
         .dv1{border:1px solid;
              width:390px;                         
              background-color:#D0D0D0;
              position:absolute;                          
              top:190px;
              left:420px;
              }        
         .dv2{position:absolute;
              top:380px;
              left:590px;
              }






</style>
</head>
<html>
<body background="image/bj05.jpg" 
 style="background-repeat:no-repeat ;
 background-size:100% 100%; 
 background-attachment: fixed;" >

<h1>查询结果如下:</h1>

<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
%>

<%
 
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
 String url="jdbc:sqlserver://localhost:1433;DatabaseName=software";

 Connection conn=java.sql.DriverManager.getConnection(url,"sa","seasonflower");
 Statement stmt=conn.createStatement();
 ResultSet rs=stmt.executeQuery("select * from report");


String name=request.getParameter("name");
String sql="select * from report where name ='"+name+"'";
PreparedStatement st=conn.prepareStatement(sql);

String fhyy="";
String date="";
String date1="";
String state="";


rs = st.executeQuery();


while(rs.next()){
		 		   		 
		     name=rs.getString("name");	 		     
		     fhyy=rs.getString("fhyy");
		     date=rs.getString("date");
		     date1=rs.getString("date1");
		     state=rs.getString("state");
		 	 
	 }
	
%>

<table class="bgN1" align="center">
<tr>
 <th>用户名称</th>
 <th>封号原因</th>
 <th>封号时间</th>
 <th>解封时间</th>
 <th>玩家状态</th>
</tr>

<tr>
 <td><%=name %></td>
 <td><%=fhyy %></td>
 <td><%=date %></td>
 <td><%=date1 %></td>
 <td><%=state %></td>
</tr>

</table>
 
 <h1 class="dv0">哪些行为可能会被封号？</h1>
 <div class="dv1">
  1、故意退出、逃跑；<br>
  2、恶意挂机、不参与游戏；<br>
  3、消极比赛，而遭到举报；<br>
  4、使用外挂等影响游戏平衡的软件；<br>
  5、在游戏中发布虚假信息；发表涉及政治、法令等信息；<br>
  6、冒充官方人员进行诈骗。<br>
  希望这样一个小小的惩罚能够帮助改善一下不良的游戏习惯。 
 </div>
 <br>
 <div class="dv2" style="text-align:center;"><a href="zhcx.jsp">返回</a></div>

</body>
</html>