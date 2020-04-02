<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
		
	a.infoA {color:blak; text-decoration: none;}
	a.infoA:link {color: black; text-decoration: none;}
	a.infoA:visited {color: black; text-decoration: none;}
	a.infoA:hover {color: #5f0080; text-decoration: none; font-weight: bolder;}
	a.infoA:active {color: black; text-decoration: none;}
</style>

<div align="center" style="width:200px;">
	<h3>고객센터</h3>
	
			<a class="infoA" href="/bitFarm/information/infoBoardList">공지사항</a><br><br>
		<c:if test="${admin == 'admin' }"> 
			<a class="infoA" href="/bitFarm/information/infoWriteForm">[관리자] 공지사항 등록</a><br><br>	
		</c:if>  
  
		<c:if test="${memberId != null}"> 
			<a class="infoA" href="/bitFarm/information/infoQnABoard">고객 1:1 문의작성</a><br><br>
			<a class="infoA" href="/bitFarm/information/infoQnAList">고객 1:1 문의내역</a><br><br> 
		</c:if>
		<c:if test="${admin == 'admin' }">    
			<a class="infoA" href="/bitFarm/information/infoQnAListADMIN">[관리자] 1:1 문의내역</a><br><br>
			<a class="infoA" href="/bitFarm/information/infoQnAListAllADMIN">[관리자] 1:1 전체문의내역</a><br><br> 
			<a class="infoA" href="/bitFarm/information/dataList">회원데이터</a>	<br><br>
		</c:if> 
	  
</div>     