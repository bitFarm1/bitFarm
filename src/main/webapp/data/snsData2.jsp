<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<canvas id="myChart2" width="400" height="400"></canvas>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script type="text/javascript">
	var ctx = document.getElementById('myChart2');
	var myChart = new Chart(ctx, {
		type: 'line', 
		data: { 
			labels: ['BIT', 'NAVER', 'KAKAO'], 
			datasets: [{
				label: '로그인 유형', 
				data: [${bit}, ${naver}, ${kakao}],   
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