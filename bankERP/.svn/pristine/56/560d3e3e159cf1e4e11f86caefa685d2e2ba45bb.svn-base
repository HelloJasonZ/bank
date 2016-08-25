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
                
                <strong><img alt="" src="${ctx}/images/logo_head.png" style="width:30px;height:30px;"/>VIVEBEST</strong></a>
            </div>

            <!-- <ul class="nav navbar-top-links navbar-right">
                /.dropdown
                <li class="dropdown">
                 用jctl进行判断当前处理的客户的状态 
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                             当前无客户业务<i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user" id="main_nav">
                        <li><a class="cd-signin" href="#0"><i class="fa fa-user fa-fw"></i> Login</a>
                        </li>
                </ul>
                
               <nav class="main_nav">
					<ul >
						<li><a class="cd-signin" href="#0"><i class="fa fa-user fa-fw"></i> Losgin</a></li>
					</ul>
				</nav>
               
               
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                      当前进行业务客户	<i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    /.dropdown-user
                </li>
                /.dropdown
            </ul> -->
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
             <ul class="nav" id="main-menu">
                  <c:if test="${teller.autId==2}">
                  	 <li>
                        <a  href="ui-elements.html"><i class="fa fa-desktop"></i>主管业务<span class="fa arrow"></span></a>
                         	<ul class="nav nav-second-level">
                         	<li>
                            <a  href="${ctx}/teller/loginHome.do"><i class="fa fa-user"></i>个人信息</a>
                            </li>  
                            <li>
                            <a  href="ui-elements.html"><i class="fa fa-desktop"></i>柜员管理<span class="fa arrow"></span></a>
                            	<ul class="nav nav-third-level" style="font-size: 14px">
                                	 <li> <a href="${ctx}/teller/returnTakenSumbit.do"><i class="fa fa-desktop"></i>新增柜员</a></li>

                               	</ul>
                               <!--  <ul class="nav nav-third-level" style="font-size: 14px">
                                	<li><a href="chart.html"><i class="fa fa-edit "></i>柜员信息修改</a></li>
                                </ul> -->
                            </li>
                            </ul>
                            </li>
                            
                            <li>
                        <a  href="ui-elements.html"><i class="fa fa-user"></i>客户管理<span class="fa arrow"></span></a>
                         	<ul class="nav nav-second-level" style="font-size: 14px">  
                            <li>
                                <a class="chart.html" href="${ctx}/customer/customerlist.do"><i class="fa fa-users"></i>客户信息维护和管理</a>
                    			 </li>
                            </ul>
                            </li>
                            
                            <li>
                        <a  href="ui-elements.html"><i class="fa fa-money"></i>账户管理<span class="fa arrow"></span></a>
                         	<ul class="nav nav-second-level" style="font-size: 14px">  
                            <li>
                               <a class="chart.html" href="${ctx}/account/list.do"><i class="fa fa-money"></i>查看账户信息</a>
                    			 </li>
                            </ul>
                            </li>
                            
                            <li>
                        		<a href="#"><i class="fa fa-sitemap"></i>查询业务<span class="fa arrow"></span></a>
                        		<ul class="nav nav-second-level">
							 	<li>
                                	<a href="${ctx}/transactions/list.do"><i class="fa fa-eye"></i>查看交易记录</a>
                             	</li>
                              	<li>
                                 <a href="${ctx}/transferInfo/list.do"><i class="fa fa-link"></i>查看转账情况</a>
                              	</li>
                        		</ul>
                    		</li>
                            
						</c:if>
						<!-- 柜员权限管理 -->
						<c:if test="${teller.autId==3}">
						<li>
                        <a  href="ui-elements.html"><i class="fa fa-desktop"></i>经理业务<span class="fa arrow"></span></a>
                        	<ul class="nav nav-second-level">
                        	<li>
                        		<a href="chart.html"><i class="fa fa-desktop"></i>柜员管理<span class="fa arrow"></span></a>
                        		<ul  class="nav nav-third-level" style="font-size: 14px">
                               		<li><a href="${ctx}/teller/showTeller.do"><i class="fa fa-bar-chart-o"></i>柜员权限管理</a></li>
                               </ul>
                    		</li>
                            <li>
                               <a href="chart.html"><i class="fa fa-bar-chart-o"></i>增加权限等级</a>
                            </li>
                       </ul>
                     </li>
                     </c:if>
					<c:if test="${teller!=null}">
                    <li>
                        <a href="#"><i class="fa fa-gear fa-fw"></i>设置<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
							 <li>
                                <a href="${ctx}/views/teller/update_teller_password.jsp" ><i class="fa fa-qrcode"></i>修改密码</a>
                             </li>
                              <li>
                   			 <a href="${ctx}/teller/loginOut.do"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    			</li>
                        </ul>
                    </li>
                    </c:if>
                </ul>
            </div>
        </nav>
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
   
</body>
</html>
