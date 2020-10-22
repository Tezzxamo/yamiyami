<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
    <title>吖米吖觅</title></head>
<body>
<%--<a href="/customer/login.do">aaa</a>--%>
<%--重定向到WEB-INF/LoginAndRegister/login.jsp--%>
<%
    response.sendRedirect(request.getContextPath()+"first/login");
%>
</body>
</html>
