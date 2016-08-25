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
							<small><a href="${ctx}/transactions/downToExcel.do?account_number=${account.acNumber}" target="_blank">打印</a></small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
							<div align="center">
								<font size="10">交易流水单 </font>
							</div>

						</h1>
					</div>
				</div>


				<!-- /. ROW  -->
	
					<h1 align="center">下载成功</h1> <br>
				
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
