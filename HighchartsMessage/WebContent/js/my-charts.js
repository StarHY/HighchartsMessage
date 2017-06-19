function getMessChart(id, url, jsonData) {
	$.get(url, function (data) {
		jsonData.series = data.mess;
		Highcharts.chart(id, jsonData);
	}, "json");
}