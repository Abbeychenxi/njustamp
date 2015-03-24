<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Static navbar -->
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
				<li class="active"><a href="index.html">首页</a>
				</li>
				<li><a href="album.html">邮册</a>
				</li>
				<li><a href="person_home.html">个人主页</a>
				</li>
				<li><a href="search.html">检索</a>
				</li>
				<li>
					<form class="navbar-form" role="search"
						action="http://bootsnipp.com/search" method="GET" id="search-form">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="搜索邮票或人"
								name="q" style="padding:6px 6px;">
							<%--
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
							--%>
						</div>
					</form></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- <li><a href="../navbar">Default</a></li>-->
				<li class="active"><a href="#">登陆</a>
				</li>
				<li><a href="navbar-fixed-top">注销</a>
				</li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>