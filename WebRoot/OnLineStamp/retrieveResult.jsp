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
  <div>
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
  <br><br>
  <div class="row">
    <div class="col-lg-9">
      <div class="panel panel-default">
        <div class="panel-body">
        <div class="row">
          <div class="col-lg-2">
            <div class=""> <a href="http://dotstrap.com/"> <img src="${url }" class="thumbnail" style="width: 120px;height: 120px;"
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
                                alt="image" width="150" height="150" /></a> </li>
                <%--<li> <a href="http://dotstrap.com/"> <img src="http://placehold.it/100x100" class="thumbnail"
                                alt="Image" /></a> </li>
                <li> <a href="http://dotstrap.com/"> <img src="http://placehold.it/100x100" class="thumbnail"
                                alt="Image" /></a></li>
              --%></c:forEach>
              </ul>
            </div>
          </div><!-- /.col-lg-10 -->
        </div>
        
        <div class="row">
        
        	<div class="col-lg-12">
        	<div class="span text">
            	<span> </span>
                
            </div>
            <br>
            <div class="text-justify">
            邮票（Postage stamp）是邮政机关发行，供寄递邮件贴用的邮资凭证。邮票是邮件的发送者为邮政服务付费的一种证明，发送者将邮票贴在信件上，再由邮局盖章销值，以用于在邮件被寄出前，证明寄邮人已支付费用。邮票的发行由国家或地区管理，是一个国家或地区主权的象征...
            <a href="#"><span class="text-primary"> 查看详情</span></a>
            </div>
            </div>
        </div>
        
        </div>
      </div><!-- /.panel -->
      
      <div class="panel panel-default">
   		<div class="panel-heading">
      		<ul class="list-inline">
            <li><h3 class="panel-title">图片源</h3></li>
            <li class="text-right"><a href="/nihao/RetrieveServlet?label=more&url=${url }&limit=20">更多</a></li>
            </ul>
   		</div>
   	    <div class="panel-body">
   	     <c:forEach var="picS" items="${StampList }" varStatus="state">
           <c:if test="${picS.id!=null }">
			<div class="media">
   				<a class="pull-left" href="#"><img width="100px" height="100px"  class="media-object" src="/nihao/ImageServlet?id=${state.index }" alt="媒体对象"></a>
   				<div class="media-body">
      				<a href="#"><h4 class="media-heading">${picS.name }</h4></a>
                    <h6 style="padding:3px 0px 15px;height: 13px;">${picS.country }</h6>
                    <a href="${picS.url }"><h6 class="text-primary">${picS.url }</h6></a>
   				</div>
			</div><hr>
			 </c:if>
			</c:forEach>
        </div>
  	  </div>
      
    </div>
    <!-- /.col-lg-8 -->
    
    <div class="col-lg-3"> 
    	<div class="panel panel-default">
   			<div class="panel-heading">
      			<ul class="list-inline">
            		<li><h3 class="panel-title">相似邮票</h3></li>
            		<li class="text-right"><a href="/nihao/RetrieveServlet?label=more&url=${url }&limit=40">更多</a></li>
            	</ul>
   			</div>
   			<div class="panel-body">
   			   <c:forEach begin="0" end="10" var="simiStam" items="${StampList }" varStatus="state">
            		<div class="col-lg-6">
                		<a href="http://dotstrap.com/"> <img src="/nihao/ImageServlet?id=${state.index }" class="thumbnail"
                                alt="Image" style="width: 100px;height: 100px;" /></a>
                	</div>
                </c:forEach>
            </div>
		</div>
    </div>
  </div>
</div>
  </body>
</html>
