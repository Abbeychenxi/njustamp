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
<title>个人在线邮册首页</title>

<!-- Bootstrap core CSS -->
<link href="OnLineStamp/docs/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/navbar-static-top.css" rel="stylesheet">
<link href="OnLineStamp/docs/dist/css/sticky-footer-navbar.css" rel="stylesheet">
<script src="OnLineStamp/docs/assets/js/ie-emulation-modes-warning.js"></script>
<script src="OnLineStamp/js/jquery-1.11.2.min.js"></script>
<script src="OnLineStamp/docs/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="OnLineStamp/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</head>
<body>
<%@include file="nav.jsp" %>
<!-- InstanceBeginEditable name="EditRegion1" -->
<style>
.img-responsive,

.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  width: 100%;
  height: 400px;
}
.gallery
{
    display: inline-block;
    margin-top: 20px;
}
</style>
<section class="section-white">
  <div class="container">

    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <c:forEach var="adver" items="${adverList }" varStatus="hi">
        <c:if test="${hi.index==0 }">
        <div class="item active">
          <img src=${adver.path } alt="...">
          <div class="carousel-caption">
            <h2>${adver.detail }</h2>
          </div>
        </div>
        </c:if>
        <div class="item">
          <img src=${adver.path } alt="...">
          <div class="carousel-caption">
            <h2>${adver.detail }</h2>
          </div>
        </div>
        </c:forEach>
      </div>
       
      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div>
  </div>
</section>
  
   <div class="row" style="margin-left: 90px;margin-right: 90px"  >
        	<div class="col-lg-12">
            	<ul class="list-inline">
                	<li class="span text-left text-primary"><h2>年份</h2></li>
                	<c:forEach var="year" items="${years }">
                    <li class="text text-info" style="margin-left:30px;"><a href="/nihao/SearchServlet?search=year&year=${year }">${year }</a></li>
                    </c:forEach>
                </ul>
            </div>
        </div><!-- /.row -->
    <div class="row" style="margin-left: 90px;margin-right: 90px"  >
        	<div class="col-lg-12">
            	<ul class="list-inline">
                	<li class="span text-left text-primary"><h2>国家</h2></li>
                	<c:forEach var="county" items="${countys }">
                    <li class="text text-info" style="margin-left:30px;"><a href="/nihao/SearchServlet?search=county&county=${county }">${county }</a></li>
                    </c:forEach>
                </ul>
            </div>
        </div><!-- /.row -->
<div class="container" >
	<div class="row" >
    	<h3><a class="text-muted" href="/nihao/GuessYouLikeServlet">热门邮票</a></h3>
        <hr>
    </div>
    <div class="row">
    <div class="list-group gallery">
        <c:forEach var="farStamp" items="${farList }" begin="0" end="3" varStatus="status">
    	<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                <a class="thumbnail fancybox" style="height: 240px" rel="ligthbox" href="/nihao/HomeServlet?id=${farStamp.id }&label=detail">
                    <img class="img-responsive" style="height: 210px;width: 250px" alt="" src="DisplayHomeServelt?id=${status.index }&label=far" />
                    <div class='text-right'>
                        <small class='text-muted'>${farStamp.name } </small>
                    </div> <!-- text-right / end -->
                </a>
            </div>
          </c:forEach> <!-- col-6 / end -->  
       </div>
    </div>
    <div class="row">
		<h3><a class="text-muted" href="/nihao/HotStampServlet">最新邮票</a></h3>    
        <hr>
        <div class="list-group gallery">
        <c:forEach var="hotStamp" items="${hotList }" begin="0" end="3" varStatus="status">
    	<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                <a class="thumbnail fancybox" style="height: 240px" rel="ligthbox" href="/nihao/HomeServlet?id=${hotStamp.id }&label=detail">
                    <img class="img-responsive" style="height: 210px;width: 250px" alt="" src="DisplayHomeServelt?id=${status.index }&label=new" />
                    <div class='text-right'>
                        <small class='text-muted'>${hotStamp.name } </small>
                    </div> <!-- text-right / end -->
                </a>
            </div>
          </c:forEach> <!-- col-6 / end -->
        </div>
    </div>
    <div class="row">
		<h3><a class="text-muted" href="/nihao/NewStampServlet">猜你邮票</a></h3>    
        <hr>
        <div class="list-group gallery">
        <c:forEach var="newStamp" items="${newList }" begin="0" end="3" varStatus="status">
    	<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                <a class="thumbnail fancybox" style="height: 240px" rel="ligthbox" href="/nihao/HomeServlet?id=${newStamp.id }&label=detail">
                    <img class="img-responsive" style="height: 210px;width: 250px" alt="" src="DisplayHomeServelt?id=${status.index }&label=hot" />
                    <div class='text-right'>
                        <small class='text-muted'>${newStamp.name }</small><br>
                        
                    </div> <!-- text-right / end -->
                </a>
            </div>
          </c:forEach> <!-- col-6 / end -->
        </div>
    </div>
</div>
<!-- InstanceEndEditable -->
<div class="footer">
  <div class="container">
    <p class="text-muted">@2014-南京大学软件学院</p>
  </div>
</div>
</body> 
</html>