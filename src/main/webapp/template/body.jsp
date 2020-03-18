<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<!-- 메인페이지 이미지 슬라이드 -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" style="width: 80%; margin: 0 auto;"> 
    <div class="carousel-item active">
      <img class="d-block w-100" src="../image/mainImage1.JPG" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../image/mainImage2.JPG" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../image/mainImage3.JPG" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<p style="clear: both; height: 2px;"></p>

<!-- 메인 리스트 추가하기 -->
<jsp:include page="mainImageList.jsp"/>
<%-- <c:forEach var="tr" begin="1" end="12" step="1">
<div style="width: 80%; margin: 0 auto; text-align: center;">
	<c:forEach var="td" begin="${tr}" end="9" step="1">
	<div style="width: 33%; float: left; border: 1px dotted red;">${td}</div>
	<div style="width: 33%; float: left; border: 1px dotted green;">${td+1}</div>
	<div style="width: 33%; float: left; border: 1px dotted red;">${td+2}</div>
	</c:forEach>
</div>
</c:forEach> --%>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>