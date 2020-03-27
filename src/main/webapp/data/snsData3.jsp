<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
 
      var chart = new google.visualization.BarChart(document.getElementById('chart_div3'));
      chart.draw(data, options);
    }
   </script> 
</head>
<body>
<div id="chart_div3"></div> 
      
  
</body> 
</html> 
