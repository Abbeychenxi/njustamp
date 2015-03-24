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
<title>邮票搜索</title>
<link href="OnLineStamp/docs/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/navbar-static-top.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/sticky-footer-navbar.css" rel="stylesheet">
<script src="OnLineStamp/docs/assets/js/ie-emulation-modes-warning.js"></script>
<script src="OnLineStamp/js/jquery-1.11.2.min.js"></script>
<script src="OnLineStamp/docs/dist/js/bootstrap.min.js"></script>
<script src="OnLineStamp/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
<!-- image URL  -->
<script>
$(document).ready(  
        function() {  
            $("#image_url").keydown(function(event) {  
                if (event.keyCode == 13) {  
                	window.location.href="/nihao/RetrieveServlet?label=image_url&limit=10&url="+$("input[id='image_url']").val(); 
                }  
            }); 
        //}
        }); 
</script>
<style>
.input {
    display: block;
    visibility: hidden;
    width: 0;
    height: 0;
}
</style>
</head>

<body>
<%@include file="nav.jsp" %>
<div class="container">
	<div class="span text-center">
    	<h1>邮票搜索</h1>
    </div>
  <div style="padding:inherit;">
    <form class="bs-example bs-example-form" id="form" action="" method="POST" enctype="multipart/form-data" onsubmit="return false;">
      <div class="row">
        <div class="col-lg-3 "> </div>
        <div class="col-lg-6 ">
          <div class="input-group input-group-lg">
           <input id="image_url" type="text" class="form-control" placeholder="粘贴图片网址..." value='http://pic.anhuinews.com/0/02/10/10/2101000_975315.jpg'>
            <span class="input-group-btn">
            	<input type="file" id="file_input" name="file" class="input" onchange="form.action='/nihao/RetrieveServlet?label=local_upload';form.submit();">
            	<input class="btn btn-info" type="button" id="upload_btn" name="upload_btn" onclick="file_input.click()" value="本地上传">  
            </span> </div>
          <!-- /input-group --> 
        </div>
        <!-- /.col-lg-6 -->
        <div class="col-lg-3 "></div>
      </div>
      <!-- /.row -->
    </form>
  </div>
</div>
</body>
</html>