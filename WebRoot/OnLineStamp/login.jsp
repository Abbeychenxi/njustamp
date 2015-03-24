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
<title>个人邮册登录</title>
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
				<form class="form-horizontal" name="UserRegistForm"
					action="UserController" method="post">
					<fieldset>
						<legend class="">登 陆</legend>
						<!-- Username -->
						<label class="control-label" style="margin-bottom:20px;" for="username">用户名</label> <input
							type="text" id="username" name="username" class="form-control">
						<!-- Password-->
						<label class="control-label" style="margin-bottom:20px;" for="password">密 码</label> <input
							type="password" id="password" name="password"
							class="form-control"> <input type="hidden" name="user"
							value="login">
						<!-- Button -->
						<button type="submit" class="btn btn-success btn-lg"  style="margin-top:20px;">登陆</button>
						<input type="button" class="btn btn-success btn-lg" style="margin-top:20px; margin-left:40px;" value="注册" onclick="location='/nihao/OnLineStamp/register.jsp'"/>
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
