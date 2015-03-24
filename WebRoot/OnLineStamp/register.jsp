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
<title>用户注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="discuss/favicon.ico">
<link href="OnLineStamp/docs/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="OnLineStamp/docs/assets/js/ie-emulation-modes-warning.js"></script>
<link href="OnLineStamp/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	<%@include file="nav.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-xs-4 col-md-4 col-lg-4"></div>
			<div class="col-xs-4 col-md-4 col-lg-4">
				<form class="form-horizontal" action="UserController" method="post">
					<fieldset>
						<legend class="">注 册</legend>
						<!-- User name -->
						<label class="control-label" style="margin-bottom:20px;" for="username">用户名</label> <input
							class="form-control" type="text" id="username" name="username"
							placeholder="">
						<!-- Email -->
						<label class="control-label" style="margin-bottom:20px;" for="email">邮 箱</label><br> <input
							type="text" id="email" name="email" placeholder=""
							class="form-control">
						<!-- Password-->
						<label class="control-label" style="margin-bottom:20px;" for="password">密 码</label><br> <input
							type="password" id="password" name="password" placeholder=""
							class="form-control">
						<!-- affirmed password-->
						<label class="control-label" style="margin-bottom:20px;" for="surePassword">确认密码</label><br>
						<input type="password" id="surePassword" name="surePassword"
							placeholder="" class="form-control"> <input type="hidden"
							name="user" value="save">
						<!-- Button -->
						<button class="btn btn-success btn-lg"  style="margin-top:20px;" type="submit">注册</button>
					</fieldset>
				</form>
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
