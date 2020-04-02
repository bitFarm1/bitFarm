<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<link rel="stylesheet" href= "../css/top.css">
<br><br>
<div align="center">
	<img src="../image/mainImage.png" height="90px" style="cursor:pointer" onclick="location.href='/bitFarm/main/main'">
</div>
<br>
<div class="menu">
<hr class="topHr">

<div class="menubar">
	<ul>
		<li><a href="/bitFarm/main/allList">전체 상품 카테고리</a>
			<ul>
				<li><a href="/bitFarm/main/categoryList?category=1">과일/과일즙</a></li>
			 	<li><a href="/bitFarm/main/categoryList?category=2">축산/유정란</a></li>
			 	<li><a href="/bitFarm/main/categoryList?category=3">쌀/잡곡/견과류</a></li>
			 	<li><a href="/bitFarm/main/categoryList?category=4">고구마/감자/채소/버섯</a></li>
			 	<li><a href="/bitFarm/main/categoryList?category=5">장류/김치</a></li>
			</ul>
		</li>
	<c:if test="${memberId==null && sellerId==null && admin==null}">
		<li><a href="/bitFarm/member/loginForm">로그인</a></li>
		<li><a href="/bitFarm/member/signUp">회원가입</a></li> 
	</c:if> 
	<c:if test="${memberId!=null || sellerId!=null || admin!=null}">  
		<li><a href="/bitFarm/member/logout">로그아웃</a></li>
	</c:if>
	<c:if test="${memberId!=null && sellerId==null && admin==null}"> 
		<li><a href="/bitFarm/mypage/mypagePurchaseList?pg=1">마이페이지</a>

			<ul>
				<li><a href="/bitFarm/mypage/mypagePickItem">찜한 상품</a></li>
			 	<li><a href="/bitFarm/mypage/mypagePickSeller">찜한 판매자</a></li>
			 	<li><a href="/bitFarm/mypage/mypageMyReview">내 리뷰 모아보기</a></li>
			 	<li><a href="/bitFarm/mypage/mypageQna">내 문의 모아보기</a></li>
			 	<li><a href="/bitFarm/member/beforeModify">정보수정</a></li>
			</ul>
		</li>
		<li><a href="/bitFarm/cart/cartForm">장바구니</a></li>
	</c:if>
	<c:if test="${sellerId!=null}">
		<li><a href="/bitFarm/sellerHome/sellerHomeMain">판매자홈</a>
			<ul>
				<li><a href="/bitFarm/sellerHome/sellerAddForm">상품 등록하기</a></li>
				<li><a href="/bitFarm/sellerHome/sellerManage">품절목록 관리하기</a></li>
			 	<li><a href="/bitFarm/sellerHome/sellerAll?sellerName=${sellerName}">상품 모아보기</a></li>
			 	<li><a href="/bitFarm/sellerHome/sellerOrder?pg=1">주문 현황</a></li>
			 	<li><a href="/bitFarm/sellerHome/sellerSell">매출 분석</a></li>
			</ul>
		</li>
	</c:if>
		<li><a href="/bitFarm/information/infoBoardList">고객센터</a>
			<ul>
				<li><a href="/bitFarm/information/infoBoardList">공지사항</a></li>
				
			  <c:if test="${memberId!=null}">   
				<li><a href="/bitFarm/information/infoQnABoard">1:1 문의 작성</a></li>   
				<li><a href="/bitFarm/information/infoQnAList">1:1 문의 내역</a></li>
			  </c:if>
			  <c:if test="${admin != null}">  
				<li><a href="/bitFarm/information/infoWriteForm">공지사항 등록</a></li>
				<li><a href="/bitFarm/information/infoQnAListADMIN">1:1 문의내역(관리자전용)</a></li>
			  	<li><a href="/bitFarm/information/infoQnAListAllADMIN">1:1 전체 문의내역(관리자전용)</a></li>
			  	<li><a href="/bitFarm/information/dataList">회원데이터</a></li> 
			  </c:if>
			</ul>
		</li>
		<li>&emsp;&emsp;&emsp;&emsp;&emsp;<input type="text" name="searchT" class="searchT"></li>
		<li>&emsp;<input type="button" name="searchBtn" value="검색" class="searchBtn"></li>
		<c:if test="${memberId!=null}">  
		<li> 
			<a href="#" style="cursor: default;"> 
			&emsp;&emsp;&emsp;  
			<strong>${memberName}</strong>&nbsp;님 환영합니다</a> 
		</li>
		</c:if> 
	</ul>
</div>

<hr class="topHr">
</div>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

//검색
$('.searchBtn').click(function(){
	let text = $('.searchT').val();

	if(text!=null){
		location.href="/bitFarm/main/searchList?searchT="+$('input[name=searchT]').val();
		
	}else{
		return false;
	} 
});


/*
//상단바 고정
$(document).ready(function() {
	//상대적인 좌표 값을 반환, .offset()가 반환 하는 객체는 left와 top 속성을 제공
	//top 속성을 이용해서 메뉴의 수직 위치를 구함
	var menu_offset = $('.menu').offset();
	//스크롤 바를 스크롤할 때 매개변수로 전달된 함수를 실행시킴
	$(window).scroll(function() {
		//문서의 스크롤바 위치와 메뉴의 수직 위치를 비교해서 
		//문서의 스크롤바 위치가 메뉴의 수직 위치보다 크면(위치로 표현하면 아래)
		if ($(document).scrollTop() > menu_offset.top) {
			//메뉴에 menu-fixed 클래스를 추가해서 메뉴를 고정시킴
	 		$('.menu').addClass('menu-fixed');
		}else {
			//메뉴에서 menu-fized 클래스를 제거해서 메뉴를 수직으로 이동할 수 있도록 처리함
	   		$('.menu').removeClass('menu-fixed');
	 	}
	});
}); 
*/
</script>