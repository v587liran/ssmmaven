<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>健康监测数据录入</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
    <div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li>
				<a href="#">首页</a>
			</li>
			<li>
				<a href="#">健康管理</a>
			</li>
			<li>
				<a href="#">录入健康监测数据</a>
			</li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle"><span>健康监测数据监测</span></div>
		<ul class="forminfo">
			<li>
				<label>客户姓名<b>*</b></label>
				<input name="" type="text" class="dfinput" />
				<i>填写用户真实姓名</i>
			</li>

			<li><label>关键字</label><input name="" type="text" class="dfinput" /><i>多个关键字用,隔开</i></li>
			<li><label>是否审核</label><cite><input name="" type="radio" value="" checked="checked" />是&nbsp;&nbsp;&nbsp;&nbsp;<input name="" type="radio" value="" />否</cite></li>
			<li><label>引用地址</label><input name="" type="text" class="dfinput" value="http://www..com/html/uidesign/" /></li>
			<li><label>文章内容</label><textarea name="" cols="" rows="" class="textinput"></textarea></li>
			<li><label>&nbsp;</label><input name="" type="button" class="btn" value="确认保存" /></li>
		</ul>
	</div>
  </body>
</html>
