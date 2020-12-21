<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
 <script src="https://static.ohou.se/assets/v3/logging-69d1a145b1872071cd6479677379b6bbe429e845a932730a150eab3576275e7f.js" async="async"></script>
 <script src="https://static.ohou.se/assets/v3/amplitude_bridge-16d2ae2fff38dc913ff70e367d7c1906d2a29b9304bc08b92cf695e8ca5f13ec.js" async="async"></script>
 <script type="text/javascript" src="https://analysis.adinsight.co.kr/emnet/trs_esc.js" defer></script>
 <script src="https://cdn.ravenjs.com/3.26.4/raven.min.js" crossorigin="anonymous"></script>
  
 <link rel="alternate" href="android-app://net.bucketplace/http/ohou.se/deep"/>
 <link rel="apple-touch-icon" sizes="57x57" href="/assets/bookmark_icon/favicon_57x57.png"/>
 <link rel="apple-touch-icon" sizes="72x72" href="/assets/bookmark_icon/favicon_72x72.png"/>
 <link rel="apple-touch-icon" sizes="114x114" href="/assets/bookmark_icon/favicon_114x114.png"/>
 <link rel="apple-touch-icon" sizes="144x144" href="/assets/bookmark_icon/favicon_144x144.png"/>
 <link rel="shortcut icon" href="/assets/bookmark_icon/favicon_144x144.png"/>
 <link href="https://static.ohou.se/assets/favicon-186ac0d991a44c522f984d86e6a50d24c65b7b3a02a004ba7e13f5722aabd952.png" rel="shortcut icon"/>

 <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean" rel="stylesheet">
 <script src="https://static.ohou.se/assets/v3/layouts/navigation_stub-2afc6570f26c12358127eb3d1d8b54fc3aa1df1f1a041c239fcf21d9abcade4a.js"></script>
  
 <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css" />
 <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/2-efe4945d.chunk.css" />
 <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/7-7f96bff5.chunk.css" />
 <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/9-d91eb381.chunk.css" />
 <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/13-69bdf3b3.chunk.css" />
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/basket.css">
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/basket2.css">
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/basket3.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>


<div class="commerce-cart-wrap">
	<div class="container">
		<div class="commerce-cart row">
			<div class="commerce-cart__content-wrap col-12 col-md-7 col-lg-8">
				<div class="commerce-cart__content">
					<div data-sticky-enabled="false" data-sticky-disabled="true"
						data-sticky-always="false" data-sticky-ignore="false"
						data-direction="top" data-offset="81"
						class="sticky-container commerce-cart__header-wrap">
						<div class="sticky-child commerce-cart__header"
							style="position: relative;">
							<span class="commerce-cart__header__left">
								<label class="_3xqzr _4VN_z"><div class="_3zqA8">
										<input type="checkbox" class="_3UImz" value="" id="check_all">
											<span class="_2mDYR">
												<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR">
													<path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path>
												</svg>
											</span>
									</div>
									<span class="_1aN3J">
									<span class="commerce-cart__header__caption">모두선택</span></span>
								</label>
							</span>
							<span class="commerce-cart__header__right">
						</div>
					</div>
					<ul class="commerce-cart__content__group-list">
						<li class="commerce-cart__content__group-item">
							<article class="commerce-cart__group">
								<!-- ////////////////////////그냥 회사이름으로 대체가능/////////////////////////// -->
								<h1 class="commerce-cart__group__header">배송업체명 넣는곳</h1>
								<ul class="commerce-cart__group__item-list">
									<li class="commerce-cart__group__item"><article
											class="commerce-cart__delivery-group">
											<ul class="commerce-cart__delivery-group__product-list">
												<c:forEach items="${cartList}" var="goods">
													<li class="commerce-cart__delivery-group__product-item">
														<article class="carted-product">
															<div class="carted-product__select">
																<div class="_3zqA8">
																	<input type="checkbox" class="_3UImz" value="" checked="checked" style="margin: 14px 10px 0;">
																		<span class="_2mDYR">
																			<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR">
																				<path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path>
																			</svg>
																		</span>
																</div>
															</div>
															<input type="hidden" name="gcode" class="gcode" value="${goods.gcode }">
															<a class="product-small-item product-small-item--clickable" href="<%=request.getContextPath() %>/goods/detail?gcode=${goods.gcode}">
																<div class="product-small-item__image">
																	<img alt=""
																		src="<%=request.getContextPath() %>/goods/getPicture?picture=${goods.picture}"
																		srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160436684122354657.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160436684122354657.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160436684122354657.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
																</div>
																<div class="product-small-item__content">
																	<!-- /////////////////////상품등록게시글 타이틀///////////////////// -->
																	<h1 class="product-small-item__title title">${goods.gname }</h1>
																	<!-- ////////////////////연결할지말지 물어보기///////////////////// -->
																	<p class="product-small-item__caption">무료배송 | 일반택배</p>
																</div></a>
															<button class="carted-product__delete" type="button"
																aria-label="삭제">
																<svg width="12" height="12" viewBox="0 0 12 12"
																	fill="currentColor" preserveAspectRatio="xMidYMid meet">
																	<path fill-rule="nonzero"
																		d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg>
															</button>
															<ul class="carted-product__option-list">
																<li class="carted-product__option-list__item priceLi"><article
																		class="selling-option-item">
																		<input type="hidden" class="startPrice" value="${goods.price }">
																		<!-- ////////////////////옵션벨류연결///////////////////// -->
																		<h2 class="selling-option-item__name op_choose">${goods.op_choose }</h2>
																		<button class="selling-option-item__delete" type="button" aria-label="삭제">
																			<svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
																				<path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path>
																			</svg>
																		</button>
																		<div class="selling-option-item__controls">
																			<div class="selling-option-item__quantity">
																				<div class="input-group select-input option-count-input">
																					<select class="form-control optionCount" id="option-count" >
																						<option value="1">1</option>
																						<option value="2">2</option>
																						<option value="3">3</option>
																						<option value="4">4</option>
																						<option value="5">5</option>
																						<option value="6">6</option>
																						<option value="7">7</option>
																						<option value="8">8</option>
																						<option value="9">9</option>
																						<option value="10">10</option>
																					</select>
																						<span class="select-input__icon">
																							<svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;">
																								<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
																							</svg>
																						</span>
																				</div>
																			</div>
																			<p class="selling-option-item__price">
																				<!-- ///////////////////////////상품갯수or(id="option-count)*상품가격///////////////////////// -->
																				<span class="selling-option-item__price__number goodsPrice option-price">${goods.price }</span>원
																			</p>
																		</div>
																	</article></li>
															</ul>
															<div class="carted-product__footer">
															</div>
														</article></li>
												</c:forEach>
												
											</ul>
										</article></li>
								</ul>
							</article></li>
					</ul>
					<dl class="commerce-cart__summary commerce-cart__content__summary">
						<div class="commerce-cart__summary__row">
							<dt>총 상품금액</dt>
							<dd>
								<span class="number">319,000</span>원
							</dd>
						</div>
						<div class="commerce-cart__summary__row">
							<dt>총 배송비</dt>
							<dd>
								+ <span class="number">0</span>원
							</dd>
						</div>
						<div class="commerce-cart__summary__row commerce-cart__summary__row--total">
							<dt>결제금액</dt>
							<dd><span class="number">198,000</span>원</dd>
						</div>
					</dl>
				</div>
			</div>
			<div class="commerce-cart__side-bar-wrap col-12 col-md-5 col-lg-4">
				<div data-sticky-enabled="false" data-sticky-disabled="false"
					data-sticky-always="false" data-sticky-ignore="false"
					data-direction="top" data-offset="81"
					class="sticky-container commerce-cart__side-bar-container"
					style="position: sticky; top: 81px;">
					<div class="sticky-child commerce-cart__side-bar"
						style="position: relative;">
						<dl class="commerce-cart__summary commerce-cart__side-bar__summary">
							<div class="commerce-cart__summary__row">
								<dt>총 상품금액</dt>
								<dd>
									<span class="number totalPrice" id="totalPrice"></span>원
								</dd>
							</div>
							<div class="commerce-cart__summary__row">
								<dt>배송비</dt>
								<dd>
									+<span class="number" id="">0</span>원
								</dd>
							</div>
							<div class="commerce-cart__summary__row commerce-cart__summary__row--total">
								<dt>결제금액</dt>
								<dd>
									<span class="number totalPrice" id=""></span>원
								</dd>
							</div>
						</dl>
						<div class="commerce-cart__side-bar__order">
							<form action="<%=request.getContextPath() %>/payment/kakaoPay" method="post" role="form">
								<button class="button button--color-blue button--size-50 button--shape-4 commerce-cart__side-bar__order__btn" type="button" onclick="kakaoPay()">
									결제하기<img src="<%=request.getContextPath() %>/resources/_dj/img/payment_icon_yellow_small.png" style="height: 20px;">
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div data-sticky-enabled="false" data-sticky-disabled="false"
		data-sticky-always="false" data-sticky-ignore="false"
		data-direction="bottom" data-offset="0"
		class="sticky-container commerce-cart__footer-wrap"
		style="position: sticky; bottom: 0px;">
		<div class="sticky-child commerce-cart__footer"
			style="position: relative;">
			<div class="commerce-cart__footer__total">
				<span class="count">1개 </span><span class="cost">198,000원</span>
			</div>
			<button
				class="button button--color-blue button--size-45 button--shape-4 commerce-cart__footer__order" type="button">바로구매
			</button>
		</div>
	</div>
</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
var gcodes = $('.gcode');
var gcode = "";
for(var i = 0; i < gcodes.length; i++){
	if(i == 0){
		gcode += $(gcodes[i]).val();
	}else{
		gcode += "/" + $(gcodes[i]).val();
	}
}

var volums = $('.optionCount');
var vol = "";
for(var i = 0; i < volums.length; i++){
	if(i == 0){
		vol += $(volums[i]).val();
	}else{
		vol += "/" + $(volums[i]).val();
	}
}

var opDatas = $('.op_choose');
var op_choose = "";
for(var i = 0; i < opDatas.length; i++){
	if(i == 0){
		op_choose += $(opDatas[i]).text();
	}else{
		op_choose += "," + $(opDatas[i]).text();
	}
}

var titles = $('.title');
var title = "";
for(var i = 0; i < titles.length; i++){
	if(i == 0){
		title += $(titles[i]).text();
	}else if(i == titles.length - 1){
		title += "외 " + (titles.length - 1) + "건";
	}
}

//alert(title)

sum();

function sum(){
	var price = $('body').find('.option-price');
	var priceSum = 0
	for(var i = 0; i < price.length; i++){
		priceSum += parseInt($(price[i]).text());
	}
	var total = $('.totalPrice')
	$(total).text(priceSum);
}

$('._3UImz').on('change', function(){
	var totalPrice = $('#totalPrice').text();
	var price = ($(this).closest('li')).find($('.option-price'));
	if($(this).is(":checked") == false){
		totalPrice = parseInt(totalPrice) - parseInt($(price).text());
		$('.totalPrice').html(totalPrice);
	}else{
		totalPrice = parseInt(totalPrice) + parseInt($(price).text());
		$('.totalPrice').html(totalPrice);
	}
});

$('.optionCount').on('change',function(){
	var count = $(this).val();	// 선택된 수량
	var parentLi = $(this).closest($('.priceLi')); // 선택된거의 부모 li 찾기
	var startPrice = parentLi.find($('.startPrice'));
	var startPrice = startPrice.val();
	var child = parentLi.find('.option-price');	// 선택된거 부모에서 가격 들어가는 태그(자식)찾기
	
	var price = parseInt(count) * startPrice; /*198000이 들어간부분에 가격연결할 수 있나?*/

	child.html(price);
	sum();
});

function payment(){
	$('form[role="form"]').submit();
}

$(function(){
    //전체선택 체크박스 클릭
    $("#check_all").click(function(){
        //전체선택 체크박스가 체크된상태일경우
        if($("#check_all").prop("checked")) {
            //input type 이 checkbox인 경우 전부 선택
            $("input[type=checkbox]").prop("checked",true);
        } else {
            //input type 이 checkbox인 경우 전부 해제
            $("input[type=checkbox]").prop("checked",false);
        }
    });
})

//수량*금액 
$(function(){

});

function kakaoPay(){
    var IMP = window.IMP; // 생략가능
    IMP.init('imp28544317'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
    var msg;
    
    IMP.request_pay({
        pg : 'kakaopay',
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : title,
        amount : $('#totalPrice').text(),
        buyer_email : '${loginUserDetail.email}',
        buyer_name : '${loginUser.id}',
        buyer_tel : '${loginUserDetail.hp}',
        buyer_addr : '${loginUserDetail.address1}'+' ${loginUserDetail.address2}',
        buyer_postcode : '${loginUserDetail.zipcode}',
        custom_data : {
        	gcode : gcode,
        	vol : vol,
        	op_choose : op_choose
        }
        //m_redirect_url : 'http://www.naver.com'
    }, function(rsp) {
        if ( rsp.success ) {
            //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
            jQuery.ajax({
                url: "<%=request.getContextPath()%>/payment/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                type: 'POST',
                dataType: 'json',
                data: {
                	price : rsp.paid_amount,
                	gname : rsp.name,
                	gcode : rsp.custom_data.gcode,
                	payway : rsp.pay_method,
                	vol : rsp.custom_data.vol,
                	op_choose : rsp.custom_data.op_choose
                }
                    //기타 필요한 데이터가 있으면 추가 전달
                
            }).done(function(data) {
            	
                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.paid_amount;
                    msg += '카드 승인번호 : ' + rsp.apply_num;
                    
                    alert(msg);
                } else {
                    //[3] 아직 제대로 결제가 되지 않았습니다.
                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                }
            });
            //성공시 이동할 페이지
            location.href='<%=request.getContextPath()%>/order/paySuccess?msg='+msg;
            <%-- location.href='<%=request.getContextPath()%>/payment/Success'; --%>
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            //실패시 이동할 페이지
            location.href='<%=request.getContextPath()%>/order/cartList?id=${loginUser.id}';
            alert(msg);
        }
    });
    
};

</script>

