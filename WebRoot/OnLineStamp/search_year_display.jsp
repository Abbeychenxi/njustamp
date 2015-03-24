<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="discuss/favicon.ico">
<title>搜索结果页</title>
<link href="OnLineStamp/docs/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/navbar-static-top.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/sticky-footer-navbar.css" rel="stylesheet">
<script src="OnLineStamp/docs/assets/js/ie-emulation-modes-warning.js"></script>
<script src="OnLineStamp/js/jquery-1.11.2.min.js"></script>
<script src="OnLineStamp/docs/dist/js/bootstrap.min.js"></script>
<script src="OnLineStamp/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</head>
<!-- Static navbar -->
<%@include file="nav.jsp" %>
<div class="container">
    <div class="col-lg-12">
    	<div class="row" style="margin-left:-20px;">
        	<div class="col-lg-12" style="margin-top:-70px; ">
            	<ul class="list-inline">
                	<li class="span text-left text-primary"><h2>${label }</h2></li>
                	<c:forEach var="title" items="${titles }">
                    <li class="text text-info" style="margin-left:30px;"><a href="/nihao/SearchServlet?search=year&year=${title }">${title }</a></li>
                     </c:forEach>
                </ul>
            </div>
        </div><!-- /.row -->
        <div class="row" style="margin-left:-20px;">
            <c:forEach var="newStamp" items="${newStamps }" varStatus="status">
               <div class="col-lg-2"  style="width: 150px;height: 170px"   > <a class="thumbnail fancybox" rel="ligthbox" href="album_look.html"> <img class="img-responsive" style="width: 150px;height: 130px;" alt=""src="DisplayYearStamp?id=${status.index }" />
               <div class='text-right'> <small class='text-muted'>${newStamp.name }</small> </div>
              </a> </div>
            </c:forEach> 
        </div> 
    </div><!-- /.col-lg-10 -->
   
  </div>
</body>
</html>
