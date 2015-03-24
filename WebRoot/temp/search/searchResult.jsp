<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>邮票检索结果</title>

<%@include file="/function/share/top.jsp"%>
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

	<%@include file="/function/share/navigate.jsp" %>
	<%
		//request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		name = new String(name.getBytes("iso8859-1"), "utf-8");
		String url = request.getParameter("url");
		//url = url + name;
		name = name.split("\\.")[0];
		url = "http://img3.redocn.com/20091221/20091217_fa2a743db1f556f82b9asJ320coGmYFf.jpg";
	%>
	<input type="hidden" id="request_name" value="<%=name %>" />
	<input type="hidden" id="request_url" value="<%=url %>"/>
	<div>
		<form class="bs-example bs-example-form" id="form" action="upload" method="POST" enctype="multipart/form-data" role="form">
			<div class="row ">
				<div class="col-lg-3 "></div>
				<div class="col-lg-6 ">
					<div class="input-group input-group-lg">
						<input id="image_url" type="text" class="form-control" placeholder="粘贴图片网址...">
						<span class="input-group-btn">
							<input type="file" id="file_input" name="file" class="input" onchange="upload()">
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
	<%@include file="imageShow_part.jsp" %>
<!-- image URL  -->

</body>
</html>
