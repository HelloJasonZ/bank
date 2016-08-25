<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>业务操作</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Home</title>
<!-- Bootstrap Styles-->
<link href="${ctx}/style/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="${ctx}/style/assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="${ctx}/style/assets/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />
<!-- Custom Styles-->
<link href="${ctx}/style/assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href=${ctx}/style/style.css?family=Open+Sans ' rel='stylesheet'
	type='text/css' />

<link rel="stylesheet" type="text/css"
	href="${ctx}/style/home_login/main.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/style/home_login/style.css" />
<script src="${ctx}/style/assets/js/jquery-1.10.2.js"></script>
<script src="${ctx}/scripts/main.js"></script>

</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"> <strong><img
					alt="logo" src="${ctx}/images/logo_head.png"
					style="width:30px;height:30px;" />VIVEBEST</strong></a>
		</div>

		<ul class="nav navbar-top-links navbar-right">
			<!-- /.dropdown -->
			<li class="dropdown">
				<!--用jctl进行判断当前处理的客户的状态  --> <c:if test="${customer==NULL}">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"
						aria-expanded="false"> 当前无客户业务<i class="fa fa-user fa-fw"></i><i
						class="fa fa-caret-down"></i>
					</a>
					<ul class="dropdown-menu dropdown-user" id="main_nav">
						<li><a class="cd-signin" href="javascript:void(0);"><i
								class="fa fa-user fa-fw"></i> Login</a></li>
					</ul>
				</c:if> <c:if test="${customer!=NULL}">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"
						aria-expanded="false"> 当前进行业务客户 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						${customer.cusName} <i class="fa fa-user fa-fw"></i><i
						class="fa fa-caret-down"></i>
					</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="${ctx}/customer/showCustomer.do"><i
								class="fa fa-user fa-fw"></i>客户信息</a></li>
						<!-- <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li> -->
						<li class="divider"></li>
						<li><a href="javascript:void(0);" onclick="loginOut();"><i
								class="fa fa-sign-out fa-fw"></i>客户退出</a></li>
					</ul>
				</c:if> <!-- /.dropdown-user -->
			</li>
			<!-- /.dropdown -->
		</ul>
		</nav>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">

				<li><a href="${ctx}/teller/loginHome.do"><i
						class="fa fa-dashboard"></i>柜员信息中心</a></li>
				<li><a class="active-menu" href="chart.html"><i
						class="fa fa-bar-chart-o"></i>客户管理<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<c:if test="${customer!=null}">
							<li><a href="${ctx}/customer/showCustomer.do">客户信息</a></li>
							<li><a href="${ctx}/account/forwardAccounts.do">当前客户账号详情</a>
							</li>
							<li><a href="${ctx}/views/customer/update_customer.jsp">修改客户</a>
							</li>
						</c:if>
						<c:if test="${customer==null}">
							<li><a href="${ctx}/views/customer/add_customer.jsp">新增客户</a>
							</li>
						</c:if>
					</ul></li>
				<li><a href="#"><i class="fa fa-shopping-cart"></i>客户业务<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<c:if test="${customer!=null}">
							<li><a href="${ctx}/account/forwardaddAccount.do"><i
									class="fa fa-money"></i>开账户业务</a></li>
							<!-- <li>
                                <a href="#"><i class="fa fa-eye"></i>查看交易记录</a>
                             </li> -->
						</c:if>
					</ul></li>


				<c:if test="${teller!=null}">
					<li><a href="#"><i class="fa fa-gear fa-fw"></i>设置<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<c:if test="${customer==null}">
								<li><a href="#"><i class="fa fa-qrcode"></i>修改密码</a></li>
								<li><a href="${ctx}/teller/loginOut.do"><i
										class="fa fa-sign-out fa-fw"></i> Logout</a></li>
							</c:if>
						</ul></li>
				</c:if>
			</ul>
		</div>
		</nav>

		<!-- 用户登录窗口 -->
		<!-- <div class="cd-user-modal"> 
					<div class="cd-user-modal-container">
						<ul class="cd-switcher">
				<li><a href="#0">用户登录</a></li>
			</ul>

			<div id="cd-login"> 登录表单
				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-username" for="signin-username">用户名</label>
						<input class="full-width has-padding has-border" id="signin-username" type="text" placeholder="输入用户名">
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">密码</label>
						<input class="full-width has-padding has-border" id="signin-password" type="password"  placeholder="输入密码">
					</p>


					<p class="fieldset">
						<input class="full-width2" type="submit" value="登 录">
					</p>
				</form>
			</div>


			<a href="#0" class="cd-close-form">关闭</a>
		</div>
	</div> -->










		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header">业务& 操作</h1>
						<ol class="breadcrumb">
							<li><a href="#">户主</a></li>
							<li><a href="#">${customer.cusName}</a></li>
							<li><a href="${ctx}/account/forwardAccounts.do">返回</a></li>
						</ol>
					</div>
				</div>

				<!-- /. ROW  -->

				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<div class="panel panel-primary">
							<div class="panel-heading">状态:正常</div>
							<div class="panel-body">
								<p>卡号:${account.acNumber}</p>
								<div id="no_show" style="color:#ff8208;">
									<p>
										金额:****元 <a href="javascript:void(0)" onclick="show();">显示</a>
									</p>
								</div>
								<div id="show" style="color:#ff8208;display:none;">
									<p>
										金额:￥${account.acBalance}元 <a href="javascript:void(0)"
											onclick="noShow();">隐藏</a>
									</p>
								</div>
								<br> <img alt="招商银行" src="${ctx}/images/PocVLbJBf.png"
									width="135" height="40" seed="bankBindLogo-iE201305PocVLbJBf"
									smartracker="on"> <span class="card-type card-type-DC"
									style="background:url('${ctx}/images/MbrAtHLGP.png') no-repeat left top; text-indent: -9999px;position: absolute;width: 49px;height: 18px;overflow: hidden;">储蓄卡</span>

							</div>
							<div class="panel-footer">
								<a href="javascript:void(0);" onclick="put_money();">存款</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:void(0);"
									onclick="out_money();">取款</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
									href="javascript:void(0);" onclick="transfer_money();">转账</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
									href="${ctx}/transactions/list_ten.do?account_number=${account.acNumber}"
									target="_blank">查看交易流水</a>
							</div>
						</div>
					</div>
					<input type="text" id="hidden_acNumber" value="${account.acNumber}"
						hidden="hidden" />
					<div class="row">
						<div class="col-lg-12" style="width:50%;">
							<div class="panel panel-default">
								<div class="panel-heading">欢迎客户：奇奇</div>

								<!-- 存款div -->
								<div class="panel-body">
									<div class="row" id="put_money" style="display:none;">
										<div class="col-lg-6">
											<!--   <div class="form-group">
                                            <label>Text Input</label>
                                            <input class="form-control">
                                        </div> -->
											<div class="form-group">
												<label>输入存款金额/money</label>
												<div class="form-group input-group">
													<span class="input-group-addon">$</span> <input type="text"
														class="form-control" id="putMoney" name=""
														onkeyup="this.value=this.value.replace(/\D/g,'')"
														onafterpaste="this.value=this.value.replace(/\D/g,'')">
													<span class="input-group-addon">.00</span>
												</div>

												<button class="btn btn-primary" onclick="putMoneyAction();">存入</button>
											</div>
										</div>
									</div>
									<!-- end 存款div -->

									<!-- 取款div -->
									<div class="row" id="out_money" style="display:none;">
										<div class="col-lg-6">
											<!--   <div class="form-group">
                                            <label>Text Input</label>
                                            <input class="form-control">
                                        </div> -->
											<div class="form-group">
												<label>输入取款金额/money</label>
												<div class="form-group input-group">
													<span class="input-group-addon">$</span> <input type="text"
														class="form-control" id="outMoney" name=""
														onkeyup="this.value=this.value.replace(/\D/g,'')"
														onafterpaste="this.value=this.value.replace(/\D/g,'')">
													<span class="input-group-addon">.00</span>
												</div>


												<div class="form-group has-success">
													<label class="control-label" for="inputSuccess">支付密码/Password</label>
													<input type="password" class="form-control"
														id="outPassword" placeholder="支付密码/Password" maxlength="6"
														name="cusPassword">
												</div>

												<button class="btn btn-primary" onclick="outMoney();">取出</button>
											</div>
										</div>
									</div>

									<!-- end 取款 -->




									<!-- 转账div -->
									<div class="row" id="transfer_money" style="display:none;">
										<div class="col-lg-6">
											<!--   <div class="form-group">
                                            <label>Text Input</label>
                                            <input class="form-control">
                                        </div> -->
											<div class="form-group has-success">
												<label class="control-label" for="inputSuccess">目标账号</label>
												<input type="text" class="form-control" id="objectNumber"
													onkeyup="this.value=this.value.replace(/\D/g,'')"
													onafterpaste="this.value=this.value.replace(/\D/g,'')"
													maxlength="20" name="">
											</div>

											<div class="form-group">
												<label>输入存款金额/money</label>
												<div class="form-group input-group">
													<span class="input-group-addon">$</span> <input type="text"
														class="form-control" id="transferMoney" name=""
														onkeyup="this.value=this.value.replace(/\D/g,'')"
														onafterpaste="this.value=this.value.replace(/\D/g,'')">
													<span class="input-group-addon">.00</span>
												</div>

												<div class="form-group has-success">
													<label class="control-label" for="inputSuccess">支付密码/Password</label>
													<input type="password" class="form-control"
														id="transferPassword" placeholder="支付密码/Password"
														maxlength="6" name="cusPassword">
												</div>

												<button class="btn btn-primary"
													onclick="transferMoneyAction();">转出</button>
											</div>
										</div>
									</div>
									<!-- end 转账 -->



									<!-- /.panel-body -->
								</div>
								<!-- /.panel -->
							</div>
							<!-- /.col-lg-12 -->
						</div>

					</div>
					<!-- /. ROW  -->

					<!-- /. ROW  -->

					<!-- /. ROW  -->

					<!-- /. ROW  -->

				</div>
				<!-- /. PAGE INNER  -->
			</div>
			<!-- /. PAGE WRAPPER  -->
		</div>
		<!-- /. WRAPPER  -->
		<!-- JS Scripts-->
		<!-- jQuery Js -->

		<!-- Bootstrap Js -->
		<script src="${ctx}/style/assets/js/bootstrap.min.js"></script>

		<!-- Metis Menu Js -->
		<script src="${ctx}/style/assets/js/jquery.metisMenu.js"></script>
		<!-- Morris Chart Js -->
		<script src="${ctx}/style/assets/js/morris/raphael-2.1.0.min.js"></script>
		<script src="${ctx}/style/assets/js/morris/morris.js"></script>


		<script src="${ctx}/style/assets/js/easypiechart.js"></script>
		<script src="${ctx}/style/assets/js/easypiechart-data.js"></script>

		<script src="${ctx}/style/assets/js/Lightweight-Chart/jquery.chart.js"></script>

		<!-- Custom Js -->
		<script src="${ctx}/style/assets/js/custom-scripts.js"></script>

		<script src="${ctx}/scripts/main.js"></script>

		<script type="text/javascript">
			function put_money() {
				//隐藏
				document.getElementById("out_money").style.display = "none";
				document.getElementById("transfer_money").style.display = "none";
				//值赋予空
				document.getElementById("outMoney").value = "";
				document.getElementById("outPassword").value = "";
				document.getElementById("objectNumber").value = "";
				document.getElementById("transferMoney").value = "";
				document.getElementById("transferPassword").value = "";

				document.getElementById("put_money").style.display = "block";
				//金额清空
				document.getElementById("putMoney").value = "";
			}

			function out_money() {
				document.getElementById("out_money").style.display = "block";
				//金额清空
				document.getElementById("outPassword").value = "";

				document.getElementById("put_money").style.display = "none";
				document.getElementById("transfer_money").style.display = "none";

				document.getElementById("putMoney").value = "";
				document.getElementById("putPassword").value = "";
				document.getElementById("putMoney").value = "";
			}

			function transfer_money() {
				document.getElementById("transfer_money").style.display = "block";
				//隐藏
				document.getElementById("out_money").style.display = "none";
				document.getElementById("put_money").style.display = "none";
				//值赋予空
				document.getElementById("outMoney").value = "";
				document.getElementById("outPassword").value = "";
				document.getElementById("putMoney").value = "";
				document.getElementById("objectNumber").value = "";
				document.getElementById("transferMoney").value = "";
				document.getElementById("transferPassword").value = "";

				//金额清空
				document.getElementById("transferMoney").value = "";
			}

			//存钱
			function putMoneyAction() {
				var money = $("#putMoney").val();
				var acNum = $("#hidden_acNumber").val();
				if (money == "" || money.length == 0) {
					alert("金额不能空");
				} else if (money <= 0) {
					alert("金额不能小于0");
				} else {
					//put
					$
							.ajax({
								type : 'POST',
								data : {
									money : money,
									acNumber : acNum
								},
								dataType : 'json',
								url : '${ctx}/account/saveMoneySubmit.do',
								error : function(date) {
									alert(date.status);
								},
								success : function(data) {
									if (data == "0") {
										alert("用户登录失效");
										window.location.href = '${ctx}/veiws/teller/login.jsp';
									} else {
										alert("存款成功！");
										window.location.href = '${ctx}/account/forwardAction.do?acNumber='
												+ acNum;
									}
								}
							});
				}
			}

			//取钱
			function outMoney() {
				var money = $("#outMoney").val();
				var acNum = $("#hidden_acNumber").val();
				var password = $("#outPassword").val();
				if (money == "" || money.length == 0 || password == ""
						|| password.length == 0) {
					alert("输入框不能为空！");
				} else if (money <= 0) {
					alert("金额不能小于零");
				} else {
					$
							.ajax({
								type : 'POST',
								data : {
									"money" : money,
									"acNumber" : acNum,
									"password" : password
								},
								dataType : 'json',
								url : '${ctx}/account/getMoneySubmit.do',
								error : function(date) {
									alert(date.status);
								},
								success : function(data) {
									if (data == "0") {
										alert("用户失效！");
										window.location.href = '${ctx}/veiws/teller/login.jsp';
									} else if (data == "-1") {
										alert("密码不正确");
										window.location.href = '${ctx}/account/forwardAction.do?acNumber='
												+ acNum;
									} else if (data == "-2") {
										alert("取款数过大");
									} else if (data == "1") {
										alert("取款成功！");
										window.location.href = '${ctx}/account/forwardAction.do?acNumber='
												+ acNum;
									}
								}
							});
				}
			}

			//转账
			function GetRequest() {

				var url = location.search; //获取url中"?"符后的字串
				var theRequest = new Object();
				if (url.indexOf("?") != -1) {
					var str = url.substr(1);
					strs = str.split("&");
					for (var i = 0; i < strs.length; i++) {
						theRequest[strs[i].split("=")[0]] = (strs[i].split("=")[1]);
					}
				}
				return theRequest;
			}

			//转账
			function transferMoneyAction() {
				var objectNumber = $("#objectNumber").val();
				var password = $("#transferPassword").val();
				var transferMoney = $("#transferMoney").val();
				var acNumber = $("#hidden_acNumber").val();
				var Request = new Object();
				Request = GetRequest();
				var param1 = Request["acNumber"];

				if (objectNumber == "") {
					alert("目标账号不能空");
					return false;
				}

				if (objectNumber == param1) {
					alert("不能输入本卡的账号");
					window.location.href = '${ctx}/account/forwardAction.do?acNumber='
							+ acNumber;
					return false;
				}
				if (transferMoney == "") {
					alert("金额不能为空");
					return false;
				}

				if (transferMoney == 0) {
					alert("金额不能为0");
					return false;
				}

				if (objectNumber != "" && transferMoney != ""
						&& transferMoney.length != 0) {
					$.ajax({
								type : 'POST',
								data : {
									objectNumber : objectNumber,
									acNumber : acNumber,
									password : password,
									transferMoney : transferMoney
								},
								dataType : 'json',
								url : '${ctx}/account/transferAccountsSubmit.do',
								error : function(date) {
									alert(date.status);
									//	alert("账户不存在");
									//	window.location.href='${ctx}/account/transferAccountsSubmit.do?acNumber='+acNumber;
								},
								success : function(data) {
									if (data == "0") {
										alert("用户登录失效");
										window.location.href = '${ctx}/veiws/teller/login.jsp';
									} else if (data == "-1") {
										alert("密码不正确");
										window.location.href = '${ctx}/account/forwardAction.do?acNumber='
												+ acNumber;
									} else if (data == "1") {
										alert("转账成功");
										window.location.href = '${ctx}/account/forwardAction.do?acNumber='
												+ acNumber;
									} else if (data == "2") {
										alert("余额不足");
										window.location.href = '${ctx}/account/forwardAction.do?acNumber='
												+ acNumber;
									} else if (data == "3") {
										alert("账号不存在");
										window.location.href = '${ctx}/account/forwardAction.do?acNumber='
												+ acNumber;
									} else {
										alert("系统有误");
										window.location.href = '${ctx}/account/forwardAction.do?acNumber='
												+ acNumber;
									}
								}
							});
				}
			}
			function noShow() {
				document.getElementById("show").style.display = "none";
				document.getElementById("no_show").style.display = "block";
			}
			function show() {
				document.getElementById("no_show").style.display = "none";
				document.getElementById("show").style.display = "block";
			}

			function noShow() {
				document.getElementById("show").style.display = "none";
				document.getElementById("no_show").style.display = "block";
			}
			function show() {
				document.getElementById("no_show").style.display = "none";
				document.getElementById("show").style.display = "block";
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

			function show_login() {
				var userName = $("#signin-username").val();
				var password = $("#signin-password").val();
				if (userName.length == 0 || password.length == 0)

				{
					alert("输入框不能为空！");
					return null;
				} else {
					//ajax登陆
					$
							.ajax({
								type : 'POST',
								data : {
									"cusName" : userName,
									"cusPassword" : password
								},
								dataType : 'html',
								cache : false,
								url : '${ctx}/customer/customerLogin.do',
								error : function(responseText, textStatus,
										XMLHttpRequest) {
									alert(0);
								},
								success : function(data) {
									if (data == 0) {
										alert("密码错误或用户不存在！");
										window.location.href = '${ctx}/teller/loginHome.do';
										//window.location.reload();
									} else if (data == 1) {
										window.location.href = '${ctx}/teller/loginHome.do';
									}
								}
							});
				}
			}

			function loginOut() {
				$
						.ajax({
							type : 'POST',
							dataType : 'json',
							url : '${ctx}/customer/customerLoginOut.do',
							error : function(date) {
								alert(date.status);
							},
							success : function(data) {
								if (data == "1") {
									window.location.href = '${ctx}/views/teller/login.jsp';
								} else if (data == "0") {
									//window.location.href='${ctx}/teller/loginHome.do';
									window.location.href = '${ctx}/teller/loginHome.do';
								}
							}
						});

			}
		</script>
</body>
</html>
