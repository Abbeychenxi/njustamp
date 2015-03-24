<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE>
<html>
	<head>
	<base href="<%=basePath%>">

	<title>邮票检索</title>

	<%@include file="/temp/share/top.jsp"%>
	</head>

	<body>
		<%@include file="/temp/share/navigate.jsp" %>
		<%@include file="upload_part.jsp" %>
	</body>
</html>
