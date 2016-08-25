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
<link href='http://fonts.useso.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />

<link rel="stylesheet" type="text/css"
	href="${ctx}/style/home_login/main.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/style/home_login/style.css" />
<script src="${ctx}/style/assets/js/jquery-1.10.2.js"></script>
<script src="${ctx}/scripts/js/main.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/My97DatePicker/WdatePicker.js"></script>

</head>

<body>
	

				

				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header" align="center">
						<div align="right">
							<small>工号:${teller.tNumber}</small>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <small>姓名:${teller.tName}</small> <br>
							<c:if test="${!empty transactionsMap}">
							<small><a href="${ctx}/transactions/downToExcel.do?DownNumber=${param.account_number}" target="_blank">打印</a></small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</c:if>
						</div>
							<div align="center">
								<font size="10">交易流水单 </font>
							</div>

						</h1>
					</div>
				</div>


				<!-- /. ROW  -->
				<c:if test="${empty transactionsMap}">
					<h1 align="center">该账号没有任何记录</h1> <br>
				<%-- <h2 align="center"><a href="${ctx}/transactions/list.do">返回</a> </h2>	 --%>
				</c:if>

				<c:if test="${!empty transactionsMap}">

					<div class="row">
						<div class="col-md-6" style="width: 100%;text-align: center;">
							<!--    Striped Rows Table  -->
							<div class="panel panel-default">
								<div class="panel-heading"></div>
								<div class="panel-body" style="text-align: center;">
									<div class="table-responsive">
								
										<table class="table table-striped table-bordered table-hover"
											style="text-align: center;">
											<thead style="text-align: center;">
												<tr style="text-align: center;">
													<th style="text-align: center;">交易流水号</th>
													<th style="text-align: center;">交易账号</th>
													<th style="text-align: center;">交易金额</th>
													<th style="text-align: center;">交易时间</th>
													<th style="text-align: center;">摘要</th>
													<th style="text-align: center;">交易地点</th>
											</thead>
											<tbody>
												<c:forEach items="${transactionsMap}" var="item">
													<tr>
														<td style="text-align: center;">${item.trNumber}</td>
														<td style="text-align: center;">${item.acNumber}</td>
														<td style="text-align: center;">${item.trBalance}</td>
														<td style="text-align: center;"><fmt:formatDate
																value="${item.trTime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
														<td style="text-align: center;">
															<c:if test="${item.trType==1}">取款</c:if>
															<c:if test="${item.trType==2}">存款</c:if>
															<c:if test="${item.trType==3}">转入</c:if>
															<c:if test="${item.trType==4}">转出</c:if>
														</td>
														<td style="text-align: center;">${item.trAddress}</td>
														
													</tr>
												</c:forEach>


											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!--  End  Striped Rows Table  -->
						</div>
					</div>
				</c:if>
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



