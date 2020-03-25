<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style type="text/css">
	a.info {color:black; text-decoration: none; font-size: 11pt;}  
	a.info:link {color: black; text-decoration: none;}
	a.info:visited {color: black; text-decoration: none;}
	a.info:hover {color: #5f0080; text-decoration: none; font-weight: bolder;} 
	a.info:active {color: black; text-decoration: none;} 

th{
	background-color: #F7F5F8;
}
</style>

<form name="imageboardListForm" method="post" action="/miniProject/imageboard/imageboardDelete.do">
<div style="width:1000px; margin: 0 auto;">
<h3>1:1 문의 내역</h3> 
	<table id="infoListTable" width="80%" border="1" cellpadding="15" frame="hsides" rules="rows"> 
		<tr> 
			<th>글번호</th>
			<th width="250px;">제목</th>
			<th>작성자</th>
			<th>작성일</th>   
			    
		</tr>  
		
<c:forEach var="informationQnADTO" items="${list }">
<c:set var="seq" value="${informationQnADTO.infoQnA_seq }"/>
<c:set var="infoQnA_type" value="${informationQnADTO.infoQnA_type }"/>
<c:set var="infoQnA_subject" value="${informationQnADTO.infoQnA_subject }"/>
<c:set var="infoQnA_userID" value="${informationQnADTO.infoQnA_userID }"/>
<c:set var="infoQnA_askDate" value="${informationQnADTO.infoQnA_askDate }"/>

	<tr> 
		<td style="width:100px; height:10px" align="center">
		${seq }  
		</td> 
		  
		<td style="width:100px">  
		<a class="info" href="#">[${infoQnA_type }] ${infoQnA_subject }</a>
		</td>  
		
		 
		<td style="width:200px" align="center"> 
		${infoQnA_userID }
		</td>  
		
		<td style="width:200px" align="center"> 
		${infoQnA_askDate } 
		</td>			
	</tr>	 
</c:forEach>

	</table>
</div> 
<input type="hidden" name="pg" value="${pg }">
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

</script>