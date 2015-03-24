<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <c:forEach var="good" items="${goods }">
     <p>商品id=${good.id }</p>
     <p>商品名=${good.name }</p>
     <p>商品描述=${good.descrip }
     <c:if test="${good.pics==null||good.pics.size()==0  }">
         <br>
         <h1>Hello World</h1>
      </c:if>
     <c:forEach var="pic" items="${good.pics }">
     <br>
      <img width="50px" height="50px" src="${pic.stamp_pic_url }" />名称为:${pic.stamp_pic_name }
     </c:forEach>
    </c:forEach>
  </body>
</html>
