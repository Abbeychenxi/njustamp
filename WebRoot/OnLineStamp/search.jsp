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
<script type="text/javascript">
    function getResult()
    {
       window.location="/nihao/SearchServlet?search=search";
    }
    $(function(){
        $("#btn_upload").click(function(){
            location.href='search_result.html';
        });
    });
</script>
</head>

<body>
<%@include file="nav.jsp" %>
<div class="container">
	<div class="span text-center">
    	<h1>邮票搜索</h1>
    </div>
  <div style="padding:inherit;">
    <form class="bs-example bs-example-form" role="form">
      <div class="row ">
        <div class="col-lg-3 "> </div>
        <div class="col-lg-6 ">
          <div class="input-group input-group-lg">
            <input type="text" class="form-control" placeholder="粘贴图片网址...">
            <span class="input-group-btn">
            <button class="btn btn-info" type="button" id="btn_upload" onclick="getResult()"> 本地上传 </button>
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