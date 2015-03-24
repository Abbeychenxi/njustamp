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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="discuss/favicon.ico">
<title>邮票页</title>
<link href="OnLineStamp/docs/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/navbar-static-top.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/sticky-footer-navbar.css" rel="stylesheet">
<script src="OnLineStamp/docs/assets/js/ie-emulation-modes-warning.js"></script>
<script src="OnLineStamp/docs/dist/js/bootstrap.min.js"></script>
<script src="OnLineStamp/js/jquery-1.11.2.min.js"></script>
<script src="OnLineStamp/docs/dist/js/bootstrap.min.js"></script> 
<script src="OnLineStamp/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</head>
<body>
<%@include file="nav.jsp" %>
<style>
    
	  .lib {
		  list-style:none;
		  margin-bottom:25px;
	  }
      ul li img {
          cursor: pointer;
      }
      .modal-body {
          padding:5px !important;
      }
      .modal-content {
          border-radius:0;
      }
      .modal-dialog img {
          text-align:center;
          margin:0 auto;
      }
    .controls{          
        width:50px;
        display:block;
        font-size:11px;
        padding-top:8px;
        font-weight:bold;          
    }
    .next {
        float:right;
        text-align:right;
    }

  </style>
<div class="container">
	<div class="row">
    	<div class="col-xs-1 col-md-1 col-lg-1">
        	
        </div>
        
        <div class="col-xs-10 col-md-10 col-lg-10">
        	<div class="row">
            	<div class="col-xs-12 col-md-12 col-lg-12">
                	<ul class="breadcrumb">
						<li><a href="person_home.html">我的主页</a></li>
						<li><a href="album.html">邮册</a></li>
						<li class="active">邮册名</li>
					</ul>
                </div> 
            </div>
            <div class="row">
            	<div class="col-xs-12 col-md-12 col-lg-12">
                	<!--<div class="panel panel-default">
                    	<div class="panel-body"> -->
                        	<ul class="nav nav-pills">
                            	<li><a href="upload.html">上传邮票</a></li>
                                <li><a href="#">批量操作</a></li> 
                            </ul>
                            <hr style="margin-top:0">
                            <br>
                       <!-- </div>
                    </div> -->
                </div>
            </div>
            
            <div>
                
            	<ul class="row">
            	    <c:forEach var="stamp" items="${stamps }">
            		<li class="col-lg-3 col-md-3col-sm-3 col-xs-3 lib">
                		<a class="thumbnail fancybox" rel="ligthbox" href="http://placehold.it/300x320.png">
                        <img class="img-responsive" alt="" src=${stamp.path } />
                        <div class='text-right'>
                        <small class='text-muted'>邮票名</small>
                        </div>
                        </a>
            		</li>
            		</c:forEach>
				</ul>
			</div>  
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      			<div class="modal-dialog">
        			<div class="modal-content">         
          				<div class="modal-body">                
         				</div>
       		 		</div><!-- /.modal-content -->
      			</div><!-- /.modal-dialog -->
    		</div><!-- /.modal -->
    	 </div>
        
        <div class="col-xs-1 col-md-1 col-lg-1">
        	
        </div>
    </div>
</div>	



<script>
        $(document).ready(function(){        
            $('li img').on('click',function(){
                var src = $(this).attr('src');
                var img = '<img src="' + src + '" class="img-responsive"/>';
                
                //start of new code new code
                var index = $(this).parent('li').index();   
                
                var html = '';
                html += img;                
                html += '<div style="height:25px;clear:both;display:block;">';
                html += '<a class="controls next" href="'+ (index+2) + '">next &raquo;</a>';
                html += '<a class="controls previous" href="' + (index) + '">&laquo; prev</a>';
                html += '</div>';
                
                $('#myModal').modal();
                $('#myModal').on('shown.bs.modal', function(){
                    $('#myModal .modal-body').html(html);
                    //new code
                    $('a.controls').trigger('click');
                })
                $('#myModal').on('hidden.bs.modal', function(){
                    $('#myModal .modal-body').html('');
                });
                
                
                
                
           });
        
        })
        
        //new code
        $(document).on('click', 'a.controls', function(){
            var index = $(this).attr('href');
            var src = $('ul.row li:nth-child('+ index +') img').attr('src');             
            
            $('.modal-body img').attr('src', src);
            
            var newPrevIndex = parseInt(index) - 1; 
            var newNextIndex = parseInt(newPrevIndex) + 2; 
            
            if($(this).hasClass('previous')){               
                $(this).attr('href', newPrevIndex); 
                $('a.next').attr('href', newNextIndex);
            }else{
                $(this).attr('href', newNextIndex); 
                $('a.previous').attr('href', newPrevIndex);
            }
            
            var total = $('ul.row li').length + 1; 
            //hide next button
            if(total === newNextIndex){
                $('a.next').hide();
            }else{
                $('a.next').show()
            }            
            //hide previous button
            if(newPrevIndex === 0){
                $('a.previous').hide();
            }else{
                $('a.previous').show()
            }
            
            
            return false;
        });
        
         
        
    </script>


<!-- InstanceEndEditable -->
<div class="footer">
  <div class="container">
    <p class="text-muted">@2014-南京大学软件学院</p>
  </div>
</div>


</body>
<!-- InstanceEnd --></html><!--<a href="model.dwt">Static Top Navbar Example for Bootstrap</a>-->