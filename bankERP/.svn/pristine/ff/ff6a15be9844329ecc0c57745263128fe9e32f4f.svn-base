<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>后台登陆</title>
	 <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <!-- Bootstrap Styles-->
    <link href="${ctx}/style/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${ctx}/style/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="${ctx}/style/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${ctx}/style/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href=${ctx}/style/style.css?family=Open+Sans' rel='stylesheet' type='text/css' />
     
    <link rel="stylesheet" type="text/css" href="${ctx}/style/home_login/main.css" />
	<link rel="stylesheet" type="text/css" href="${ctx}/style/home_login/style.css" />
	<script src="${ctx}/style/assets/js/jquery-1.10.2.js"></script>
	<script src="${ctx}/scripts/main.js"></script>
     
<script type="text/javascript">
	window.onload=function(){
		$.getScript('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js', function(_result) {
            if (remote_ip_info.ret == '1') {
            var mess=remote_ip_info.province+"省"+remote_ip_info.city+"市";
            document.getElementById("address").value=mess;
                //alert(remote_ip_info.country + '<BR>省：' + remote_ip_info.province + '<BR>市：' + remote_ip_info.city + '<BR>区：' + remote_ip_info.district + '<BR>ISP：' + remote_ip_info.isp + '<BR>类型：' + remote_ip_info.type + '<BR>其他：' + remote_ip_info.desc);
            } else {
                alert('没有找到匹配的IP地址信息！');
                //没有网络手动输入
                document.getElementById("address").readOnly=false;
            }
        });
	
	}
   
	function check_phone()
	{
		var phone=$("#phone").val();
		if(phone==""||phone.length==0)
		{
			document.getElementById("show_phone").innerHTML="<span style='color:red;'>手机不能为空</span>";
		}
		else if(isPhone(phone)){
			//手机验证正确
		}
		else
		{
			//手机格式不正确
			document.getElementById("show_phone").innerHTML="<span style='color:red;'>手机格式不正确</span>";
		}

	}

	function check_email()
	{
		var email=$("#email").val();
		if(email==""||email.length==0)
		{
			document.getElementById("show_email").innerHTML="<span style='color:red;'>邮箱不能为空</span>";
		}
		else if(isEmail(phone)){
			//邮箱验证正确
		}
		else
		{
			//邮箱格式格式不正确
			document.getElementById("show_email").innerHTML="<span style='color:red;'>邮箱格式不正确</span>";
		}

	}



	//验证邮箱类型
		function isEmail(strEmail) {
			if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
			return true;
			else
				return false;
			}
			
			//校验手机号码
			//手机号码验证
		    function isPhone(value){
		    	var isPhone = /^([0-9]{3,4}-)?[0-9]{7,8}$/;
		        var isMob=/^((\+?86)|(\(\+86\)))?(13[012356789][0-9]{8}|15[012356789][0-9]{8}|18[02356789][0-9]{8}|147[0-9]{8}|1349[0-9]{7})$/;
		        if(isMob.test(value)||isPhone.test(value)){
		            return true;
		        }
		        else{
		            return false;
		        }
		    }

   </script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">
                
                <strong><img alt="logo" src="${ctx}/images/logo_head.png" style="width:30px;height:30px;"/>VIVEBEST</strong></a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                 <!--用jctl进行判断当前处理的客户的状态  -->
                 <c:if test="${customer==NULL}" >
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                             当前无客户业务<i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user" id="main_nav">
                        <li><a class="cd-signin"  href="javascript:void(0);"><i class="fa fa-user fa-fw"></i> Login</a>
                        </li>
                </ul>
                </c:if>
               
               
                <c:if test="${customer!=NULL}">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                      当前进行业务客户
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      ${customer.cusName}	<i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="${ctx}/customer/showCustomer.do" ><i class="fa fa-user fa-fw"></i>客户信息</a>
                        </li>
                        <!-- <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li> -->
                        <li class="divider"></li>
                        <li><a href="javascript:void(0);" onclick="loginOut();"><i class="fa fa-sign-out fa-fw"></i>客户退出</a>
                        </li>
                    </ul>
                    </c:if>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a class="active-menu" href="${ctx}/teller/loginHome.do"><i class="fa fa-dashboard"></i>柜员信息中心</a>
                    </li>
					<li>
                        <a  href="chart.html"><i class="fa fa-bar-chart-o"></i>客户管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                        <c:if test="${customer!=null}">
                            <li>
                                <a href="${ctx}/customer/showCustomer.do"> <i class="fa fa-user"></i>客户信息</a>
                            </li>
							<li>
                                <a href="${ctx}/account/forwardAccounts.do"><i class="fa fa-link"></i>当前客户账号详情</a>
                            </li>
                            <li>
                                <a href="${ctx}/views/customer/update_customer.jsp"><i class="fa fa-edit "></i>修改客户</a>
                            </li>
                        </c:if>
                        <c:if test="${customer==null}">
                            <li>
                                	<a href="${ctx}/customer/returnTakenSumbit.do"><i class="fa fa-fw fa-file"></i>新增客户</a>
                            </li>
                        </c:if>
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i>客户业务<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <c:if test="${customer!=null}">
							<li>
                                <a href="${ctx}/account/forwardaddAccount.do"><i class="fa fa-money"></i>开账户业务</a>
                            </li>
                            </c:if>
                        </ul>
                    </li>
					

					<c:if test="${teller!=null}">
                    <li>
                        <a href="#"><i class="fa fa-gear fa-fw"></i>设置<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                             	<c:if test="${customer==null}">
							 <li>
                                <a href="${ctx}/views/teller/pt_update_teller_password.jsp" ><i class="fa fa-qrcode"></i>修改密码</a>
                             </li>
                              <li>
                   			 <a href="${ctx}/teller/loginOut.do"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    			</li>
                    			</c:if>
                        </ul>
                    </li>
                    </c:if>
                </ul>
            </div>
        </nav>
        
        
        <!-- 用户登录窗口 -->
          <div class="cd-user-modal"> 
					<div class="cd-user-modal-container">
						<ul class="cd-switcher">
				<li><a href="#0">用户登录</a></li>
			</ul>

			<div id="cd-login"> <!-- 登录表单 -->
				 <form class="cd-form"> 
					<p class="fieldset">
						<label class="image-replace cd-username" for="signin-username">用户名</label>
						<input class="full-width has-padding has-border" id="signin-username" type="text" placeholder="输入手机号">
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">密码</label>
						<input class="full-width has-padding has-border" id="signin-password" type="password"  placeholder="输入密码">
					</p>


					<p class="fieldset">
						<!-- <button class="full-width2" type="submit" value="登 录"/> -->
						<!-- <button class="full-width2" onclick="login();" value="登 录"/> -->
						<button id="loginCou" class="btn btn-primary btn-lg" onclick="show_login();">登陆</button>
					</p>
				 </form>
			</div>


			<a href="#0" class="cd-close-form">关闭</a>
		</div>
	</div>
	
	
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
			 <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                          密码修改 <small>Update Teller</small>
                        </h1>
                    </div>
                </div>
              
                          
                                    
                                  <h4>密码修改</h4>
                                         <div class="form-group">
                                            <label>用户名称:${teller.tName}</label>
                                        </div> 
		                            
                                        <div class="form-group has-success">
                                            <label class="control-label" for="inputSuccess">密码/Password</label>
                                            <input type="password" class="form-control" id="inputSuccess" placeholder="登陆密码/Password" maxlength="18"
											name="tPassword">
                                        </div>
										 <div class="form-group has-success">
                                            <label class="control-label" for="inputSuccess">确认密码/Confirm Password</label>
                                            <input type="password" class="form-control" id="inputSuccess_f" placeholder="确认密码/Confirm Password" name="tPassword_1" maxlength="18">
                                        </div>
										<button type="button" class="btn btn-primary" onclick="update();">确认修改</button>
                                         
                                
                                <!-- /.col-lg-6 (nested) -->
                            </div>

                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
		
			</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
   <script src="${ctx}/style/assets/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="${ctx}/style/assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="${ctx}/style/assets/js/jquery.metisMenu.js"></script>
      <!-- Custom Js -->
    <script src="${ctx}/style/assets/js/custom-scripts.js"></script>
    
    <script type="text/javascript">
    	function update()
    	{
    		var p=$("#inputSuccess").val();
    		var p_1=$("#inputSuccess_f").val();
			if(p==""||p.length==0||p_1==""||p.length==0)
				{
				alert("密码不能为空");
				}
			else if(p!=p_1)
				{
				alert("密码不一致！");
				}
			else
				{
				$.ajax({
					 type:'POST',
	 				 dataType:'json',
	 				 data:{password:p},
	 				 url:'${ctx}/teller/updateTellerPassword.do',
	 				 error:function (date)
	 	            {
	 	           	 alert(date.status);
	 	            },
	 	            success: function(data){
	 	            				if(data=="1")
	 	            					{
	 	            					alert("密码修改成功，重新登陆");
	 	            					window.location.href='${ctx}/views/teller/login.jsp';
	 	            					}
	 	            				else if(data=="-1")
	 	            					{
	 	            					alert("修改失败");
	 	            					 window.location.href='${ctx}/teller/loginHome.do';
	 	            					}
	 	            				else if(data=="0")
	 	            					{
	 	            					alert("重新登陆");
	 	            					window.location.href='${ctx}/views/teller/login.jsp';
	 	            					}
					
	 	            }
					
				});
				}
    	}
    </script>
    
    <script type="text/javascript">
 	
 	/* $('#loginCou').on('click', function(event){
		var userName=$("#signin-username").val();
		var password=$("#signin-password").val();
		if(userName.length==0||password.length==0)

			{
			alert("输入框不能为空！");
			return null;
			}
		else
			{
		//ajax登陆
		$.ajax({
			 type:'POST',
			 data:{"cusName":userName,"cusPassword":password},
			 dataType:'html',
			 cache:false,
			 url:'${ctx}/customer/customerLogin.do',
			 error:function (responseText, textStatus, XMLHttpRequest)
            {
            },
            success: function(data){
            	if(data=="0")
          		 {
          		 alert("密码错误或用户不存在！");
          		window.location.href='${ctx}/teller/loginHome.do';
          		 }
          	 else if(data=="1")
          		 { alert("存在！");
          		 window.location.href='${ctx}/teller/loginHome.do';
          		 }
            }
		  });
			}
 	}); */
 	
 	function show_login()
	{
		var userName=$("#signin-username").val();
	var password=$("#signin-password").val();
	if(userName.length==0||password.length==0)

		{
		alert("输入框不能为空！");
		return null;
		}
	else
		{
	//ajax登陆
	$.ajax({
		 type:'POST',
		 data:{"cusName":userName,"cusPassword":password},
		 dataType:'html',
		 cache:false,
		 url:'${ctx}/customer/customerLogin.do',
		 error:function (responseText, textStatus, XMLHttpRequest)
        {window.location.href='${ctx}/teller/loginHome.do';
        },
        success: function(data){
        	if(data==0)
      		 {
      		 alert("密码错误或用户不存在！");
      		window.location.href='${ctx}/teller/loginHome.do';
      		//window.location.reload();
      		 }
      	 else if(data==1)
      		 { 
      		 window.location.href='${ctx}/teller/loginHome.do';
      		 }
        }
	  });
		}
	}
 	
 	function loginOut()
 	{
 			$.ajax({
 				 type:'POST',
 				 dataType:'json',
 				 url:'${ctx}/customer/customerLoginOut.do',
 				 error:function (date)
 	            {
 	           	 alert(date.status);
 	            },
 	            success: function(data){
 	            	if(data=="1")
 	            		{
 	            		window.location.href='${ctx}/views/teller/login.jsp';
 	            		}
 	            	else if(data=="0")
 	            		{
 	            		//window.location.href='${ctx}/teller/loginHome.do';
 	            		window.location.reload();
 	            		}
 	            }
 			  });
 			
 	}
 	</script>
   
</body>
</html>
