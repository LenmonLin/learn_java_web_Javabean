<%@page import="com.po.Users"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dologin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <h1>Javabean的四个作用域</h1>
    <hr>
      <jsp:useBean  id="myUsers"  class="com.po.Users"   scope="session"/>
     使用getProperty获取用户名和密码<br>
     用户名：<jsp:getProperty property="username" name="myUsers"/><br>
     密码：<jsp:getProperty property="password" name="myUsers"/><br>
     <hr>
     使用内置对象获取：<br>
<%--      用户名：<%=((Users)application.getAttribute("myUsers")).getUsername() %><br>
     密码：<%=((Users)application.getAttribute("myUsers")).getPassword() %><br> --%>
     用户名：<%=((Users)session.getAttribute("myUsers")).getUsername() %><br>
     密码：<%=((Users)session.getAttribute("myUsers")).getPassword() %><br> 
  </body>
</html>
