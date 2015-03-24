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
<title>邮册详细信息</title>
<link href="OnLineStamp/docs/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/navbar-static-top.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/sticky-footer-navbar.css" rel="stylesheet">
<script src="OnLineStamp/docs/assets/js/ie-emulation-modes-warning.js"></script>
<script src="OnLineStamp/js/jquery-1.11.2.min.js"></script>
<script src="OnLineStamp/docs/dist/js/bootstrap.min.js"></script>
<script src="OnLineStamp/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</head>
<body>
  <%@include file="nav.jsp" %>
	<div class="container" style="background-color:#666; opacity:0.9;  margin-bottom:0px;">
    	<div class="row" style="height: 500px;">
        	<div class="col-lg-9">
            	<div class="row">
            		<div class="col-lg-3"></div>
            		<div class="col-lg-8">
                		<a href="http://dotstrap.com/"> <img src="http://placehold.it/400x400" class="thumbnail"
                                alt="Image" /></a>
                                
                	</div>
                	<div class="col-lg-1"></div>
                </div> <!-- /.row -->
                <div class="row">
                   <c:forEach var="album" items="${albums }" begin="0" end="5">
                	<div class="col-lg-2">
                    	<a class="thumbnail fancybox" rel="ligthbox"
							href="http://placehold.it/100x100.png"> <img
							class="img-responsive" alt="" src=${album.path } />
                        </a>
                    </div>
                    </c:forEach>
                     
                </div>
            </div><!-- /.col-lg-8 -->
            
            <div class="col-lg-3">
            	<div class="panel panel-default" style=" margin-top:-60px; margin-right:-112px; margin-bottom:0px; min-height:667px;">
   					<div class="panel-body">
      					<h5 class="span text-info">邮票信息！</h5>
   					</div>
				</div>
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
    </div>
</body>
</html>
