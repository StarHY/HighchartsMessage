<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<script src="<%=path %>/js/highcharts.js"></script>
<script src="<%=path %>/js/jquery-1.12.0.min.js"></script>
<script src="<%=path %>/js/exporting.js"></script>
<script src="<%=path %>/js/my-charts.js"></script>

<script type="text/javascript">
var messData = {
	exporting: {
		enabled: false
	},
	credits: {
		enabled: false
	},
	title: {
	    text: '年级性别比例'
	},
	xAxis: {
	    categories: ['一年级', '二年级', '三年级', '四年级', '五年级', '六年级', '七年级', '八年级', '九年级']
	},
	yAxis: {
	    title: {
	        text: false
	    }
	},
	plotOptions: {
	    line: {
	        dataLabels: {
	            enabled: true          // 开启数据标签
	        },
	        enableMouseTracking: true // 关闭鼠标跟踪，对应的提示框、点击事件会失效
	    }
	},
	series: []
};


$(function () {
	getMessChart("container", "<%=path %>/info/star", messData);
});

</script>

</head>
<body>

<div id="container" style="min-width:400px; height:400px"></div>

</body>
</html>