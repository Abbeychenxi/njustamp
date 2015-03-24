<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<nav class="navbar navbar-default navbar-static-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="/nihao/AlbumServlet?label=album">在线邮册</a> </div>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/nihao/HomeServlet?label=home">首页</a></li>
        <li><a href="/nihao/AlbumServlet?label=album">邮册</a></li>
        <li><a href="/nihao/PersonHomeServlet">个人主页</a></li>
        <li><a href="/nihao/OnLineStamp/retrieve.jsp">检索</a></li>
        <li>
          <form class="navbar-form" role="search" action="/nihao/SearchServlet" method="POST" id="search-form">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="输入邮票名" name="text" style="padding:6px 6px;">
              <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
              </div>
            </div>
          </form>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <!-- <li><a href="../navbar">Default</a></li>-->
        <li class="active"><a href="/nihao/OnLineStamp/login.jsp">登陆</a></li>
        <li><a href="navbar-fixed-top">注销</a></li>
      </ul>
    </div>
    <!--/.nav-collapse --> 
  </div>
</nav>