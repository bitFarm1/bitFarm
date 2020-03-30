<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<canvas id="myChart2" width="300" height="300"></canvas>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script type="text/javascript">
	var ctx = document.getElementById('myChart2');
	var myChart = new Chart(ctx, { 
		type: 'line',  
		data: { 
			labels: ['6일전', '5일전', '4일전', '3일전', '2일전', '1일전', '오늘'],
			datasets: [{
				label: '한 주간 이용자 추세', 
				data: [ ${weekData6},  
	                ${weekData5},
	                ${weekData4},  
	                ${weekData3},
	                ${weekData2}, 
	                ${weekData1}, 
	                ${weekData0}],   
	                borderColor: "rgba(255, 201, 14, 1)",
	                backgroundColor: "rgba(255, 201, 14, 0.5)",
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