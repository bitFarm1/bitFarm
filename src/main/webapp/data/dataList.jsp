<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
	<div>
		<jsp:include page="../template/top.jsp"/>
	</div>
	<br>
	<div style="float: center;">    
	<table align="center"> 
		<tr>
			<td>로그인 유형</td> 
			<td>ㅇㅇㅇ 유형</td>
			<td>ㅇㅇㅇ 유형</td>  
		</tr>
		<tr> 
			<td style="width: 50px;"><jsp:include page="${data1}"/></td>
			<td style="width: 50px;"><jsp:include page="${data2}"/></td>
			<td style="width: 50px;"><jsp:include page="${data3}"/></td> 
		</tr>   
	</table>		
	</div>   
</body>  