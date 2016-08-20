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
      <jsp:useBean  id="loginUser"  class="com.po.Users"   scope="page"/>
      <jsp:useBean id="userDAO"  class="com.dao.UsersDAO"  scope="page" />
       <jsp:setProperty property="*" name="loginUser"/>
       <%
              //如果用户名和密码都等于admin,则登录成功
              if(userDAO.usersLogin(loginUser))
              {
                session.setAttribute("loginUser", loginUser.getUsername());
                request.getRequestDispatcher("login_success.jsp").forward(request, response);
              }
              else{
                response.sendRedirect("login_failure.jsp");
              }
        %>
       
       
       
</html>
