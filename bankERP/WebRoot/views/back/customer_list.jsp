<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
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
	<script src="${ctx}/scripts/js/main.js"></script>
	

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
                               <a href="${ctx}/teller/returnShowData.do"><i class="fa fa-bar-chart-o"></i>查看柜员绩效</a>
                            </li>
                            <li>
                               <a href="${ctx}/teller/returnShowAccountData.do"><i class="fa fa-bar-chart-o"></i>查看卡注册情况</a>
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


		<!-- 用户登录窗口 -->
		<!--  <div class="cd-user-modal"> 
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

		<div class="cd-user-modal">
			<div class="cd-user-modal-container">
				<ul class="cd-switcher">
					<li><a href="#0">更改柜员信息</a></li>
				</ul>

				<div id="cd-login">
					<form class="cd-form">
						<p class="fieldset">
							<label>工号</label> <input
								class="full-width has-padding has-border" id="teller_no"
								type="text" rea>
						</p>

						<p class="fieldset">
							<label>姓名</label> <input
								class="full-width has-padding has-border" id="teller_name"
								type="text">
						</p>

						<p class="fieldset">
							<label>角色</label> <select
								class="full-width has-padding has-border">
								<option value="1">普通</option>
								<option value="2">高管</option>
								<option value="3">主管</option>
								<option value="4">财务</option>
							</select>
						</p>
						<input class="full-width has-padding has-border" type="submit"
							value="更改">
					</form>
				</div>


				<a href="#0" class="cd-close-form">关闭</a>
			</div>
		</div>









		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">

				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header">
							客户信息中心 <br> <br> <small>工号:${teller.tNumber}</small>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <small>姓名:${teller.tName}</small>
						</h1>
						<!-- <ol class="breadcrumb">
  <li><a href="#">Home</a></li>
  <li><a href="#">Library</a></li>
  <li class="active">Data</li>
</ol> -->
					</div>
				</div>


				<!-- /. ROW  -->

				<div class="row">
					<div class="col-md-6" style="width: 100%;text-align: center;">
						<!--    Striped Rows Table  -->
						<div class="panel panel-default">
							<div class="panel-heading">客户信息</div>
								${message }
							<div class="panel-body" style="text-align: center;">
								<div class="table-responsive">
									<div align="center">
										<form action="${ctx}/customer/customerlist.do" method="get">

											<div class="form-group input-group" style="width:100px ;">
												<span class="input-group-btn"> <input type="text"
													class="form-control" style="width:200px;"
													placeholder="用户身份证" name="cusIdCard" >
												</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <span
													class="input-group-btn">
													<button class="btn btn-default" type="submit">
														<i class="fa fa-search"></i>
													</button>
												</span>
											</div>

										</form>
									</div>
									<c:if test="${empty page.data}"> 没有任何记录.
								</c:if>
									<c:if test="${!empty page.data}">
										<table class="table table-striped table-bordered table-hover"
											style="text-align: center;">
											<tr align="center">
												<th style="text-align: center;">客户id</th>
												<th style="text-align: center;">客户名</th>
												<th style="text-align: center;">客户手机号</th>
												<th style="text-align: center;">客户身份证</th>
												<th style="text-align: center;">客户email</th>
												<th style="text-align: center;">客户住址</th>
												<th style="text-align: center;">客户状态</th>
												<th style="text-align: center;">客户注册时间</th>
												<th style="text-align: center;">客户最近登录时间</th>
												<th style="text-align: center;">开户柜员id</th>
												<th style="text-align: center;">操作</th>
											</tr>
											<c:forEach items="${page.data}" var="item">
												<tr align="center">
													<td style="text-align: center;">${item.cusId }</td>
													<td style="text-align: center;">${item.cusName }</td>
													<td style="text-align: center;">${item.cusPhone }</td>
													<td style="text-align: center;">${item.cusIdCard }</td>
													<td style="text-align: center;">${item.cusEmail }</td>
													<td style="text-align: center;">${item.cusAddress }</td>
													<td style="text-align: center;"><c:if
															test="${item.cusState==true}">正常</c:if><c:if test="${item.cusState==false}">失效</c:if></td>
													<td style="text-align: center;"><fmt:formatDate
															value="${item.cusCreateTime }"
															pattern="yyyy-MM-dd HH:mm:ss" /></td>
													<td style="text-align: center;"><fmt:formatDate
															value="${item.cusLoginTime }"
															pattern="yyyy-MM-dd HH:mm:ss" /></td>
													<td style="text-align: center;">${item.tId }</td>
													<td >
														<a href="${ctx}/customer/getCustomerState.do?cusId=${item.cusId}">修改信息</a>
													</td>

												</tr>
											</c:forEach>
										</table>
									</c:if>
									<div id="page_nav" align="center">
										<!-- 
													第一种情况，总页数小于等于5
														begin=1  end=总页数
													第二种情况，当前页 小于等于 3
														begin=1  end=5
													第三种情况，当前页 大于3
														begin=当前页-2   end=当前页+2
														如果end > 总页数
											 -->
										<c:choose>
											<c:when test="${page.totalPage <= 5}">
												<c:set var="begin" value="1"></c:set>
												<c:set var="end" value="${page.totalPage }"></c:set>
											</c:when>
											<c:when test="${page.pageNumber <= 3 }">
												<c:set var="begin" value="1"></c:set>
												<c:set var="end" value="5"></c:set>
											</c:when>
											<c:otherwise>
												<c:set var="begin" value="${page.pageNumber-2 }"></c:set>
												<c:set var="end" value="${page.pageNumber+2 }"></c:set>
												<c:if test="${end > page.totalPage }">
													<c:set var="end" value="${page.totalPage}"></c:set>
													<c:set var="begin" value="${end-4 }"></c:set>
												</c:if>
											</c:otherwise>
										</c:choose>
										<a href="${page.path }pageNumber=1">首页</a> <a
											href="${page.path }pageNumber=${page.pageNumber-1 }">上一页</a>

										<!-- 遍历页码 -->
										<c:forEach begin="${begin }" end="${end }" var="index">
											<c:choose>
												<c:when test="${page.pageNumber == index }">
													<span style="color: red">[${index}]</span>
												</c:when>
												<c:otherwise>
													<a href="${page.path }pageNumber=${index }">${index }</a>
												</c:otherwise>
											</c:choose>
										</c:forEach>
										<a href="${page.path }pageNumber=${page.pageNumber+1 }">下一页</a>
										<a href="${page.path }pageNumber=${page.totalPage }">末页</a> 共[
										<strong style="color:blue">${page.totalPage }</strong>]页，[ <strong
											style="color:blue">${page.totalRecord }</strong>]条记录
									</div>
								</div>
							</div>
						</div>
						<!--  End  Striped Rows Table  -->
					</div>
				</div>
			</div>
			<!--  End  Striped Rows Table  -->
		</div>
	</div>
	<!-- /. PAGE INNER  -->
	<!-- /. PAGE WRAPPER  -->
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
		function show() {

			//
		}
	</script>

</body>
</html>
