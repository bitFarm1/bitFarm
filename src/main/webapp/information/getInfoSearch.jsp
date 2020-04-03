<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style type="text/css">
	a.info {color:black; text-decoration: none; font-size: 10pt;}  
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
		color: #5f0080;
		text-decoration: none;
		cursor: pointer;  
	}	
	
	td{
		border-bottom: 1px solid #e5e5e5; 
	}
	
</style>
<form id="infoBoardListForm" name="infoBoardListForm">
<input type="hidden" id="pg" name="pg" value="${pg }">
<div style="width:1200px; margin: 0 auto;">
<h3>공지사항</h3>  
	<table width="1200px" cellpadding="15" style="border-top: 2px solid #5f0080; font-size: 12px; border-collapse: collapse;"> 
		<tr> 
			<th>글번호</th>  
			<th width="250px;">제목</th>  
			<th>작성자</th>
			<th>작성일</th>  		
		</tr> 
		 
<c:forEach var="informationDTO" items="${list }">
<c:set var="seq" value="${informationDTO.information_number }"/>
<c:set var="information_subject" value="${informationDTO.information_subject }"/>
<c:set var="information_name" value="${informationDTO.information_name }"/>
<c:set var="information_date" value="${informationDTO.information_date }"/>


	<tr> 
		<td align="center">
		${seq }   
		</td> 
		   
		<td>  
		<a class="info" href="/bitFarm/information/infoView?seq=${seq }&pg=${pg}">${information_subject }</a>
		</td>  
		
		 
		<td align="center"> 
		${information_name }
		</td>      
		
		<td align="center"> 
		<fmt:formatDate pattern="yyyy년 MM월 dd일" value="${information_date}"/>
		</td>	
		
	</tr>	 
</c:forEach> 
</table> 
	<div style="height:10px;"> </div>		
	<div style="width: 100%; text-align: center;">
		 
<div id="pagingDiv">${informationPaging.pagingHTML}</div>
	</div> 
 
		<div><table>
	<tr><td valign="middle"> 
	<select name="searchOption" id="searchOption" style="width: 80px; height:30px;">  
				<option value="information_subject">제목
				<option value="information_name">아이디 
	</select>       
	<input type="text" valign="center" name="keyword" value="${keyword }" style="height:30px; ">   
	<img align="top" src="../image/search.png" id="searchBtn" name="searchBtn" style="height:35px; cursor: pointer;">  
	<!-- <input type="button" id="searchBtn" name="searchBtn" value="검색">  -->
	</td></tr>
	</table> 
	</div>  
</div> 
</form> 
	
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

$("#keyword").keydown(function (key) { 
    if (key.keyCode == 13) { // 엔터키면
        $("#searchBtn").focus(); // 암호에 포커스
    }
});
</script>