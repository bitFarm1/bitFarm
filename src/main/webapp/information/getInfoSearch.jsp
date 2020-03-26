<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
	#paging {
		color: black;
		text-decoration: none;
		cursor: pointer;
	} 
	
	#currentpaging {
		color: red;
		text-decoration: underline;
		cursor: pointer; 
	}	
</style>
<form id="infoBoardListForm" name="infoBoardListForm">
<input type="hidden" id="pg" name="pg" value="${pg }">
<div style="width:1000px; margin: 0 auto;">
<h3>공지사항</h3> 
	<table width="80%" border="1" cellpadding="15" frame="hsides" rules="rows"> 
		<tr> 
			<th>글번호</th> 
			<th width="250px;">제목</th>
			<th>작성자</th>
			<th>작성일</th> 
			<th>조회</th> 
		</tr>
		 
<c:forEach var="informationDTO" items="${list }">
<c:set var="seq" value="${informationDTO.information_number }"/>
<c:set var="information_subject" value="${informationDTO.information_subject }"/>
<c:set var="information_name" value="${informationDTO.information_name }"/>
<c:set var="information_date" value="${informationDTO.information_date }"/>
<c:set var="information_views" value="${informationDTO.information_views }"/>

	<tr> 
		<td>
		${seq }   
		</td> 
		   
		<td>  
		<a class="info" href="/bitFarm/information/infoView?seq=${seq }&pg=${pg}">${information_subject }</a>
		</td>  
		
		 
		<td> 
		${information_name }
		</td>  
		
		<td> 
		${information_date } 
		</td>	
		
		<td> 
		${information_views } 
		</td>				
	</tr>	 
</c:forEach> 
</table> 
	<div style="height:10px;"> </div>		
	<div style="width: 80%; text-align: center;">
		
<div id="pagingDiv">${informationPaging.pagingHTML}</div>
	</div> 
 
	<select name="searchOption" id="searchOption" style="width: 80px;">
				<option value="information_subject">제목
				<option value="information_name">아이디 
	</select>
	<input type="text" name="keyword" value="${keyword }">  
	<input type="button" id="searchBtn" name="searchBtn" value="검색"> 
</form> 
</div> 
	
<p style="clear: both; height: 30px;"></p>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript"> 
function informationPaging(pg){ 
	location.href='infoBoardList?pg='+pg;  
	
}
  
$('#searchBtn').click(function(event){    
	document.infoBoardListForm.method = 'GET';
	document.infoBoardListForm.action = '/bitFarm/information/getInfoSearch';
	document.infoBoardListForm.submit();  
});   
  
function infoSearch(pg){    
	$('#pg').val(pg);  
	$('#searchBtn').trigger('click'); 	  
} 

</script>