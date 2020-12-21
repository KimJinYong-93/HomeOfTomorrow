<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="display: none;" id="reviewModal">
  <link rel="stylesheet" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css"/>
  <link rel="stylesheet" href="https://static.ohou.se/dist/css/36-d4e921c1.chunk.css"/>
  <style>
  	.starSelect{
  		color: #7b9cbf;
  	}
  	.starHover{
  	 	color: #9eb6d1;
  	}
  	.starOut{
  		color : #dbdbdb;
  	}
  </style>
			<div
				class="react-modal react-modal--center review-modal__modal__wrap open open-active">
				<div class="react-modal__content-wrap">
					<div class="react-modal__content review-modal__modal">
						<div class="review-modal" style="width: auto;">
							<div class="review-modal__title">
								리뷰 수정
								<button type="button" class="review-modal__close" onclick="reviewModalClose()">
									<svg class="review-modal__close__icon" width="20" height="20"
										viewBox="0 0 20 20" fill="currentColor"
										preserveAspectRatio="xMidYMid meet">
										<path fill-rule="nonzero"
											d="M11.6 10l7.1 7.1-1.6 1.6-7.1-7.1-7.1 7.1-1.6-1.6L8.4 10 1.3 2.9l1.6-1.6L10 8.4l7.1-7.1 1.6 1.6z"></path></svg>
								</button>
							</div>
							<div class="review-modal__point-explain">
								<svg class="review-modal__point-explain__icon" width="24"
									height="24" viewBox="0 0 24 24"
									preserveAspectRatio="xMidYMid meet">
									<path
										d="M12 0c6.627 0 12 5.373 12 12s-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0zm1 5H9.897l-.194.01C8.746 5.11 8 5.934 8 6.938v10.569l.01.198c.097.977.905 1.74 1.887 1.74 1.047 0 1.896-.868 1.896-1.938v-2.29H13l.248.006c2.479-.01 4.752-2.186 4.752-5.115C18 7.375 15.683 5 13 5zm0 3.875l.135.011c.543.087 1.072.672 1.072 1.222 0 .755-.558 1.265-1.108 1.236l-1.306-.003V8.875H13z"></path></svg>
								포토리뷰&nbsp;<span class="review-modal__point-explain__value">500P</span>,&nbsp;
								일반리뷰&nbsp;<span class="review-modal__point-explain__value">100P</span>
							</div>
							<div class="review-modal__form">
								<div class="review-modal__form__product">
									<img class='review-modal__form__product__image'>
										<div class='review-modal__form__product__contents'>
										<input type='hidden' id='gcode'>
										<input type='hidden' id='ocode'>
										  <div class='review-modal__form__product__contents__brand'></div>
										  <div class='review-modal__form__product__contents__name'></div>
										  <div class='review-modal__form__product__contents__options'></div></div>
								</div>
								<div class="review-modal__section">
									<div class="review-modal__section__title">별점 평가</div>
									<div class="review-modal__form__star__wrap">
										<div class="review-modal__form__star">
											<div class="review-modal__form__star__label">만족도</div>
											<div class="review-modal__form__star__value">
												<ul class="rating-input">
													<li><label class="rating-input__star"
														aria-label="별점 1점"><input type="radio" value="1" name="star">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 2점"><input type="radio" value="2" name="star">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 3점"><input type="radio" value="3" name="star">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 4점"><input type="radio" value="4" name="star">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
													<li><label class="rating-input__star"
														aria-label="별점 5점"><input type="radio" value="5" name="star">
														<svg class="star" fill="currentColor" width="1em"
																height="1em" preserveAspectRatio="xMidYMid meet"
																viewBox="0 0 36 36">
																<path fill-rule="evenodd"
																	d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path></svg></label></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="review-modal__section">
									<div class="review-modal__section__title">
										사진 첨부 (선택) <img class="review-modal__form__photo-point"
											src="">
									</div>
									<div class="review-modal__section__explain">사진을 첨부해주세요.
										(최대 1장)</div>
							<div class="select-picture" style="display: none;">
								<div class="select-picture__contents" id="pictureView"></div>
								<button
									class="button button--color-blue button--size-50 button--shape-4 select-picture__delete"
									type="button" onclick="uploadPictureDelete()">
									<svg viewBox="0 0 20 20" preserveAspectRatio="xMidYMid meet">
										<defs>
										<filter id="delete-a" width="134.3%" height="175%" x="-17.1%"
											y="-37.5%" filterUnits="objectBoundingBox">
										<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
										<feGaussianBlur in="shadowOffsetOuter1"
											result="shadowBlurOuter1" stdDeviation="3"></feGaussianBlur>
										<feColorMatrix in="shadowBlurOuter1"
											result="shadowMatrixOuter1"
											values="0 0 0 0 0.182857143 0 0 0 0 0.205714286 0 0 0 0 0.22 0 0 0 0.2 0"></feColorMatrix>
										<feMerge>
										<feMergeNode in="shadowMatrixOuter1"></feMergeNode>
										<feMergeNode in="SourceGraphic"></feMergeNode></feMerge></filter>
										<path id="delete-b"
											d="M11 3.83v10c0 .92-.75 1.67-1.67 1.67H2.67c-.92 0-1.67-.75-1.67-1.67v-10h10zM8.08.5l.84.83h2.91V3H.17V1.33h2.91L3.92.5h4.16z"></path></defs>
										<g fill="none" fill-rule="evenodd" filter="url(#delete-a)"
											transform="translate(4 2)">
										<mask id="delete-c" fill="#fff">
										<use xlink:href="#delete-b"></use></mask>
										<g fill="#FFF" mask="url(#delete-c)">
										<path d="M-4-2h20v20H-4z"></path></g></g></svg>
									삭제
								</button>
							</div>
							<label class="button button--color-blue-inverted button--size-50 button--shape-4 upload-button"
										for="uploadFile">
										<svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path
												d="M21.1 4c.5 0 .9.4.9.9v14.2c0 .5-.4.9-.9.9H2.9a.9.9 0 01-.9-.9V4.9c0-.5.4-.9.9-.9h18.2zm-.91 1.8H3.8v10.85l5.54-6.27c.12-.17.38-.17.52 0l3.1 3.54c.06.06.08.14.06.2l-.4 1.84c-.02.14.15.23.23.12l3.16-3.43a.27.27 0 01.38 0l3.79 4.12V5.8zm-3.37 4.8a1.47 1.47 0 01-1.47-1.45c0-.81.66-1.46 1.47-1.46s1.48.65 1.48 1.46c0 .8-.66 1.45-1.48 1.45z"></path></svg>
										사진 첨부하기
									</label>
										<form role="imageForm">
										<input type="file" style="display: none;" id="uploadFile" name="uploadFile">
										</form>
										<input type="file" style="display: none;" id="realFile">
								</div>
								<div class="review-modal__section">
									<div class="review-modal__section__title">리뷰 작성</div>
									<textarea
										placeholder="자세하고 솔직한 리뷰는 다른 고객에게 큰 도움이 됩니다. (최소 20자 이상)"
										class="form-control text-area-input review-modal__form__review-input"
										style="height: 56px;"></textarea>
								</div>
								<button
									class="button button--color-blue button--size-50 button--shape-4 review-modal__form__submit"
									type="button" onclick="reviewPictureSave()">완료</button>
							</div>
							<div class="review-modal__explain" style="width: auto;">
								<ul>
									<li>포인트는 최초 작성한 리뷰를 기준으로 지급됩니다.</li>
									<li>상품과 무관한 내용이나 사진, 동일 문자 반복 등의 부적합한 리뷰는&nbsp; 사전 경고 없이
										삭제 및 포인트 회수될 수 있습니다.</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<form method="post" name="reviewForm" action="<%=request.getContextPath()%>/review/regist">
		<input type="hidden" name="gcode">
		<input type="hidden" name="ocode">
		<input type="hidden" name="score">
		<input type="hidden" name="writer" value="${loginUserDetail.nickname }">
		<input type="hidden" name="id" value="${loginUserDetail.id }">
		<input type="hidden" name="content">
		<input type="hidden" name="picture">
	</form>

<script>
	function reviewModifyModalOpen(review, orderDetail){
		var modify = document.getElementById("reviewModal");
		modify.style.display = "block";
		
		console.log(review[2]);
		console.log(orderDetail);
 		/* $('#gcode').val(review.gcode);
		$('#ocode').val(review.ocode);
		$('.review-modal__form__product__contents__brand').text(orderDetail.goods.bname);
		$('.review-modal__form__product__contents__name').text(orderDetail.goods.gname);
		$('.review-modal__form__product__contents__options').text(orderDetail.order_bd.op_choose);
 		$('.review-modal__form__product__image').attr('src','/HOT/goods/getPicture?picture='+orderDetail.goods.picture)
 		if(review.picture != null){
			$("div#pictureView").attr('background-image','url("/HOT/review/getPicture?picture='+review.picture+'")'); 
			$('.select-picture').css('display','block');
		}
		
		$('textarea').val(review.content); */
		
		
		
		
	}
	
	function reviewModalClose(){
		if(confirm('작성하고 있던 내용이 모두 유실됩니다. 정말 다른 페이지로 이동하시겠어요?')){
			var review = document.getElementById("reviewModal");
			review.style.display = "none";
	    	$('#uploadFile').val("");
	    	$(".select-picture").css('display','none');
	    	$('textarea').val("");
	    	$('svg').removeClass("starSelect");
			
		}
    	
	}
	
    $('.star').mouseover(function(){
        $(this).parents('li').nextAll('li').find("svg").addClass('starOut'); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
        $(this).parents('li').prevAll('li').find("svg").addClass('starHover'); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
        $(this).addClass('starHover');
    });
    
     $('ul').mouseout(function(){
    	$(this).find('svg').removeClass('starHover');
    	$(this).find('svg').removeClass('starOut');
    });
    
    $(".star").click(function(){
    	$(this).parents('ul').find('svg').removeClass('starSelect');
    	$(this).parents('ul').find('svg').removeClass('starHover');
    	$(this).parents('ul').find('svg').removeClass('starOut');
    	$(this).parents('ul').find('input[type="radio"]').attr("checked",false);
    	
    	$(this).parents('li').prevAll('li').find("svg").addClass('starSelect'); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
        $(this).addClass('starSelect');
        $(this).prevAll('input').attr("checked", true); 
    });
    
     
    $("#uploadFile").click(function(){
    	
    	if($("#uploadFile").val() != ""){
    		alert('사진은 최대 1장만 가능합니다. 사진을 삭제 후 다시 시도해주세요.');
    		return false;
    	}else{
		    $("#uploadFile").change(function(){
				reviewPicture($('input#uploadFile')[0],$("div#pictureView"));
				
    	});
    	}
    	
    });
    
    function uploadPictureDelete(){
    	$('#uploadFile').val("");
    	$(".select-picture").css('display','none');
    }
    
    function reviewRegist(){
        $('input[name="gcode"]').val($('#gcode').val());
    	$('input[name="ocode"]').val($('#ocode').val());
    	$('input[name="score"]').val($('input:radio[name="star"]:checked').val());
    	$('input[name="content"]').val($('textarea').val());
    	
    	var form = $('form[name="reviewForm"]');
    	
    	$.ajax({
    		url : "<%=request.getContextPath()%>/review/regist",
    		data : form.serialize(),
    		type : "POST",
    		success : function(){
    			var str = "";
    			str += '<div class="react-modal__content">';
    			str += '<div class="finish-modal" style="width : 500px; height : auto;">';
    			str += '<div class="finish-modal__title">';
    			str += '리뷰 작성 감사합니다 <img class="emoji" src="//twemoji.maxcdn.com/2/svg/1f60d.svg" alt="😍" draggable="false" style="width: 1.4em; height: 1.4em; vertical-align: -0.3em;"></div>';
    			str += '<div class="finish-modal__explain">';
    			str += '생생하고 신뢰할 수 있는 리뷰를 제공하기 위해<br>직접 촬영하지 않은 캡쳐, 도용, 해당 상품과 무관한 내용 등은<br>추후 수정요청을 드릴 수 있으니 참고 부탁드립니다.</div>';
    			str += '<div class="finish-modal__buttons">';
    			str	+= '<a class="button button--color-blue-inverted button--size-50 button--shape-4 finish-modal__buttons__button"';
    			str += 'href="/HOT/review/list">나의 리뷰 보기</a>';
    			str	+= '<button class="button button--color-blue button--size-50 button--shape-4 finish-modal__buttons__button" onclick="finishReview()">확인</button>';
    			str	+= '</div></div></div>';
    			
    			$('.react-modal__content-wrap').html(str);
    		},
    		error : function(){
    			alert('에러!')
    		}
    		
    	})

    }
    
    function finishReview(){
    	window.location.reload();
    }
    function reviewPictureSave(){
    	if(!$('input:radio[name=star]:checked').val()){
    		alert('만족도를 체크해주세요.');
    		return;
    	}
    	
    	if($('textarea').val() == ""){
    		alert('리뷰내용을 최소 20자 이상 작성해주세요');
    		return;
    	}
    	if($("#uploadFile").val() == ""){
    		reviewRegist();
    	}else{
    	//form 태그 양식을 객체화	
    	var form = new FormData($('form[role="imageForm"]')[0]);
    	
    	$.ajax({
    		url:"<%=request.getContextPath()%>/review/savePicture",
    		data:form,
    		type:'post',
    		processData:false,
    		contentType:false,
    		success:function(data){    			
    			//저장된 파일명 저장.
    			$('input[name="picture"]').val(data);
    			reviewRegist();
    		},
    		error:function(error){
    			alert("현재 사진 업로드가 불가합니다.\n 관리자에게 연락바랍니다.");
    		}
    	});
    	}
    }
	</script>
<%@ include file="/WEB-INF/views/common/common_js.jsp" %>

