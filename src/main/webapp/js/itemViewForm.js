$(document).ready(function(){
	var itemDetailDiv = $('.itemDetailDiv').offset();
	var itemReviewDiv = $('.itemReviewDiv').offset();
	var itemQnaDiv = $('.itemQnaDiv').offset();
	
	$('.miniCartDivTool_small_visible').css('visibility', 'hidden');
	$('.miniCartDivTool_visible').css('visibility', 'hidden');
	
	$(window).scroll(function(){
		var height = $(document).scrollTop();
		var itemDetailDiv = $('.itemDetailDiv').offset();
		if(height > itemDetailDiv.top){
			$('#miniCartDivTool').css('visibility', 'visible');
		}else{
			$('#miniCartDivTool').css('visibility', 'hidden');
		}
	});
	
	$('.miniCartDiv_small_updownBtn').click(function(){
		$('.miniCartDivTool_small_visible').css('visibility', 'hidden');
		$('.miniCartDivTool_visible').css('visibility', 'visible');
	});
	$('.miniCartDiv_updownBtn').click(function(){
		$('.miniCartDivTool_small_visible').css('visibility', 'visible');
		$('.miniCartDivTool_visible').css('visibility', 'hidden');
	});
	
	//offset으로 좌표구해서 해당 div top으로 이동하기
	$('.itemDetailLi').click(function(){
		$('body,html').animate({scrollTop:itemDetailDiv.top-200});
	});
	$('.itemReviewLi').click(function(){
		$('body,html').animate({scrollTop:itemReviewDiv.top-200});
	});
	$('.itemQnaLi').click(function(){
		$('body,html').animate({scrollTop:itemQnaDiv.top-200});
	});
});

//