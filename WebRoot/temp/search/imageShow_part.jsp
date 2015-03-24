<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(window).load("${pageContext.request.contextPath}/retrieve/retrieveUrl.action",{"url" : $("input[id='request_url']").val()}, function(response, status, xhr) {
		if(status == "success") {
			var json = JSON.parse(response);
			for(var i=0,l=json.length;i<l;i++){
				for(var key in json[i]){
					$('#possible_image_ul').append('<li><a href="http://dotstrap.com/"> <img src="http://placehold.it/100x100" class="thumbnail"/></a> </li>');
				}
			}
			$('#stamp_name').append('<span>' + $("input[id='request_name']").val() +'</span>');
			//introduce
			
			
		}
	});
</script>

<br><br>
  <div class="row">
    <div class="col-lg-9">
      <div class="panel panel-default">
        <div class="panel-body">
        <div class="row">
          <div class="col-lg-2">
            <div class="">
            	<img src="<%=url %>" class="thumbnail" width="150" height="150" alt="Image" /> </div>
          </div>
          <div class="col-lg-10">
            <div class="span text-left">
              <h4><strong>您上传的图片是</strong></h4>
            </div>
            <div class="">
              <ul id="possible_image_ul" class="list-inline">
                <!-- js -->
              </ul>
            </div>
          </div><!-- /.col-lg-10 -->
        </div>
        
        <div class="row">
        	<div class="col-lg-12">
        	<div class="span text" id="stamp_name"></div>
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
            <li class="text-right"><a href="search_result_more.html">更多</a></li>
            </ul>
   		</div>
   	    <div class="panel-body">
			<div class="media">
   				<a class="pull-left" href="#"><img class="media-object" src="http://placehold.it/100x100" alt="媒体对象"></a>
   				<div class="media-body">
      				<a href="#"><h4 class="media-heading">《拜年》特种邮票</h4></a>
                    <h6 style="padding:3px 0px 15px;">中国邮政定于2015年1月10日发行《拜年》特种邮票1套1枚</h6>
                    <h6 class="text-primary">http://www.cpi.com.cn/ypiao/6514.jhtml</h6>
   				</div>
			</div><hr>         
        </div>
  	  </div>
      
    </div>
    <!-- /.col-lg-8 -->
    
    <div class="col-lg-3"> 
    	<div class="panel panel-default">
   			<div class="panel-heading">
      			<ul class="list-inline">
            		<li><h3 class="panel-title">相似邮票</h3></li>
            		<li class="text-right"><a href="search_result_more.html">更多</a></li>
            	</ul>
   			</div>
   			<div class="panel-body">
           		<div class="row">
            		<div class="col-lg-6">
                		<a href="http://dotstrap.com/"> <img src="http://placehold.it/100x100" class="thumbnail"
                                alt="Image" /></a>
                	</div>
                	<div class="col-lg-6">
                		<a href="http://dotstrap.com/"> <img src="http://placehold.it/100x100" class="thumbnail"
                                alt="Image" /></a>
                	</div>
                </div>
            </div>
		</div>
    </div>
  </div>