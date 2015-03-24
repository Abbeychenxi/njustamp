<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
<style>
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme Licensed under MIT ***/ 
/* Tabs panel */
.tabbable-panel {
 border:1px solid #eee;
 padding: 10px;
}
/* Default mode */
.tabbable-line > .nav-tabs {
	border: none;
	margin: 0px;
}
.tabbable-line > .nav-tabs > li {
	margin-right: 2px;
}
.tabbable-line > .nav-tabs > li > a {
	border: 0;
	margin-right: 0;
	color: #737373;
}
.tabbable-line > .nav-tabs > li > a > i {
	color: #a6a6a6;
}
.tabbable-line > .nav-tabs > li.open, .tabbable-line > .nav-tabs > li:hover {
	border-bottom: 4px solid #fbcdcf;
}
.tabbable-line > .nav-tabs > li.open > a, .tabbable-line > .nav-tabs > li:hover > a {
	border: 0;
	background: none !important;
	color: #333333;
}
.tabbable-line > .nav-tabs > li.open > a > i, .tabbable-line > .nav-tabs > li:hover > a > i {
	color: #a6a6a6;
}
.tabbable-line > .nav-tabs > li.open .dropdown-menu, .tabbable-line > .nav-tabs > li:hover .dropdown-menu {
	margin-top: 0px;
}
.tabbable-line > .nav-tabs > li.active {
	border-bottom: 4px solid #f3565d;
	position: relative;
}
.tabbable-line > .nav-tabs > li.active > a {
	border: 0;
	color: #333333;
}
.tabbable-line > .nav-tabs > li.active > a > i {
	color: #404040;
}
.tabbable-line > .tab-content {
	margin-top: -3px;
	background-color: #fff;
	border: 0;
	border-top: 1px solid #eee;
	padding: 15px 0;
}
.portlet .tabbable-line > .tab-content {
	padding-bottom: 0;
}
/* Below tabs mode */

.tabbable-line.tabs-below > .nav-tabs > li {
	border-top: 4px solid transparent;
}
.tabbable-line.tabs-below > .nav-tabs > li > a {
	margin-top: 0;
}
.tabbable-line.tabs-below > .nav-tabs > li:hover {
	border-bottom: 0;
	border-top: 4px solid #fbcdcf;
}
.tabbable-line.tabs-below > .nav-tabs > li.active {
	margin-bottom: -2px;
	border-bottom: 0;
	border-top: 4px solid #f3565d;
}
.tabbable-line.tabs-below > .tab-content {
	margin-top: -10px;
	border-top: 0;
	border-bottom: 1px solid #eee;
	padding-bottom: 15px;
}
</style>
<style>
.input {
    display: block;
    visibility: hidden;
    width: 0;
    height: 0;
}
</style>
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
</head>

<body>

<%@include file="nav.jsp" %>

<div class="container">
  <div >
    <form class="bs-example bs-example-form" id="form" action="" method="POST" enctype="multipart/form-data" role="form" onsubmit="return false;">
			<div class="row ">
				<div class="col-lg-3 "></div>
				<div class="col-lg-6 ">
					<div class="input-group input-group-lg">
						<input id="image_url" type="text" class="form-control" placeholder="粘贴图片网址...">
						<span class="input-group-btn">
							<input type="file" id="file_input" name="file" class="input" onchange="form.action='/nihao/RetrieveServlet?label=local_upload';form.submit();">
            				<input class="btn btn-info" type="button" id="upload_btn" name="upload_btn" onclick="file_input.click()" value="本地上传"> 
						</span>
					</div>
					<!-- /input-group -->
				</div>
				<!-- /.col-lg-6 -->
				<div class="col-lg-3 "></div>
			</div>
			<!-- /.row -->
		</form>
  </div>
  <hr>
  <br>
  <div class="row">
    <div class="col-lg-2">
      <div class="pull-right"> <a href="http://dotstrap.com/"> <img src="${url }" class="thumbnail" style="width: 120px;height: 120px;"
                                alt="Image" /></a> </div>
    </div>
    <div class="col-lg-10">
      <div class="span text-left">
        <h4><strong>您上传的图片是</strong></h4>
      </div>
      <div class="">
              <ul class="list-inline">
              <c:forEach begin="0" end="2" var="list" items="${StampList}" varStatus="state">
                <li><a href="http://dotstrap.com/"> <img src="/nihao/ImageServlet?id=${state.index }" class="thumbnail"
                                alt="image" style="width: 150px;height: 150px;" /></a> </li>
                </c:forEach>
              </ul>
            </div>
    </div>
    <!-- /.col-lg-10 --> 
  </div>
  <!-- /.row -->
  
  <hr>
  <div class="row">
    <div class="col-lg-1"> </div>
    <div class="col-lg-10">
      <div class="tabbable-panel">
        <div class="tabbable-line">
          <ul class="nav nav-tabs ">
            <li class="active"> <a href="#tab_default_1" data-toggle="tab"> 图片源 </a> </li>
            <li> <a href="#tab_default_2" data-toggle="tab"> 相似图片 </a> </li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab_default_1"><br>
              
              <c:forEach begin="0" end="9" var="picS" items="${StampList }" varStatus="state">
              <c:if test="${picS.id!=null }">
              <div class="media"> 
              <a class="pull-left" href="#"><img class="media-object" src="/nihao/ImageServlet?id=${state.index }" style="width: 120px;height: 120px;" alt="媒体对象"></a>
                <div class="media-body"> <a href="#">
                  <h4 class="media-heading">${picS.name }</h4>
                  </a>
                  <h6 style="padding:3px 0px 15px;">${picS.country }</h6>
                  <a href="${picS.url }"><h6 class="text-primary">${picS.url }</h6></a>
                </div>
              </div>
              <br>
              <</c:if>
              </c:forEach>
              <div class="pull-right">
                <ul class="pagination">
                  <li><a href="#">&laquo;</a></li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <div class="tab-pane" id="tab_default_2">
            <c:forEach var="picS" items="${StampList }" varStatus="state">
            <c:if test="${picS.id!=null }">
              
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="/nihao/ImageServlet?id=${state.index }" class="thumbnail" style="width: 120px;height: 120px;"
                                alt="Image" /></a> </div>
                
              </c:if>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-1"> </div>
</div>
</body>
</html>