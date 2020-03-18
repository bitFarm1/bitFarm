<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href= "../css/top.css">
<div align="right">									<%-- 세션 만들면 수정 --%>
	<a class="indexA" href="/bitFarm/member/loginForm.do">로그인</a>&emsp;&emsp;
	<a class="indexA" href="/bitFarm/member/signUp.do">회원가입</a>&emsp;&emsp;
	<a class="indexA" href="#">로그아웃</a>&emsp;&emsp;
	<a class="indexA" href="/bitFarm/mypage/mypageMain.do">마이페이지</a>&emsp;&emsp;
	<a class="indexA" href="/bitFarm/cart/cartForm.do">장바구니</a>&emsp;&emsp;
	<a class="indexA" href="/bitFarm/information/infoBoard.do">고객센터</a>&emsp;&emsp;&emsp;&emsp;
</div><br><br>

<div align="center">
	<img src="../image/mainImage.png" height="90px" style="cursor:pointer"
		onclick="location.href='/bitFarm/main/main.do'">
</div><br><br>

<div class="menu">
<hr class="topHr">
<div class="menubar">
	<ul>
		<li><a href="#">과일/과일즙</a>
			<ul>
				<li><a href="#">과일</a></li>
			 	<li><a href="#">과일즙</a></li>
			</ul>
		</li>
		<li><a href="#">축산/유정란</a>
			<ul>
				<li><a href="#">닭/오리/계란/유제품</a></li>
			 	<li><a href="#">소고기/돼지고기</a></li>
				<li><a href="#">안심가공식품</a></li>
			</ul>
		</li>
		<li><a href="#">쌀/잡곡/견과류</a>
			<ul>
				<li><a href="#">쌀</a></li>
			 	<li><a href="#">현미/찹쌀/잡곡/혼합곡</a></li>
				<li><a href="#">옥수수/잣/호두/밤/대추/땅콩</a></li>
			</ul>
		</li>
		<li><a href="#">고구마/감자/채소/버섯</a>
			<ul>
				<li><a href="#">고구마/감자</a></li>
			 	<li><a href="#">마늘/양파/당근/고추</a></li>
				<li><a href="#">채소/산나물/호박</a></li>
			</ul>
		</li>
		<li><a href="#">장류/김치</a>
			<ul>
				<li><a href="#">김치</a></li>
			 	<li><a href="#">된장/간장/청국장/고추장</a></li>
			 	<li><a href="#">반찬/장아찌</a></li>
				<li><a href="#">참기름/식초/소금/조미료</a></li>
			</ul>
		</li>
		<li><a href="#">알뜰상품</a>
			<ul>
				<li><a href="#">2등급상품</a></li>
			 	<li><a href="#">기한임박세일상품</a></li>
			</ul>
		</li>
	</ul>
</div>
<hr class="topHr">
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

/* $(document).ready(function() {
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
}); */

</script>