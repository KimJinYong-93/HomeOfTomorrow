<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div id="container">     
	<div class="xans-element- xans-product xans-product-menupackage" style="margin: 0px;"><div style="margin: 0px;" class="xans-element- xans-product xans-product-headcategory title "><p class="title_img "></p>
    <div id="main_section_2" style="margin: 0px;" class="xans-element- xans-product xans-product-listmain-1 xans-product-listmain xans-product-1 main_section"><div style="margin: 0px;" class="title scroll-fade motion1">
        <!--------------------------------------------------------------------------------------------------
            ※ 타이틀 수정 - 텍스트만 변경바랍니다.
        --------------------------------------------------------------------------------------------------->
        <h2>MY PAGE </h2>
    </div>
    </div>
	</div>
	<ul class="menuCategory" style="margin: 0px;">
	<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. --><li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="<%=request.getContextPath() %>/member/myPage?id=${loginUser.id}" class="sub_name">프로필 <span class="count displaynone">()</span></a>
	</li>
	<c:if test="${loginUser.authority eq 'ROLE_USER' }">
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="<%=request.getContextPath() %>/order/list" class="sub_name">주문 내역<span class="count displaynone">()</span></a>
	</li>
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="<%=request.getContextPath() %>/review/list" class="sub_name">나의 리뷰 <span class="count displaynone">()</span></a>
	</li>
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="<%=request.getContextPath() %>/member/userModifyForm" class="sub_name">설정 <span class="count displaynone">()</span></a>
	</li>
	</c:if>
	<c:if test="${loginUser.authority eq 'ROLE_COMPANY' }">
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="/category/subscription/54/" class="sub_name">나의 상품 <span class="count displaynone">()</span></a>
	</li>
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="<%=request.getContextPath() %>/member/companyModifyForm" class="sub_name">설정 <span class="count displaynone">()</span></a>
	</li>
	</c:if>
	
	<!-- //참고 -->
	    </ul>
	</div>

  <meta name="csrf-param" content="authenticity_token" />
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v3/bucket_ui/bucket_ui-cf437a161bdb44b28d08d72550bb85e52b07cf425b26f21c6c412cc524af5a4c.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/LayoutNavigation-bce2cf3e.css" /> 
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css" />
	<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/App-3e49e6d3.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/16-5219d8c5.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/templates-UserSetting-EditUserInfo-e20dec3d.chunk.css" />
  <style>
  	.edit-user-info__form-item__title{
  		font-size: 15px;
  	}
  </style>

	<div data-react-class="UserShow" class="page">
		<div class="user-show-layout">
			<div class="container">
				<div class="edit-user-info__wrap container">
					<div class="edit-user-info__header">
						<div class="edit-user-info__header__title">회원정보수정</div>
						<a class="edit-user-info__header__withdrawals"
							href="javascript:enabled();">탈퇴하기</a>
					</div>
					<form>
					  <div class="edit-user-info__form-item">
							<div class="edit-user-info__form-item__title">
								이름
							</div>
							<div class="expert-form-group edit-user-info__form-item__group">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<div class="edit-user-info__form-item__field">
											<div class="edit-user-info__input">
												<input value="${loginUserDetail.name }" class="form-control" id="name">
												<div class="edit-user-info__input__error">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="edit-user-info__form-item">
							<div class="edit-user-info__form-item__title">별명</div>
							<div class="expert-form-group edit-user-info__form-item__group">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<div class="edit-user-info__form-item__field">
											<input maxlength="41" value="${loginUserDetail.nickname }" class="form-control" id="nickname">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="edit-user-info__form-item">
							<div class="edit-user-info__form-item__title">
								이메일
							</div>
							<div class="expert-form-group edit-user-info__form-item__group">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<div class="edit-user-info__form-item__field">
											<div class="input-group email-input">
												<span class="email-input__local">
												<input class="form-control" value="${loginUserDetail.email }" placeholder="이메일" size="1" id="email"></span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="edit-user-info__form-item">
							<div class="edit-user-info__form-item__title">성별</div>
							<div class="expert-form-group edit-user-info__form-item__group">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<div
											class="edit-user-info__form-item__field edit-user-info__form-item__field--sex">
											<c:set value="checked='checked'" var="male" />
											<c:set value="" var="female" />
											<c:if test="${loginUserDetail.gender eq 'female' }">
												<c:set value="" var="male"/>
												<c:set value="checked='checked'" var="female"/>
											</c:if>
											<ul class="radio-group-input" style="width: 70%;">
												<li><div class="form-radio">
														<label class="form-radio-label">
														<input type="radio" class="form-radio" name="gender" value="male" ${male }>
														<span
															class="radio-img"></span><span>남성</span></label>
													</div></li>
												<li><div class="form-radio">
														<label class="form-radio-label"><input
															type="radio" class="form-radio" name="gender" value="female" ${female }><span
															class="radio-img"></span><span>여성</span></label>
													</div></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="edit-user-info__form-item">
							<div class="edit-user-info__form-item__title">생년월일</div>
							<div class="expert-form-group edit-user-info__form-item__group">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<div class="edit-user-info__form-item__field">
											<div class="DayPickerInput">
												<input type="date" value='<fmt:formatDate value="${loginUserDetail.birthday }" pattern="yyyy-MM-dd"/>' placeholder="날짜를 선택해주세요"
													class="form-control date-input__text" id="birth">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="edit-user-info__form-item">
							<div class="edit-user-info__form-item__title">
								연락처
							</div>
							<div class="expert-form-group edit-user-info__form-item__group">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<div class="edit-user-info__form-item__field">
											<div class="input-group email-input">
												<span class="email-input__domain">
												<select class="form-control" id="hp">
														<option selected="" value="010">010</option>
														<option value="011">011</option>
														<option value="017">017</option>
														<option value="060">060</option>
														</select></span>
												<span class="email-input__separator">-</span>
												<span class="email-input__local">
												<input class="form-control" value="${splitHp[1] }" id="hp1" size="1"></span>
												<span class="email-input__separator">-</span>
												<span class="email-input__local">
												<input class="form-control" value="${splitHp[2] }" id="hp2" size="1"></span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="edit-user-info__form-item">
							<div class="edit-user-info__form-item__title">프로필 이미지</div>
							<div class="expert-form-group edit-user-info__form-item__group">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<div
											class="edit-user-info__form-item__field edit-user-info__form-item__field--profile">
											<div class="image-single-input-wrap">
												<ul class="image-single-input">
													<li class="image-single-input__entry"><button
															class="image-single-input__entry__button" type="button" onclick="upload()">
															<div class="image-single-input__entry__image" style="background-image: url('<%=request.getContextPath()%>/member/getPicture?id=${loginUserDetail.id }'); background-size :  cover;">
															</div>
														</button></li>
												</ul>
											</div>

											<c:set value="block" var="display">
											</c:set>
											<c:if test="${loginUserDetail.picture eq 'noProfilePicture.jpg' }">
												<c:set value="none" var="display"></c:set>
											</c:if>
											<button
												class="button button--color-blue button--size-30 button--shape-4 edit-user-info__form-item__delete"
												type="button" style="display: ${display};" id="pictureDelete" onclick="deletePicture();">
												<svg viewBox="0 0 20 20" preserveAspectRatio="xMidYMid meet">
													<defs>
													<filter id="delete-a" width="134.3%" height="175%"
														x="-17.1%" y="-37.5%" filterUnits="objectBoundingBox">
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
									</div>
								</div>
							</div>
						</div>
						<div class="edit-user-info__form-item">
							<div class="edit-user-info__form-item__title">주소</div>
							<div class="expert-form-group edit-user-info__form-item__group" style="max-width: 290px;">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<div class="edit-user-info__form-item__field">
											<input maxlength="41" value="${loginUserDetail.zipcode }" class="form-control" readonly id="zipcode">
										</div>
									</div>
								</div>
							</div>
									<button
							class="button button--color-blue button--size-50 button--shape-4 edit-user-info__submit"
							type="button" onclick="findAddress()" style="margin-left: 10px; width: 100px; height: 45px; margin-top: 0px; position: relative; top: 15px;">주소 찾기</button>
							
						</div>
							<div class="edit-user-info__form-item">
							<div class="edit-user-info__form-item__title"></div>
							<div class="expert-form-group edit-user-info__form-item__group">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<div class="edit-user-info__form-item__field">
											<input maxlength="41" value="${loginUserDetail.address1 }" class="form-control"  readonly   id="address1">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="edit-user-info__form-item">
							<div class="edit-user-info__form-item__title"></div>
							<div class="expert-form-group edit-user-info__form-item__group">
								<div class="expert-form-group__content">
									<div class="expert-form-group__input">
										<div class="edit-user-info__form-item__field">
											<input maxlength="41" value="${loginUserDetail.address2 }" class="form-control"  id="address2">
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<button
							class="button button--color-blue button--size-50 button--shape-4 edit-user-info__submit"
							type="button" onclick="submit_check();">회원 정보 수정</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</div>
<form role="imageForm">
<input type="file" style="display: none;" id="uploadFile" name="uploadFile" value="">
</form>
<form name="modifyForm" method="post" action="<%=request.getContextPath()%>/member/modify">
	<input type="hidden" name="id" value="${loginUserDetail.id }">
	<input type="hidden" name="name">
	<input type="hidden" name="email">
	<input type="hidden" name="nickname">
	<input type="hidden" name="gender">
	<input type="hidden" name="birthday">
	<input type="hidden" name="hp">
	<input type="hidden" name="picture" value="${loginUserDetail.picture }">
	<input type="hidden" name="zipcode">
	<input type="hidden" name="address1">
	<input type="hidden" name="address2">
</form>

<!--===============================================================================================-->	
	<script src="<%=request.getContextPath()%>/resources/Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/Login_v1/vendor/bootstrap/js/popper.js"></script>
	<script src="<%=request.getContextPath()%>/resources/Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/Login_v1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/Login_v1/vendor/tilt/tilt.jquery.min.js"></script>
<script>
	function enabled(){
		
		if(confirm('정말 내일의 집을 탈퇴하시겠습니까?')){
			location.href="<%=request.getContextPath()%>/member/enabled";
		}
		
	};
	function upload(){
		$('#uploadFile').click();
	}
	
	// 핸드폰번호 4자리 체크
	$('#hp1').on('keyup', function(){
		hp1val = $('#hp1').val().trim();
		if(hp1val.length == 4){
			$('#hp2').focus();
		}
	});
	
	$("#uploadFile").change(function(){
		memberModifyPicture($('input#uploadFile')[0],$("div.image-single-input__entry__image"));
		
	});
	
	function deletePicture(){
		$('#pictureDelete').css('display','none');
 		$('#uploadFile').val("");
		$('input[name="picture"]').val('noProfilePicture.jpg');
		$('div.image-single-input__entry__image').css('background-image','url("/HOT/member/noPicture")');
		
	};
	function submit_check(){
		
		 if($('#name').val() == ""){
			 alert("이름은 필수입니다.");
			 return;
		 }
		 if($('#zipcode').val() == ""){
			 alert("우편번호는 필수입니다.");
			 return;
		 }
		 if($('#address2').val() == ""){
			 alert("주소는 필수입니다.");
			 return;
		 } 
		
		if($("#uploadFile").val() == ""){
    		submit_go();
    	}else{
    	//form 태그 양식을 객체화	
    	var form = new FormData($('form[role="imageForm"]')[0]);
    	
    	$.ajax({
    		url:"<%=request.getContextPath()%>/member/savePicture",
    		data:form,
    		type:'post',
    		processData:false,
    		contentType:false,
    		success:function(data){    			
    			//저장된 파일명 저장.
    			$('input[name="picture"]').val(data);
    			submit_go();
    		},
    		error:function(error){
    			alert("현재 사진 업로드가 불가합니다.\n 관리자에게 연락바랍니다.");
    		}
    	});
    	}

	};
	
	function submit_go(){

		
		$('input[name="name"]').val($('#name').val());
		$('input[name="nickname"]').val($('#nickname').val());
		$('input[name="email"]').val($('#email').val());
		$('input[name="birthday"]').val($('#birth').val());
		var hp = $('#hp').val().trim();
		var hp1 =  $('#hp1').val().trim();
		var hp2 =  $('#hp2').val().trim();
		var realHp = hp + "-" + hp1 + "-" + hp2;
		$('input[name="hp"]').val(realHp);
		$('input[name="zipcode"]').val($('#zipcode').val());
		$('input[name="address1"]').val($('#address1').val());
		$('input[name="address2"]').val($('#address2').val());
		
		
		 var form = $('form[name="modifyForm"]');
		 form.submit();
		
	}
	

</script>
		<%@ include file="/WEB-INF/views/common/common_js.jsp" %>
	