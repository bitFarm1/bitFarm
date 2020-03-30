<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body> 
    
	<div>
		<jsp:include page="../template/top.jsp"/>
	</div>
	<br> 	
	<div style="width: 80%; margin: 0 auto;">
	<h2>비트 농장 고객 데이터</h2> 	
	<div style="height: 70px;"></div> 
	
		<table align="center">  
			<tr>			
				<td style="width: 350px;"><h3>로그인 유형</h3><jsp:include page="${data1}"/></td>
				<td style="width: 200px;">
					BIT : <strong>${bit }명</strong><br>
					KAKAO : <strong>${kakao }명</strong><br>
					NAVER : <strong>${naver }명</strong><br>   
				</td> 
				<td style="width: 350px;"><h3>한주간 가입자 변동 추이</h3><jsp:include page="${data2}"/></td>
				<td style="width: 200px;">6일 전 : <strong>${weekData6}명</strong><br>  
		                5일 전 : <strong>${weekData5}명</strong><br>	 
		                4일 전 : <strong>${weekData4}명</strong><br>	 
		                3일 전 : <strong>${weekData3}명</strong><br>	   
		                2일 전 : <strong>${weekData2}명</strong><br>	
		                1일 전 : <strong>${weekData1}명</strong><br>	 
		                                    오늘 : <strong>${weekData0}명</strong><br>		   	
				</td>			
			</tr>  
		</table>
	</div>	 
	<div style="height: 70px;"></div>    
	
	<div style="width: 80%; margin: 0 auto;">
		<table align="center">
			<tr> 				
				<td style="width: 350px;"><h3>최근 4달간 가입자 변동 추이</h3><jsp:include page="${data3}"/></td> 
				<td style="width: 200px;">
					3달 전 : <strong>${lastMonth3}명</strong><br>	
					2달 전 : <strong>${lastMonth2}명</strong><br>
					1달 전 : <strong>${lastMonth1}명</strong><br>
					현재달 : <strong>${thisMonth}명</strong><br>
				</td>
				
				<td style="width: 350px;"><h3>판매자 고객 비율</h3><jsp:include page="${data4}"/></td> 
				<td style="width: 200px;"> 
					고객 : <strong>${memberCount}명</strong><br>	 
					판매자: <strong>${sellerCount}명</strong><br>	
				</td> 
			</tr>  
			
		</table>
	</div>
	<div style="height: 150px;"></div> 
</body>  