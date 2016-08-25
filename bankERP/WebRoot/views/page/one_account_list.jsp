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

</head>

<body>




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
									<th style="text-align: center;">账号</th>
									<th style="text-align: center;">货币类型</th>
									<th style="text-align: center;">余额</th>
									<th style="text-align: center;">开户时间</th>
									<th style="text-align: center;">开户地点</th>
									<th style="text-align: center;">卡状态</th>
								</tr>
							</thead>
							<tbody>
								<tr style="text-align: center;">
									<th style="text-align: center;">${account.acNumber }</th>
									<th style="text-align: center;">${account.acCurrency }</th>
									<th style="text-align: center;">${account.acBalance }</th>
									<th style="text-align: center;">${account.acCreateTime }</th>
									<th style="text-align: center;">${account.acCreateAddress }</th>
									<th style="text-align: center;">${account.acState }</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
