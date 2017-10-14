<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'custom_insert.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	  
	<script type="text/javascript" src="js/Region.js"></script>
  </head>
  
  <body>
    <div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li>
				<a href="#">首页</a>
			</li>
			<li>
				<a href="#">客户管理</a>
			</li>
			<li>
				<a href="#">客户添加</a>
			</li>
		</ul>
	</div>

	<div class="formbody">

		<div  class="formtitle"><span>客户添加</span></div>
		
<form id="formList" name="reg_testdate" action="${pageContext.request.contextPath }/custom/customInsert.action" method="post" enctype="multipart/form-data">	
		
		<ul  class="forminfo">
			<li>
				<label>客户姓名<b>*</b></label>
				<input name="name" type="text" class="dfinput" />
				<i>客户真实姓名</i>
			</li>
			<li>
				<label>用户名<b>*</b></label>
				<input name="customname" type="text" class="dfinput" />
				
			</li>
			<li>
				<label>用户密码<b>*</b></label>
				<input name="password" type="text" class="dfinput" />
			</li>
			
			<li>
				<label>客户性别<b>*</b></label>
	        　　　　<h3>
	        	男 &nbsp;<input  type="radio" value="0" name="sex"/>
	        　　　　	女 &nbsp;<input  type="radio" value="1" name="sex"/>
	        </h3>
			</li>
			<li>
				<label>出生日期<b>*</b></label>
			
			  <select name="YYYY" onchange="YYYYDD(this.value)">
			    <option value="">请选择 年</option>
			  </select>
			  <select name="MM" onchange="MMDD(this.value)">
			    <option value="">选择 月</option>
			  </select>
			  <select name="DD">
			    <option value="">选择 日</option>
			  </select>
			</li>
			
			
			
			
			<li>
				<label>家庭住址<b>*</b></label>
				省&nbsp;&nbsp;<select id="sel_Province" style="width:80px" name="sel_Province">
				</select>  
				 市&nbsp;&nbsp;<select id="sel_City" name="sel_City">   
				</select>  
				县/区&nbsp;&nbsp;<select id="sel_County" name="sel_County">
				</select>
				<input type="text" name="" value="详细地址" style="border:1px solid black;" onfocus="javascript:if(this.value=='详细地址')this.value='';"/>
			</li>
			
			
			
			<li>
				<label>手机号<b>*</b></label>
				<input name="phone" type="text" class="dfinput" />
			</li>
			<li>
				<label>照片<b>*</b></label>
				<input name="" type="file"  />
			</li>
			<li>
				<label>微   信<b></b></label>
				<input name="" type="text" class="dfinput" />
				
			</li>
			<li>
				<label>邮   箱<b></b></label>
				<input name="" type="text" class="dfinput" />
				
			</li>
			</ul>
			<input type="submit" value="提交" onclick="sex()">
		</form>
	</div>
	
	
	<!--传值  --> 
	<script type="text/javascript">
		function sex(){
			var sexValue= document.getElementById("formList").sex;
			for(var i = 0;i<sexValue.length;i++){
				if(sexValue[i].checked){
					sex=sexValue[i].value;
				}
			}
			
			
		};
	
	</script>
	
	<!--时间JavaScript --> 
	<script language="JavaScript">
	
   function YYYYMMDDstart()   
   {   
           MonHead = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];   
    
           //先给年下拉框赋内容   
           var y  = new Date().getFullYear();   
           for (var i = (y-100); i < (y+100); i++) //以今年为准，前30年，后30年   
                   document.reg_testdate.YYYY.options.add(new Option(" "+ i +" 年", i));   
    
           //赋月份的下拉框   
           for (var i = 1; i < 13; i++)   
                   document.reg_testdate.MM.options.add(new Option(" " + i + " 月", i));   
    
           document.reg_testdate.YYYY.value = y;   
           document.reg_testdate.MM.value = new Date().getMonth() + 1;   
           var n = MonHead[new Date().getMonth()];   
           if (new Date().getMonth() ==1 && IsPinYear(YYYYvalue)) n++;   
                writeDay(n); //赋日期下拉框Author:meizz   
           document.reg_testdate.DD.value = new Date().getDate();   
   }   
   if(document.attachEvent)   
       window.attachEvent("onload", YYYYMMDDstart);   
   else   
       window.addEventListener('load', YYYYMMDDstart, false);   
   function YYYYDD(str) //年发生变化时日期发生变化(主要是判断闰平年)   
   {   
           var MMvalue = document.reg_testdate.MM.options[document.reg_testdate.MM.selectedIndex].value;   
           if (MMvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
           var n = MonHead[MMvalue - 1];   
           if (MMvalue ==2 && IsPinYear(str)) n++;   
                writeDay(n)   
   }   
   function MMDD(str)   //月发生变化时日期联动   
   {   
        var YYYYvalue = document.reg_testdate.YYYY.options[document.reg_testdate.YYYY.selectedIndex].value;   
        if (YYYYvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
        var n = MonHead[str - 1];   
        if (str ==2 && IsPinYear(YYYYvalue)) n++;   
       writeDay(n)  
   }   
   function writeDay(n)   //据条件写日期的下拉框   
   {   
           var e = document.reg_testdate.DD; optionsClear(e);   
           for (var i=1; i<(n+1); i++)   
                e.options.add(new Option(" "+ i + " 日", i));   
   }   
   function IsPinYear(year)//判断是否闰平年   
   {     return(0 == year%4 && (year%100 !=0 || year%400 == 0));}   
   function optionsClear(e)   
   {   
        e.options.length = 1;   
   }   
   //--></script>
   <!--地域JavaScript -->
   <script>  
AreaSelector().init();  
  
function getValue(id)  
{  
    var sel = document.getElementById(id);  
    if  (sel && sel.options)  
    {  
        alert(sel.options[sel.selectedIndex].value);  
    }  
}  
function getText(id)  
{  
    var sel = document.getElementById(id);  
    if  (sel && sel.options)  
    {  
        alert(sel.options[sel.selectedIndex].text);  
    }  
}  
</script>

 
  </body>
  	
</html>
