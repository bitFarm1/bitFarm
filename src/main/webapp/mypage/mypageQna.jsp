<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h3>나의 문의 모아보기</h3>
<table class="purchaseListTable" frame="hsides" rules="rows" cellpadding="10">
	<tr>
		<th width="10%">글번호</th>
		<th width="20%">카테고리</th>
		<th width="30%">제목</th>
		<th width="20%">작성일</th>
		<th width="20%">답변상태</th>
	</tr>
	<!-- list로 돌리기 -->
	<c:if test="${list!=null }">
	<c:forEach var="informationQnADTO" items="${list}">
	<c:set var="seq" value="${informationQnADTO.infoQnA_seq}"/>
	
	<!-- 보이는부분 제목 tr -->
	<tr>
		<td align="center">${informationQnADTO.infoQnA_seq}</td>
		<td align="center">${informationQnADTO.infoQnA_type}</td>
		<td align="center" id="${seq}" style="cursor: pointer;">${informationQnADTO.infoQnA_subject}</td>
		<td align="center"><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${informationQnADTO.infoQnA_askDate}"/></td>
		
		<c:if test="${informationQnADTO.infoQnA_answerSubject == '0'}">
		<td style="width:200px" align="center"> 
			답변 대기중
		</td>
		</c:if>	 
		<c:if test="${informationQnADTO.infoQnA_answerSubject != '0'}">
		<td style="width:200px" align="center">  
			답변 완료
		</td>
		</c:if>
	</tr>
	
	<!-- 숨겨져있는 문의 내용 tr -->
	<tr id="hidden_${seq}" style="display: none;">
	  <c:if test="${informationQnADTO.infoQnA_imageName!='0'}">
		<td colspan="2"><pre>${informationQnADTO.infoQnA_content}</pre></td>
		<td colspan="3"><img src="../storage/${informationQnADTO.infoQnA_imageName}" width="150" height="150"></td>
	  </c:if>
	  <c:if test="${informationQnADTO.infoQnA_imageName=='0'}">
		<td colspan="5">${informationQnADTO.infoQnA_content}</td>
	  </c:if>
	</tr>
	
	<!-- 숨겨져있는 답변 tr -->
	<tr id="reply_${seq}" style="display: none; background: #f8f8f8;">
	  <c:if test="${informationQnADTO.infoQnA_answerContent!='0'}">
	  	<td colspan="2">${informationQnADTO.infoQnA_answerSubject}</td>
	  	<td colspan="2">${informationQnADTO.infoQnA_answerContent}</td>
	  	<td><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${informationQnADTO.infoQnA_answerDate}"/></td>
	  </c:if>
	  <c:if test="${informationQnADTO.infoQnA_answerContent=='0'}">
	  	<td colspan="5">아직 답변이 달리지 않았습니다.</td>
	  </c:if>
	</tr>
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	var ishidden = false;
	
	$('#${seq}').click(function(){
		ishidden = !ishidden;   
		if(ishidden){
			$('#hidden_${seq}').css("display", "table-row");
			$('#reply_${seq}').css("display", "table-row");
		}else{  
			$('#hidden_${seq}').css("display", "none"); 
			$('#reply_${seq}').css("display", "none"); 
		}
	});
	</script>
	
	</c:forEach>
	</c:if>
</table>
<p style="clear: both; height: 10px;"></p>