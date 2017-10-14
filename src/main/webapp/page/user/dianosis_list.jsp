<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>健康监测数据表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$(".click").click(function() {
				$(".tip").fadeIn(200);
			});

			$(".tiptop a").click(function() {
				$(".tip").fadeOut(200);
			});

			$(".sure").click(function() {
				$(".tip").fadeOut(100);
			});

			$(".cancel").click(function() {
				$(".tip").fadeOut(100);
			});

		});
	</script>
	
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
				<a href="#">数据列表</a>
			</li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">

			<ul class="toolbar">
				<li>
					<a href="${pageContext.request.contextPath }/page/user/custom_insert.jsp">
						<span><img src="images/t01.png" /></span>添加
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath }/page/user/custom_update.jsp?id=">
						<span><img src="images/t02.png" /></span>修改
					</a>
				</li>
				<li><span><img src="images/t03.png" /></span>删除</li>
			</ul>

			<ul class="toolbar1">
				<li>
					<span>
        		<select style="height: 23px;width: 50px;">
        			<option>姓名</option>
        			<option>ID</option>
        		</select>
       		</span>
					<span><input type="text" name="" value="" style="height:23px;"/></span>
					<span><button style="height: 23px;width: 40px;">搜索</button></span>
				</li>
			</ul>

		</div>

		<table class="tablelist">
			<thead>
				<tr>
					<th><input name="" type="checkbox" value="" /></th>
					<th>ID<i class="sort"><img src="images/px.gif" /></i></th>
					<th>客户ID</th>
					<th>客户姓名</th>
					<th>创建时间</th>
					<th>最后一次修改时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input name="" type="checkbox" value="" /></td>
					<td>000000000000001</td>
					<td>20130908</td>
					<td>王大锤</td>
					<td>2013-09-09 15:05</td>
					<td>2013-09-09 15:05</td>
					<td>
						<a href="${pageContext.request.contextPath }/page/user/dianosisType_insert.jsp" class="tablelink">录入数据</a> &nbsp;&nbsp;
						<a href="#" class="tablelink">查看详情</a> &nbsp;&nbsp;
						<a href="#" class="tablelink">修改</a> &nbsp;&nbsp;
					</td>
				</tr>

				<tr>
					<td><input name="" type="checkbox" value="" /></td>
					<td>000000000000002</td>
					<td>20130908</td>
					<td>王大锤</td>
					<td>2013-09-09 15:05</td>
					<td>2013-09-09 15:05</td>
					<td>
						<a href="#" class="tablelink">录入数据</a> &nbsp;&nbsp;
						<a href="#" class="tablelink">查看</a> &nbsp;&nbsp;
						<a href="#" class="tablelink">修改</a> &nbsp;&nbsp;
					</td>
				</tr>

			</tbody>
		</table>

		<div class="pagin">
			<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
			<ul class="paginList">
				<li class="paginItem">
					<a href="javascript:;"><span class="pagepre"></span></a>
				</li>
				<li class="paginItem">
					<a href="javascript:;">1</a>
				</li>
				<li class="paginItem current">
					<a href="javascript:;">2</a>
				</li>
				<li class="paginItem">
					<a href="javascript:;">3</a>
				</li>
				<li class="paginItem">
					<a href="javascript:;">4</a>
				</li>
				<li class="paginItem">
					<a href="javascript:;">5</a>
				</li>
				<li class="paginItem more">
					<a href="javascript:;">...</a>
				</li>
				<li class="paginItem">
					<a href="javascript:;">10</a>
				</li>
				<li class="paginItem">
					<a href="javascript:;"><span class="pagenxt"></span></a>
				</li>
			</ul>
		</div>

		<div class="tip">
			<div class="tiptop"><span>提示信息</span>
				<a></a>
			</div>

			<div class="tipinfo">
				<span><img src="images/ticon.png" /></span>
				<div class="tipright">
					<p>是否确认对信息的修改 ？</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />&nbsp;
				<input name="" type="button" class="cancel" value="取消" />
			</div>

		</div>

	</div>

	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>
  </body>
</html>
