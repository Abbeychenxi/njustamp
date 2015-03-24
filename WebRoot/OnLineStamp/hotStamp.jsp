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
<title>热门邮票</title>
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
                	<li class="span text-left text-primary"><h2>热门邮票</h2></li>
                    <li class="text text-info" style="margin-left:30px;"><a href="/nihao/GuessYouLikeServlet">测你喜欢</a></li>
                    <li class="text text-info" style="margin-left:20px;"><a href="/nihao/NewStampServlet">最新邮票</a></li>
                    <li class="text text-info" style="margin-left:20px;"><a href="/nihao/NewStampServlet">最新发表</a></li>
                </ul>
            </div>
        </div><!-- /.row -->
        <div class="row" style="margin-left:-20px;">
            <c:forEach var="hotStamp" items="${hotStamps }" varStatus="status">
               <div class="col-lg-2" style="width: 180px;height: 200px"> <a class="thumbnail fancybox"  rel="ligthbox" href="album_look.html"> <img class="img-responsive" style="width: 180px;height: 180px;" alt="" src="DisplayHomeServelt?id=${status.index }&label=hotMore" />
               <div class='text-right'> <small class='text-muted'>${hotStamp.name }</small> </div>
              </a> </div>
            </c:forEach> 
        </div> 
    </div><!-- /.col-lg-10 -->
   
</div>
</body>
</html>
