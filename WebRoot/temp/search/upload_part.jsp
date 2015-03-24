<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- image URL  -->
<script>
$(document).ready(  
        function() {  
            $("#image_url").keydown(function(event) {  
                //if (event.keyCode == 13) {  
                	var image = {
                			url:'${pageContext.request.contextPath}/retrieve/retrieveUrl.action',
                			type:'POST',
                			data:{"url":JSON.stringify($("input[id='image_url']").val())},
                			dataType:'json',
                			success:function(data, textStatus){
                				alert(data);
                			}
                	};
                	$.ajax(image);
                	var result2 = $("input[id='image_url']").val(); // image url 
                    alert(result2);
                //}  
            }); 
        //}
        }); 
</script>
<style>
.input {
    display: block;
    visibility: hidden;
    width: 0;
    height: 0;
}
</style>
<script><%--
function upload() {
	 document.getElementById('form').action = "upload";  
	 
     document.getElementById("form").submit(); 
	//$('#form').submit();
	
}
--%></script>
<div class="container">
	<div class="span text-center">
    	<h1>邮票搜索</h1>
    </div>
  <div style="padding:inherit;">
    <form class="bs-example bs-example-form" id="form" action="" method="POST" enctype="multipart/form-data" onsubmit="return false;">
      <div class="row">
        <div class="col-lg-3 "> </div>
        <div class="col-lg-6 ">
          <div class="input-group input-group-lg">
           <input id="image_url" type="text" class="form-control" placeholder="粘贴图片网址..." value='{"status":200,"data":["year","text","country"]}'>
            <span class="input-group-btn">
            	<input type="file" id="file_input" name="file" class="input" onchange="form.action='upload';form.submit();">
            	<input class="btn btn-info" type="button" id="upload_btn" name="upload_btn" onclick="file_input.click()" value="本地上传">  
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