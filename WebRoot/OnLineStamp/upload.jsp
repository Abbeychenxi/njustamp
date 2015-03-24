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
<title>邮票上传</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="discuss/favicon.ico">
<link href="OnLineStamp/docs/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/navbar-static-top.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/sticky-footer-navbar.css" rel="stylesheet">
<script src="OnLineStamp/docs/assets/js/ie-emulation-modes-warning.js"></script>
<script src="OnLineStamp/js/jquery-1.11.2.min.js"></script>
<script src="OnLineStamp/docs/dist/js/bootstrap.min.js"></script>
<script src="OnLineStamp/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
<link href="OnLineStamp/css/fileinput.css" media="all" rel="stylesheet"
	type="text/css" />
<script src="OnLineStamp/js/fileinput.js" type="text/javascript"></script>
</head>
<body>
	<%@include file="nav.jsp" %>
	<div class="container">
		<div class="row">
			<h3>上传邮票</h3>
			<hr>
		</div>
		<div class="row">

			<form class="form-horizontal" action="#" method="post" enctype="multipart/form-data">

				<div class="form-group">
					<div class="col-sm-4 col-md-4 col-lg-4">
						<div class="col-sm-3">
							<label class="control-label">邮册名</label>
						</div>
						<div class="col-sm-9">
							<select class="form-control" name="bootstrap-theme"
								id="theme_chooser">
								<option value="">first</option>
								<option value="">first</option>
								<option value="">first</option>
							</select>
						</div>
					</div>
					<div class="col-sm-8 col-md-8 col-lg-8">
						<button class="btn btn-info" data-toggle="modal"
							data-target="#myModal">创建邮册</button>
					</div>
				</div>
				<!--<div class="form-group">
                    <input id="file-0" class="file" type="file" multiple=true>
                </div>-->
				<input type="hidden" name="album_name" value="stamp1">
				<div class="form-group">
					<div class="col-sm-12 col-md-12 col-lg-12">
						<input class="file" type="file" name="file" multiple=true
							data-preview-file-type="any">
					</div>
				</div>
			</form>
		</div>

	</div>
	<!-- 
	<script>
		$("#file-0").fileinput({
			'allowedFileExtensions' : [ 'jpg', 'png', 'gif' ],
		});
		$("#file-1").fileinput({

			initialPreviewConfig : [ {
				caption : 'Desert.jpg',
				width : '120px',
				url : '#'
			}, {
				caption : 'Jellyfish.jpg',
				width : '120px',
				url : '#'
			}, ],
			uploadUrl : '#',
			allowedFileExtensions : [ 'jpg', 'png', 'gif' ],
			overwriteInitial : false,
			maxFileSize : 1000,
			maxFilesNum : 10,
			//allowedFileTypes: ['image', 'video', 'flash'],
			slugCallback : function(filename) {
				return filename.replace('(', '_').replace(']', '_');
			}
		});
		/*
		$(".file").on('fileselect', function(event, n, l) {
		    alert('File Selected. Name: ' + l + ', Num: ' + n);
		});
		 *//*
							$("#file-3").fileinput({
								showUpload: false,
								showCaption: false,
								browseClass: "btn btn-primary btn-lg",
								fileType: "any"
							});
							$("#file-4").fileinput({
								uploadExtraData: [
						            {kvId: '10'}
						        ],
							});
						    $(".btn-warning").on('click', function() {
						        if ($('#file-4').attr('disabled')) {
						            $('#file-4').fileinput('enable');
						        } else {
						            $('#file-4').fileinput('disable');
						        }
						    });    
						    $(".btn-info").on('click', function() {
						        $('#file-4').fileinput('refresh', {previewClass:'bg-info'});
						    });*/
		/*
		$('#file-4').on('fileselectnone', function() {
		    alert('Huh! You selected no files.');
		});
		$('#file-4').on('filebrowse', function() {
		    alert('File browse clicked for #file-4');
		});
		 */
		$(document).ready(function() {
			$("#test-upload").fileinput({
				'showPreview' : false,
				'allowedFileExtensions' : [ 'jpg', 'png', 'gif' ],
				'elErrorContainer' : '#errorBlock'
			});
			/*
			$("#test-upload").on('fileloaded', function(event, file, previewId, index) {
			    alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
			});
			 */
		});
	</script>
	-->
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
