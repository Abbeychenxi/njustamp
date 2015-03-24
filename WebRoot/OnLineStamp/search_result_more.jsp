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
<title>更多结果搜索</title>
<link href="OnLineStamp/docs/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/navbar-static-top.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/sticky-footer-navbar.css" rel="stylesheet">
<script src="OnLineStamp/docs/assets/js/ie-emulation-modes-warning.js"></script>
<script src="OnLineStamp/js/jquery-1.11.2.min.js"></script>
<script src="OnLineStamp/docs/dist/js/bootstrap.min.js"></script>
<script src="OnLineStamp/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
<style>
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme Licensed under MIT ***/ 
/* Tabs panel */
.tabbable-panel {
 border:1px solid #eee;
 padding: 10px;
}
/* Default mode */
.tabbable-line > .nav-tabs {
	border: none;
	margin: 0px;
}
.tabbable-line > .nav-tabs > li {
	margin-right: 2px;
}
.tabbable-line > .nav-tabs > li > a {
	border: 0;
	margin-right: 0;
	color: #737373;
}
.tabbable-line > .nav-tabs > li > a > i {
	color: #a6a6a6;
}
.tabbable-line > .nav-tabs > li.open, .tabbable-line > .nav-tabs > li:hover {
	border-bottom: 4px solid #fbcdcf;
}
.tabbable-line > .nav-tabs > li.open > a, .tabbable-line > .nav-tabs > li:hover > a {
	border: 0;
	background: none !important;
	color: #333333;
}
.tabbable-line > .nav-tabs > li.open > a > i, .tabbable-line > .nav-tabs > li:hover > a > i {
	color: #a6a6a6;
}
.tabbable-line > .nav-tabs > li.open .dropdown-menu, .tabbable-line > .nav-tabs > li:hover .dropdown-menu {
	margin-top: 0px;
}
.tabbable-line > .nav-tabs > li.active {
	border-bottom: 4px solid #f3565d;
	position: relative;
}
.tabbable-line > .nav-tabs > li.active > a {
	border: 0;
	color: #333333;
}
.tabbable-line > .nav-tabs > li.active > a > i {
	color: #404040;
}
.tabbable-line > .tab-content {
	margin-top: -3px;
	background-color: #fff;
	border: 0;
	border-top: 1px solid #eee;
	padding: 15px 0;
}
.portlet .tabbable-line > .tab-content {
	padding-bottom: 0;
}
/* Below tabs mode */

.tabbable-line.tabs-below > .nav-tabs > li {
	border-top: 4px solid transparent;
}
.tabbable-line.tabs-below > .nav-tabs > li > a {
	margin-top: 0;
}
.tabbable-line.tabs-below > .nav-tabs > li:hover {
	border-bottom: 0;
	border-top: 4px solid #fbcdcf;
}
.tabbable-line.tabs-below > .nav-tabs > li.active {
	margin-bottom: -2px;
	border-bottom: 0;
	border-top: 4px solid #f3565d;
}
.tabbable-line.tabs-below > .tab-content {
	margin-top: -10px;
	border-top: 0;
	border-bottom: 1px solid #eee;
	padding-bottom: 15px;
}
</style>
<script type="text/javascript">
  var url=""; 
  function showFileDialog(){
       var file=document.getElementById("file");
       var pics=document.getElementById("addPic");
       file.click();
     if (navigator.userAgent.indexOf("MSIE")>=1) { // IE
        url = file.value;
       } else if(navigator.userAgent.indexOf("Firefox")>0) { // Firefox
        url = window.URL.createObjectURL(file.files.item(0));
       } else if(navigator.userAgent.indexOf("Chrome")>0) { // Chrome
        url = window.URL.createObjectURL(file.files.item(0));
        }
      alert(url);
     return url;
    } 
       
   
</script>
</head>

<body>
<%@include file="nav.jsp" %>
<div class="container">
  <div >
    <form class="bs-example bs-example-form" role="form">
      <div class="row ">
        <div class="col-lg-3 "> </div>
        <div class="col-lg-6 ">
          <div class="input-group input-group-lg">
           
            <input type="text" style="display:table;" class="form-control" placeholder="粘贴图片网址...">
            <input type="file" id="file" style="display: none;"> 
            <span class="input-group-btn">
            
            <button class="btn btn-info" type="button" onclick="showFileDialog()"> 本地上传 </button>
            </span> </div>
          <!-- /input-group --> 
        </div>
        <!-- /.col-lg-6 -->
        <div class="col-lg-3 "></div>
      </div>
      <!-- /.row -->
    </form>
  </div>
  <hr>
  <br>
  <div class="row">
    <div class="col-lg-2">
      <div class="pull-right"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/75x75" class="thumbnail"
                                alt="Image" /></a> </div>
    </div>
    <div class="col-lg-10">
      <div class="span text-left">
        <h4><strong>您上传的图片是</strong></h4>
      </div>
      <div class="">
        <ul class="list-inline" id="addPic">
          <li><a href="http://dotstrap.com/"> <img src="http://placehold.it/75x75"   class="thumbnail"
                                alt="Image" /></a> </li>
          <li> <a href="http://dotstrap.com/"> <img src="http://placehold.it/75x75" class="thumbnail"
                                alt="Image" /></a> </li>
          <li> <a href="http://dotstrap.com/"> <img src="http://placehold.it/75x75" class="thumbnail"
                                alt="Image" /></a></li>
        </ul>
      </div>
    </div>
    <!-- /.col-lg-10 --> 
  </div>
  <!-- /.row -->
  
  <hr>
  <div class="row">
    <div class="col-lg-1"> </div>
    <div class="col-lg-10">
      <div class="tabbable-panel">
        <div class="tabbable-line">
          <ul class="nav nav-tabs ">
            <li class="active"> <a href="#tab_default_1" data-toggle="tab"> 图片源 </a> </li>
            <li> <a href="#tab_default_2" data-toggle="tab"> 相似图片 </a> </li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab_default_1"><br>
              <c:forEach var="picS" items="${picSources }">
              <c:if test="${picS.pics!=null&&picS.pics.size()!=0 }">
              <div class="media">
               <a class="pull-left" href="#"><img width="150px" height="128px"  class="media-object" src="${picS.pics[0].stamp_pic_url }" alt="媒体对象"></a>
                <div class="media-body"> <a href="#">
                  <h4 class="media-heading">${picS.name }</h4>
                  </a>
                  <h6 style="padding:3px 0px 15px;height: 38px">${picS.descrip }</h6>
                  <h6 class="text-primary">${picS.pics[0].stamp_pic_url }</h6>
                </div>
              </div>
              <br>
              </c:if>
              </c:forEach>
              <script type="text/javascript">
                function addOrSub(aObject)
                {
                    
                   var addOne=document.getElementById("addOne");
                   var one=document.getElementById("one");
                   var two=document.getElementById("two");
                   var three=document.getElementById("three");
                   var four=document.getElementById("four");
                   var five=document.getElementById("five");
                   var substract=document.getElementById("substract");
                   if(aObject==addOne)
                   {
                       one.innerHTML=Number(one.innerHTML)+1;
                       two.innerHTML=Number(two.innerHTML)+1;
                       three.innerHTML=Number(three.innerHTML)+1;
                       four.innerHTML=Number(four.innerHTML)+1;
                       five.innerHTML=Number(five.innerHTML)+1;
                   }
                   if(aObject==substract)
                   {
                     if(Number(one.innerHTML)>1)
                      {
                        one.innerHTML=Number(one.innerHTML)-1;
                       two.innerHTML=Number(two.innerHTML)-1;
                       three.innerHTML=Number(three.innerHTML)-1;
                       four.innerHTML=Number(four.innerHTML)-1;
                       five.innerHTML=Number(five.innerHTML)-1;
                      }
                   }
                }
              </script>
              <div class="pull-right">
                <ul class="pagination">
                  <li><a id="substract"   onclick="addOrSub(this)">&laquo;</a></li>
                  <li><a id="one"   onclick="addOrSub(this)" >1</a></li>
                  <li><a id="two"   onclick="addOrSub(this)">2</a></li>
                  <li><a id="three"  onclick="addOrSub(this)">3</a></li>
                  <li><a id="four"   onclick="addOrSub(this)">4</a></li>
                  <li><a id="five"    onclick="addOrSub(this)">5</a></li>
                  <li><a id="addOne"  onclick="addOrSub(this)">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <div class="tab-pane" id="tab_default_2">
              <div class="row">
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
              </div>
              <div class="row">
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
              </div>
              <div class="row">
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
              </div>
              <div class="row">
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
              </div>
              <div class="row">
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
                <div class="col-lg-2"> <a href="http://dotstrap.com/"> <img src="http://placehold.it/150x150" class="thumbnail"
                                alt="Image" /></a> </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-1"> </div>
</div>
</body>
</html>