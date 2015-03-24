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
<title>个人主页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="discuss/favicon.ico">
<!-- Bootstrap core CSS -->
<link href="OnLineStamp/docs/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="OnLineStamp/css/font-awesome.min.css" rel="stylesheet">
<script src="OnLineStamp/docs/assets/js/ie-emulation-modes-warning.js"></script>
<script src="OnLineStamp/js/jquery-1.11.2.min.js"></script>
<script src="OnLineStamp/docs/dist/js/bootstrap.min.js"></script> 
<script src="OnLineStamp/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</head>
<body>
	<%@include file="nav.jsp" %>

		<div class="row">
			<div class="col-xs-2 col-md-2 col-lg-2">
				<div>
					<nav class="navbar navbar-default" role="navigation"> <!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<div class="brand-wrapper">
							<!-- Hamburger -->
							<button type="button" class="navbar-toggle">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>

							<!-- Brand -->
							<div class="brand-name-wrapper">
								<a class="navbar-brand" href="#"> 我的主页 </a>
							</div>

				
						</div>
					</div>

					<!-- Main Menu -->
					<div>
						<ul class="nav nav-pills nav-stacked">
							<br>
							<br>
							<br>
							<hr style="margin:0;">
							<li><a href="person_album.html"><span
									class="glyphicon glyphicon-picture"></span><span
									class="badge pull-right">10/100</span> 邮册</a></li>
							<li><a href="#"><span class="badge pull-right">42</span>
									粉丝</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-volume-down"></span> 通知</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-envelope"></span> 私信</a></li>
							<li>
								<hr style="margin:0;">
							</li>
							<li><a href="#"><span
									class="glyphicon glyphicon-heart-empty"></span> 喜欢</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-star-empty"></span> 关注</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse --> </nav>
				</div>
			</div>
			
			<div class="col-xs-7 col-md-7 col-lg-7">
				<div>
					<div>
						<div class="row">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="col-xs-12 col-md-12 col-lg-12">
										<ul class="nav nav-pills">
											<li><a href="#">我的主页</a></li>
											<li></li>
											<li><a href="person_album.html">我的邮册</a></li>
											<li><a href="upload.html">上传邮票</a></li>
											<li><a href="#">系统设置</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-md-12 col-lg-12">
								<ul class="nav nav-pills">
									<li><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">创建邮册</button></li>
									
									<li></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">排序 <span class="caret"></span></a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">根据时间</a></li>
											<li><a href="#">根据邮票数</a></li>
										</ul></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">分类 <span class="caret"></span></a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">根据上传时间</a></li>
											<li><a href="#">根据系统目录</a></li>
											<li><a href="#">根据自定义目录</a></li>
										</ul></li>
									<li><a href="#">批量下载</a></li>
									<li><a href="#">删除</a></li>
								</ul>
								<hr style="margin:1">
							</div>
						</div>
						<div class="row">
						   <c:forEach var="album" items="${albumList }"> 
							<div class="col-xs-4 col-md-4 col-lg-4">
								<a class="thumbnail fancybox" rel="ligthbox" href="stamp.html">
									<img class="img-heightfixed" alt="" src=${album.path } />
									<div class='text-right'>
										<small class='text-muted'>${album.name }</small>
									</div> <!-- text-right / end -->
								</a>
							</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-3 col-md-3 col-lg-3">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="text-center">
							<a href="#"><span class="">可能感兴趣的邮票</span></a>
						</h5>
					</div>
					<div class="panel-body">
						<ul class="nav nav-pills">
						<c:forEach var="inter" items="${intersList }" begin="0" end="1">
							<li>
								<div class="row">
									<div class="col-xs-7 col-md-7 col-lg-7">
										<a class="thumbnail fancybox" rel="ligthbox"
											href="http://placehold.it/300x320.png"> <img
											class="img-responsive" alt=""
											src=${inter.path } /> <!-- text-right / end -->
										</a>
									</div>
								</div>
							</li>
						</c:forEach>
						</ul>
					</div>
					<div class="panel-footer">
						<h6 class="text-center">
							<a href="#">查看更多>></a>
						</h6>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="text-center">
							<a href="#"><span class="">邮票达人</span></a>
						</h5>
					</div>
					<hr style="margin:0">
					<div class="panel-body">
						<ul class="nav nav-pills">
						  <c:forEach var="talent" items="${talents }" begin="0" end="3">
						      <li>
								<div class="row">
									<div class="col-xs-4 col-md-4 col-lg-4">
										<a href="http://dotstrap.com/"> <img
											src=${talent.head } class="thumbnail" alt="Image" /></a>
									</div>
									<div class="col-xs-8 col-md-8 col-lg-8">
										<div class="row">
											<p>${talent.name }</p>
										</div>
										<div class="row">
											<button class="btn btn-default btn-xs">关注</button>
										</div>
									</div>
								</div>
							</li>
						  </c:forEach>
						</ul>
					</div>
					<div class="panel-footer">
						<h6 class="text-center">
							<a href="#">发现更多>></a>
						</h6>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-body">Basic panel example</div>
				</div>
				<ul class="nav nav-pills">
					<li><a href="#">创建邮册</a></li>
					<li></li>
					<li><a href="#">排序</a></li>
					<li><a href="#">分类</a></li>
					<li><a href="#">批量下载</a></li>
					<li><a href="#">删除</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js">
		$(function() {
			$('.navbar-toggle').click(
					function() {
						$('.navbar-nav').toggleClass('slide-in');
						$('.side-body').toggleClass('body-slide-in');
						$('#search').removeClass('in').addClass('collapse')
								.slideUp(200);

						/// uncomment code for absolute positioning tweek see top comment in css
						//$('.absolute-wrapper').toggleClass('slide-in');

					});

			// Remove menu for searching
			$('#search-trigger').click(function() {
				$('.navbar-nav').removeClass('slide-in');
				$('.side-body').removeClass('body-slide-in');

				/// uncomment code for absolute positioning tweek see top comment in css
				//$('.absolute-wrapper').removeClass('slide-in');

			});
		});
	</script>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">创建邮册</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" role="form" action="#" methods="post">
					<div class="form-group">
						<label class="col-sm-2 control-label">邮册名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="createalbum" name="name">
							<input type="hidden" name="album" value="create"> 
						</div>
						
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">邮册描述</label>
						<div class="col-sm-10">
							<textarea class="form-control" id="indroduce" name="introduce"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="pull-right  col-md-3 ">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">取消</button>
							<button type="submit" class="btn btn-primary" name="create">创建</button>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>

<div class="footer">
	<div class="container">
		<p class="text-muted">@2014-南京大学软件学院</p>
	</div>
</div>
</body>
</html>
