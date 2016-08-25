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
<link href="${ctx}/style/assets/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />
<!-- Custom Styles-->
<link href="${ctx}/style/assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href=${ctx}/style/style.css?family=Open+Sans' rel='stylesheet' type='text/css' />

<link rel="stylesheet" type="text/css"
	href="${ctx}/style/home_login/main.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/style/home_login/style.css" />
<script src="${ctx}/style/assets/js/jquery-1.10.2.js"></script>
<script src="${ctx}/scripts/js/main.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/My97DatePicker/WdatePicker.js"></script>

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










		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">


				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header" align="center">
							<small>工号:${teller.tNumber}</small>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <small>姓名:${teller.tName}</small> <br>
							<br>
							<div align="center">
								<font size="10">转账流水单 </font>
							</div>

						</h1>
					</div>
				</div>


				<!-- /. ROW  -->
				<c:if test="${empty page.data}">
					<h1 align="center">该账号没有任何记录</h1> <br>
				<h2 align="center"><a href="${ctx}/transferInfo/list.do">返回</a> </h2>	
				</c:if>

				<c:if test="${!empty page.data}">

					<div class="row">
						<div class="col-md-6" style="width: 100%;text-align: center;">
							<!--    Striped Rows Table  -->
							<div class="panel panel-default">
								<div class="panel-heading"></div>
								<div class="panel-body" style="text-align: center;">
									<div class="table-responsive">
										<div align="center">

											<form action="${ctx}/transferInfo/listByDate.do" method="get">

												<div class="form-group input-group" style="width:100px;">
														<span class="input-group-btn">
															<input type="text" class="form-control"
																style="width:200px;" placeholder="账号" name="tiOutNum"
																value="${param.tiOutNum }"> 
														</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
														<span class="input-group-btn"> 
															<input type="text"
															class="form-control" style="width:200px;"
															placeholder="开始日期(YYYY-MM-DD)" name="minDate"
															value="${param.minDate }" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'%y-%M-%d'})"> &nbsp &nbsp
														</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
														<span class="input-group-btn">
															 <input type="text"
															class="form-control" style="width:200px;"
															placeholder="终止日期(YYYY-MM-DD)" name="maxDate"
															value="${param.maxDate }" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'%y-%M-%d'})"> &nbsp&nbsp
														</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
														<span class="input-group-btn">
															<button class="btn btn-default" type="submit">
																<i class="fa fa-search"></i>
															</button>
														</span>
												</div>
												<%--  <input
													type="text" name="minDate" value="${param.minDate}">
												-- <input value="${param.maxDate }" type="text"
													name="maxDate"> <input type="submit" value="查询" /> --%>
												<%-- 
												<div class="form-group input-group">
													<div>
														<label><font size="4">账号/Account: &nbsp</font></label> <input
															type="text" class="form-control" style="width:100px;"
															placeholder="账号" name="tiOutNum"
															value="${param.tiOutNum }">
													</div>
													<div>
														<label><font size="4">日期(YYYY-DD-MM)/Date:
																&nbsp</font></label> <input type="text" class="form-control"
															style="width:100px;" placeholder="开始日期" name="minDate"
															value="${param.minDate }"> &nbsp-- &nbsp<input
															type="text" class="form-control" style="width:100px;"
															placeholder="截止日期" name="maxDate"
															value="${param.maxDate }"> &nbsp &nbsp
													</div>
													<button type="submit" class="btn btn-primary">查询</button>
												</div> --%>
											</form>


										</div>
										<table class="table table-striped table-bordered table-hover"
											style="text-align: center;">
											<thead style="text-align: center;">
												<tr style="text-align: center;">
													<th style="text-align: center;">转账流水号</th>
													<th style="text-align: center;">转出账号</th>
													<th style="text-align: center;">转入账号</th>
													<th style="text-align: center;">转账金额</th>
													<th style="text-align: center;">转账时间</th>
													<th style="text-align: center;">转账状态</th>
													<th style="text-align: center;">转账结果</th>
											</thead>
											<tbody>
												<c:forEach items="${page.data}" var="item">
													<tr>
														<td style="text-align: center;">${item.trNumber }</td>
														<td style="text-align: center;">${item.tiOutNum }</td>
														<td style="text-align: center;">${item.tiInNum }</td>
														<td style="text-align: center;">${item.tiBalance }</td>
														<td style="text-align: center;"><fmt:formatDate
																value="${item.tiTime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
														<td style="text-align: center;"><c:if
																test="${item.tiState==true}">成功</c:if> <c:if
																test="${item.tiState==false}">失败</c:if></td>
														<td style="text-align: center;"><c:if
																test="${item.tiState==false}">${item.tiResult}</c:if></td>
													</tr>
												</c:forEach>


											</tbody>
										</table>
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
											<a href="${page.path }pageNumber=${page.totalPage }">末页</a>
											共${page.totalPage }页，${page.totalRecord }条记录
										</div>
									</div>
								</div>
							</div>
							<!--  End  Striped Rows Table  -->
						</div>
					</div>
				</c:if>
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
			function show() {

				//
			}
		</script>
</body>
</html>



