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
	<script src="${ctx}/scripts/js/main.js"></script>
	<script src="${ctx}/scripts/echarts.js"></script>
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
        
        
        
        
        
        
        
        
        
        
        
        
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
        <input type="text" class="form-control" style="width:200px;" placeholder="选择查询时间" name="minDate" id="sreachTime"
 onClick="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'%y-%M-%d'})">
        <button class="btn btn-primary btn-lg" onclick="sreach();">查询</button>
             <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        //一部传输数据
         var myChart = echarts.init(document.getElementById('main'));
	
        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '卡号注册量'
            },
            tooltip: {},
            legend: {
                data:['注册量']
            },
            xAxis: {
            	
                data: []
            },
            yAxis: {},
            series: [{
                name: '卡号注册时间分布图',
                type: 'line',
                data: []
            }]
        };
        //myChart.showLoading();// 加载动画
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        $.ajax({
 			type:'get',
 			 data:{"get_time":0},
 			 dataType:'json',
 			 url:'${ctx}/teller/getDataAccount.do',
 			 error:function (responseText, textStatus, XMLHttpRequest)
 	        {
 				 alert("error");
 				 alert(responseText);
 	        },
 	        success: function(data){
 	        	var cName=[];
 	        	var cWork=[];
 	            for(var x in data)
 	            	{
 	            	cName[x]=data[x].time;
 	            	cWork[x]=data[x].item;
 	            	}
 	        	// 填入数据
 	            myChart.setOption({
 	            	 legend: {
 	                     data:['注册量']
 	                 },
 	                xAxis: {
 	                	name:'时间',
 	                	data:cName
 	                },
 	               
 	                series: [{
 	                    // 根据名字对应到相应的系列
 	                    type:'line',
 	                    name: '注册量',
 	                    data: cWork
 	                }
 	                ]
 	            });
 	        }
 		});
        /* $.get('${ctx}/teller/getDataAccount.do').done(function (data) {
        	
        	var cName=[];
        	var cWork=[];
            for(var x in data)
            	{
            	cName[x]=data[x].time;
            	cWork[x]=data[x].item;
            	}
        	// 填入数据
            myChart.setOption({
            	 legend: {
                     data:['注册量']
                 },
                xAxis: {
                	name:'时间',
                	data:cName
                },
               
                series: [{
                    // 根据名字对应到相应的系列
                    type:'line',
                    name: '注册量',
                    data: cWork
                }
                ]
            });
        }); */
    </script>
    
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
 	function show(id)
 	{
 		var content=document.getElementById("content"+id);
 		//alert(content.innerHTML);
 		//var select=document.getElementByIdx("select");
 		//获取柜员id，显示柜员信息
 		$.ajax({
 			type:'POST',
 			 data:{"id":id},
 			 dataType:'json',
 			 url:'${ctx}/teller/getTellerMessage.do',
 			 error:function (responseText, textStatus, XMLHttpRequest)
 	        {
 				 alert("error");
 				 alert(responseText);
 	        },
 	        success: function(data){
 	        	document.getElementById("show_teller_no").value=data.tNumber;
 	        	document.getElementById("show_teller_name").value=data.tName;
 	        	document.getElementById("s_tid").value=data.tId;
 	        }
 		});
 		//
 	}
 	function sreach()
 	{
 		var time=$("#sreachTime").val();
 		if(time==""||time.length==0)
 			{
 			alert("选择事件");
 			}
 		else
 			{
 			$.ajax({
 	 			type:'get',
 	 			 data:{"get_time":time},
 	 			 dataType:'json',
 	 			 url:'${ctx}/teller/getDataAccount.do',
 	 			 error:function (responseText, textStatus, XMLHttpRequest)
 	 	        {
 	 				 alert("error");
 	 				 alert(responseText);
 	 	        },
 	 	        success: function(data){
 	 	        	var cName=[];
 	 	        	var cWork=[];
 	 	            for(var x in data)
 	 	            	{
 	 	            	cName[x]=data[x].time;
 	 	            	cWork[x]=data[x].item;
 	 	            	}
 	 	        	// 填入数据
 	 	            myChart.setOption({
 	 	            	 legend: {
 	 	                     data:['注册量']
 	 	                 },
 	 	                xAxis: {
 	 	                	name:'时间',
 	 	                	data:cName
 	 	                },
 	 	               
 	 	                series: [{
 	 	                    // 根据名字对应到相应的系列
 	 	                    type:'line',
 	 	                    name: '注册量',
 	 	                    data: cWork
 	 	                }
 	 	                ]
 	 	            });
 	 	        }
 	 		});
 			
 			}
 	}
 	
 	function update()
 	{
 		var s_tid=$("#s_tid").val();
 		var select_id=$("#select_id").val();
 		$.ajax({
 			type:'POST',
			 data:{"tId":s_tid,"auId":select_id},
			 dataType:'json',
			 url:'${ctx}/teller/updateTellerAu.do',
			 error:function (responseText, textStatus, XMLHttpRequest)
	        {
				 alert("error");
				 alert(responseText);
	        },
	        success: function(data){
	        	if(data=="0")
	        		{
	        		alert("登陆失效！")
	        		 window.location.href='${ctx}/teller/login.jsp';
	        		}
	        	else if(data=="-1")
	        		{
	        		alert("登陆失效");
	        		}
	        	else if(data=="1")
	        		{
	        		alert("更改权限成功！");
	        		 window.location.href='${ctx}/teller/showTeller.do';
	        		}
	        	
	        }
 		});
 	}
 	</script>

  </body>
</html>
