<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
     
    <title>客户修改页面</title>
       
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
  </head>
  <body>
  	<form action="customer/updateCustomer.do"  method="post" name="form" onsubmit="return beforeSubmit(this);">
  		<input type="text" name="cusId" value="用户id" /> 
  		<table align="center">
  			<tr><td align="center" style="font-size: 25px" >用户修改界面</td></tr>
  			<tr><td align="center" >${message }</td></tr>
  			<tr>
  				<td>用户名:&nbsp;&nbsp;&nbsp;&nbsp;<input  type="text" name="cusName" value="请输入用户名!"/></td>
  			</tr>
  			<tr>
  				<td>密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;&nbsp;&nbsp;<input  type="text" name="cusPassword" value="请输入密码!"/></td>
  			</tr>
  			<tr>
  				<td>手机号:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="phone" value="请输入手机号!"/></td>
  			</tr>
  			<tr>
  				<td>邮&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email" value="请输入email!" /></td>
  			</tr>
  			<tr>
  				<td>住&nbsp;&nbsp;&nbsp;&nbsp;址:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cusAddress" value="请输入住址!" /></td>
  			</tr>
  			<tr>
  				<td>身份证:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cusIdCard" value="请输入用户名!" /></td>
  			</tr>
   			<tr>
  				<td colspan="2">
  				<input align="left" type="submit" value="提交">
  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  				<input align="middle" type="reset" value="取消" >
  				</td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>