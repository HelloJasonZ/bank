<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
     
    <title>客户注册页面</title>
       
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
  	<script language="javaScript">
	function  beforeSubmit(form){
		if(form.cusName.value==''){
			alert("用户名不能为空");
			form.cusName.focus();
			return false;
		}
		if(form.cusPassword.value==''){
			alert("密码不能为空");
			form.cusPassword.focus();
			return false;
		}		
		if(form.email.value==''){
			alert("邮箱不能为空");
			form.email.focus();
			return false;
		}
		if(form.phone.value==''){
			alert("手机号码不能为空");
			form.phone.focus();
			return false;
		}
		var Password = /^([a-zA-Z])+([0-9])+$/;
		var filter  = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		var phoneChoick = /^([0-9]{11})+$/;
  		if(Password.test(form.cusPassword.value)==false){
  			alert("密码需要字母数字混合!");
  			return false; 
  		}
  		if (filter.test(form.email.value)==false) { 
  			alert("您的电子邮件格式不正确!");
  			return false; 
  		}
  		if (phoneChoick.test(form.phone.value)==false){
  			alert("您输入的手机号有误，手机号为11位数!");
  			return false;
  		}
  		return true;
	}
	</script>
  </head>
  <body>
  	<form action="customer/addCustomer.do"  method="post" name="form" onsubmit="return beforeSubmit(this);">
  		<table align="center">
  			<tr><td align="center" style="font-size: 25px" >用户注册界面</td></tr>
  			<tr><td align="center" >${message }</td></tr>
  			<tr>
  				<td>用户名:&nbsp;&nbsp;&nbsp;&nbsp;<input  type="text" name="cusName" value="请输入用户名!"/></td>
  			</tr>
  			<tr>
  				<td>密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;&nbsp;&nbsp;<input  type="text" name="cusPassword" value="密码不能为空"/></td>
  			</tr>
  			<tr>
  				<td>手机号:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="phone" value="手机号不能为空"/></td>
  			</tr>
  			<tr>
  				<td>邮&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email" value="邮箱不能为空" /></td>
  			</tr>
  			<tr>
  				<td>住&nbsp;&nbsp;&nbsp;&nbsp;址:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cusAddress" value="住址不能为空" /></td>
  			</tr>
  			<tr>
  				<td>身份证:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cusIdCard" value="身份证不能为空" /></td>
  			</tr>
   			<tr>
   			<tr>
  				<td>柜员id:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="tId " value="请柜员id" /></td>
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