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
 <title>个人邮册</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="discuss/favicon.ico">
<!-- Bootstrap core CSS -->
<link href="OnLineStamp/docs/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="OnLineStamp/docs/dist/css/navbar-static-top.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/sticky-footer-navbar.css" rel="stylesheet">
<script src="OnLineStamp/docs/assets/js/ie-emulation-modes-warning.js"></script>
<script src="OnLineStamp/js/jquery-1.11.2.min.js"></script>
<script src="OnLineStamp/docs/dist/js/bootstrap.min.js"></script>
<script src="OnLineStamp/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</head>
<body>
	 <nav class="navbar navbar-default navbar-static-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">在线邮册</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.html">首页</a></li>
				<li><a href="album.html">邮册</a></li>
				<li><a href="person_home.html">个人主页</a></li>
				<li><a href="search.html">检索</a></li>
			 
				<li>
					<form class="navbar-form" role="search"
						action="http://bootsnipp.com/search" method="GET" id="search-form">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="搜索邮票或人"
								name="q" style="padding:6px 6px;">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- <li><a href="../navbar">Default</a></li>-->
				<li class="active"><a href="user/login.jsp">登陆</a></li>
				<li><a href="navbar-fixed-top">注销</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>

	<div class="container">
		<div class="row">
			<div class=" col-xs-2 col-md-2 col-lg-2">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<a href="person_home.html">我的主页</a>
						</h3>
					</div>
					<ul class="list-group">
						<a href="upload.html" class="list-group-item">上传邮票</a>
						<a href="#" class="list-group-item" data-toggle="modal" data-target="#myModal">创建邮册</a>
					</ul>
				</div>
			</div>

			<div class="col-xs-9 col-md-9 col-lg-9">
				<div class="row">
					<div class="col-xs-12 col-md-12 col-lg-12">
						<ul class="nav nav-tabs nav-justified">
							<li><a href="#tab_default_1" data-toggle="tab">我关注的人的最新邮册</a></li>
							<li class="active"><a href="#tab_default_2"
								data-toggle="tab">我的邮册</a></li>
							<li><a href="#tab_default_3" data-toggle="tab">我喜欢的邮票</a></li>
						</ul>
						<br>
					</div>
				</div>
				<div class="tab-content">
					<div class="tab-pane" id="tab_default_1">
						<ul class="nav nav-tabs">
							<!--
                            <li>
                            	<button class="btn btn-info">创建邮册</button>
                            </li>
                            <li>
                            	<button class="btn btn-info ">上传邮票</button>
                            </li> 
                        -->
						</ul>
					</div>
					<div class="tab-pane active" id="tab_default_2">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#">全部邮册</a></li>
							<li><a href="#">最新照片</a></li>
							<li class="dropdown pull-right"><a href="#"
								data-toggle="dropdown" class="dropdown-toggle">分类<strong
									class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="#">默认分类</a></li>
									<li><a href="#">目录分类</a></li>
								</ul></li>
						</ul>
					</div>
					<div class="tab-pane" id="tab_default_3">
						<ul class="nav nav-tabs">
						</ul>
					</div>
				</div>
				<div class="row">
					<br>
					
					<c:forEach var="album" items="${albumList }" varStatus="he">
					 
					<div class=" col-xs-3 col-md-3 col-lg-3">
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

			<div class="col-xs-1 col-md-1 col-lg-1"></div>
		</div>
	</div>
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
