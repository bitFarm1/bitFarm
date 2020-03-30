<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<canvas id="myChart4" width="300" height="300"></canvas>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script type="text/javascript">
new Chart(document.getElementById("myChart4"), {
    type: 'pie',
    data: {
        labels: ['고객', '판매자'], 
        datasets: [{
            label: '고객 대 판매자 비율',
            data: [           
                ${memberCount},  
                ${sellerCount}, 
                
            ],
            borderColor: [
            		'rgba(198, 31, 150, 0.2)',
            		'rgba(255, 201, 14, 1)'	
            			], 
            backgroundColor: [
            	'rgba(135, 31, 150, 1)',
            	'rgba(255, 201, 14, 0.5)'
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