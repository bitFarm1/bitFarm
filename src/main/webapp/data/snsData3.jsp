<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<canvas id="myChart3" width="300" height="300"></canvas>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script type="text/javascript">
new Chart(document.getElementById("myChart3"), {
    type: 'line',
    data: {
        labels: ['3달 전', '2달 전', '1달 전', '현재 달'], 
        datasets: [{
            label: '월별 가입자 변동 추이',
            data: [
                ${lastMonth3},
                ${lastMonth2},
                ${lastMonth1},
                ${thisMonth},               
            ],
            
            borderColor: "rgba(255, 201, 14, 1)",
            backgroundColor: "rgba(255, 201, 14, 0.5)",
            fill: true,
            lineTension: 0
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