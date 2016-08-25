<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>后台登陆</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${ctx}/style/css/style.css" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="${ctx}/scripts/js/jquery.js"></script>
<script src="${ctx}/scripts/js/verificationNumbers.js"></script>
<script src="${ctx}/scripts/js/Particleground.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //测试提交，对接程序删除即可
  $(".submit_btn").click(function(){
	  //判断
	  var userName=$("#userName").val();
	  var password=$("#password").val();
	  var s=$("#J_codetext").val();
	  if(userName==""||userName.length==0||password==""||password.length==0)
		  {
		  alert("输入框不能为空！");
		  return false;
		  }
	  if(s==""||s.length==0)
		  {
		  alert("请输入正确验证码");
		  return false;
		  }
	  else
		  {
		  //正确
		  //ajax登陆事件
		  $.ajax({
			 type:'POST',
			 data:{userName:userName,password:password},
			 dataType:'json',
			 url:'${ctx}/teller/loginTeller.do',
			 error:function (date)
             {
            	 alert(date.status);
             },
             success: function(data){
            	 if(data=="0")
            		 {
            		 alert("密码错误或用户不存在！");
            		 window.location.reload();
            		 }
            	 else if(data=="-1")
            	 {
            		 alert("用户失效，请联系管理员！");
            		 window.location.reload();
            	 }
            	 else if(data=="1")
            		 {
            		 window.location.href='${ctx}/teller/loginHome.do';
            		 }
             }
		  });
		  
		  }
	 
	  });
});
</script>
  </head>
  
  <body>
    <dl class="admin_login">
 <dt>
  <strong>银行ERP后台管理系统</strong>
  <em>Bank Management System</em>
 </dt>
 <dd class="user_icon">
  <input type="text" placeholder="账号" class="login_txtbx" id="userName"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password" placeholder="密码" class="login_txtbx" id="password"/>
 </dd>
 <dd class="val_icon">
  <div class="checkcode">
    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx" onblur="validate();">
    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
  </div>
  <!-- <input type="button" value="验证码核验" class="ver_btn" onClick="validate();"> -->
 </dd>
 <dd>
  <input type="submit" value="立即登陆" class="submit_btn"/>
 </dd>
 <dd>
  <p>© 2015-2016 VIVEBEST</p>
  <p>维密组</p>
 </dd>
</dl>
  </body>
</html>
