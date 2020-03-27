<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
	<div>
		<jsp:include page="../template/top.jsp"/>
	</div>
	<br>
	<div style="float: left;"> 
	<table>
		<tr>
			<td><jsp:include page="${data1}"/></td>
			<td><jsp:include page="${data2}"/></td>
			<td><jsp:include page="${data3}"/></td> 
		</tr> 
	</table>		
	</div>
</body>  