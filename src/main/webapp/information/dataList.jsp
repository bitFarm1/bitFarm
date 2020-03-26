<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawMultSeries);
 
function drawMultSeries() {
      var data = google.visualization.arrayToDataTable([
        ['로그인타입', '회원수'], 
        ['BIT', ${bit}],
        ['KAKAO', ${kakao}],
        ['NAVER', ${naver}]        
      ]);
 
      var options = { 
        title: '회원 로그인 타입',
        chartArea: {width: '50%'}, 
        hAxis: {
          title: '회원수',
          minValue: 0
        },
        vAxis: {
          title: ' '
        }
      };
 
      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
   </script>
</head>
<body>
<div id="chart_div"></div>
     
  
</body> 
</html> -->
<!-- 
<script src="//www.google.com/jsapi"></script>
<script>
var data = [
  ['계정유형', '회원수'],
  ['BIT', ${bit}],
  ['NAVER', ${kakao}],
  ['KAKAO', ${naver}] 
];
var options = {
  title: '로그인 유형',
  width: 400, height: 500
};
google.load('visualization', '1.0', {'packages':['corechart']});
google.setOnLoadCallback(function() {
  var chart = new google.visualization.ColumnChart(document.querySelector('#chart_div'));
  chart.draw(google.visualization.arrayToDataTable(data), options);
});
</script>
<div id="chart_div"></div> -->
<canvas id="myChart" width="400" height="400"></canvas>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script type="text/javascript">
	var ctx = document.getElementById('myChart');
	var myChart = new Chart(ctx, {
		type: 'bar',
		data: {
			labels: ['BIT', 'NAVER', 'KAKAO'],
			datasets: [{
				label: '로그인 유형',
				data: [${bit}, ${kakao}, ${naver}], 
				backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)'					
				],
				borderColor: [
					'rgba(255, 99, 132, 1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)'					
				],
				borderWidth: 1
			}]
		},
		options: {
			responsive: false,
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero: true
					}
				}]
			},
		}
	});
</script>