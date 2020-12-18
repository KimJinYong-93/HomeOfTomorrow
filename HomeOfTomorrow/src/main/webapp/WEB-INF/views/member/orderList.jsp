<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
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
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="<%=request.getContextPath() %>/member/orderList" class="sub_name">나의 쇼핑 <span class="count displaynone">()</span></a>
	</li>
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="/category/subscription/54/" class="sub_name">나의 리뷰 <span class="count displaynone">()</span></a>
	</li>
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="/category/subscription/54/" class="sub_name">설정 <span class="count displaynone">()</span></a>
	</li>
	</c:if>
	<c:if test="${loginUser.authority eq 'ROLE_COMPANY' }">
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="/category/subscription/54/" class="sub_name">나의 상품 <span class="count displaynone">()</span></a>
	</li>
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="/category/subscription/54/" class="sub_name">설정 <span class="count displaynone">()</span></a>
	</li>
	</c:if>
	
	<!-- //참고 -->
	    </ul>
	</div>
  <!-- phone 즐겨찾기 아이콘 설정 -->
  <link rel="alternate" href="android-app://net.bucketplace/http/ohou.se/deep"/>
  <link href="https://static.ohou.se/assets/favicon-186ac0d991a44c522f984d86e6a50d24c65b7b3a02a004ba7e13f5722aabd952.png" rel="shortcut icon"/>

  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean" rel="stylesheet">
  <script src="https://static.ohou.se/assets/v3/layouts/navigation_stub-2afc6570f26c12358127eb3d1d8b54fc3aa1df1f1a041c239fcf21d9abcade4a.js"></script>
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/layout/application_react-1e92c7147066d0282bd14c1c54ad6f4eda35ac557fc7d3743f26f3ce17a3802d.css" />
  
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/App-3e49e6d3.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/2-efe4945d.chunk.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/9-d91eb381.chunk.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/templates-Order-OrderList-OrderList-0bcaebcd.chunk.css" />

		<div class="layout">
			<div class="order-list container">
				<div class="order-list__info">
					<div class="order-list__info__wrap">
						<a class="order-list__info__wrap__content"
							href="/user_shopping_pages/coupons"><svg class="order-list__info__wrap__content__icon--coupon" viewBox="0 0 54 34" preserveAspectRatio="xMidYMid meet">
								<defs></defs>
								<g fill="none" fill-rule="evenodd">
								<path d="M0 0h54v34H0z"></path>
								<path fill="#FFF" stroke="#757575" stroke-width="2" d="M1 7.004v19.992A4 4 0 005.008 31h43.984A4.001 4.001 0 0053 26.996V7.004A4 4 0 0048.992 3H5.008A4.001 4.001 0 001 7.004z"></path>
								<path fill="#757575" d="M7 3h2v28H7z"></path>
								<path stroke="#757575" stroke-linecap="round" stroke-width="4" d="M35 14.273C33.98 12.207 32.076 11 30 11c-3.361 0-6 2.686-6 6.545C24 20.314 26.639 23 30 23c2.076 0 3.98-1.207 5-3.273"></path></g></svg>
							<div class="order-list__info__wrap__content__text">
								<span>쿠폰</span><span class="order-list__info__wrap__content__value">0</span>
							</div></a><a class="order-list__info__wrap__content" href="#"><svg class="order-list__info__wrap__content__icon--point" width="46" height="30" viewBox="0 0 46 30" preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd" transform="translate(-4 -2)">
								<path d="M0 0h54v34H0z"></path>
								<g fill="#FFF" fill-rule="nonzero" stroke="#757575" stroke-width="2" transform="translate(27.4 8.6)">
								<path d="M21.6 4.4H.6v14c0 1.5 4.58 3 11 3 5.58 0 10-1.54 10-3v-14z"></path>
								<ellipse cx="11.1" cy="3.4" rx="10.5" ry="3"></ellipse></g>
								<path stroke="#757575" stroke-linecap="round" stroke-width="2" 	d="M28 17c0 1.66 4.7 3 10.5 3h0c5.8 0 10.5-1.34 10.5-3m-21 5c0 1.66 4.7 3 10.5 3h0c5.8 0 10.5-1.34 10.5-3"></path>
								<circle cx="19" cy="17" r="14" fill="#FFF" fill-rule="nonzero"
									stroke="#757575" stroke-width="2"></circle>
								<path stroke="#757575" stroke-linecap="round" stroke-width="4" d="M13 19h7c1 0 4-1.07 4-3 0-2.28-1.73-4-4-4h-3v12"></path></g></svg>
							<div class="order-list__info__wrap__content__text">
								<span>포인트</span><span
									class="order-list__info__wrap__content__value">77,777</span>
							</div></a>
						<button type="button"
							class="order-list__info__wrap__content order-list__info__wrap__content--button">
							<svg class="order-list__info__wrap__content__icon--rating"
								viewBox="0 0 54 35" preserveAspectRatio="xMidYMid meet">
								<defs></defs>
								<g fill="none" fill-rule="evenodd">
								<path d="M0 0h54v34H0z"></path>
								<g stroke="#757575">
								<g fill="#FFF" stroke-width="2">
								<path d="M50.954 21.579l-3.868 4.741.069 5.582-23.073-8.398 3.763-10.336 23.11 8.41z"></path>
								<path d="M2.664 21.579l3.869 4.741-.069 5.582 23.072-8.398-3.762-10.336-23.11 8.41z"></path></g>
								<path fill="#FFF" stroke-width="2" d="M25.129 31.214a3 3 0 013.076 0l1.243.742a1 1 0 001.347-.307l.798-1.208a3 3 0 012.771-1.335l1.442.13a1 1 0 001.08-.862l.195-1.435A3 3 0 0139 24.534l1.355-.509a1 1 0 00.6-1.245l-.447-1.377a3 3 0 01.684-2.999l1-1.046a1 1 0 000-1.382l-1-1.047a3 3 0 01-.684-2.999l.447-1.377a1 1 0 00-.6-1.245L39 8.8a3 3 0 01-1.918-2.405l-.195-1.434a1 1 0 00-1.08-.862l-1.442.13a3 3 0 01-2.771-1.335l-.798-1.208a1 1 0 00-1.347-.308l-1.243.743a3 3 0 01-3.076 0l-1.243-.743a1 1 0 00-1.347.308l-.798 1.208a3 3 0 01-2.772 1.334l-1.442-.129a1 1 0 00-1.08.862l-.195 1.434A3 3 0 0114.334 8.8l-1.355.51a1 1 0 00-.6 1.244l.448 1.377a3 3 0 01-.685 3l-1 1.046a1 1 0 000 1.382l1 1.046a3 3 0 01.685 3l-.448 1.376a1 1 0 00.6 1.245l1.355.51a3 3 0 011.918 2.404l.195 1.435a1 1 0 001.08.861l1.442-.13a3 3 0 012.772 1.336l.798 1.208a1 1 0 001.347.307l1.243-.742z"></path>
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M20 12.667l3.333 8.666 3.334-8.666m0 0L30 21.333l3.333-8.666"></path></g></g></svg>
							<div class="order-list__info__wrap__content__text">
								<span>구매등급</span><span
									class="order-list__info__wrap__content__value">WELCOME</span>
							</div>
						</button>
					</div>
				</div>
				<div class="order-list__menu">
					<a class="order-list__menu__list"
						href="/user_shopping_pages/order_list?before=12&amp;status=0">
						<div class="order-list__menu__list__wrap">
							<div class="order-list__menu__list__title">입금대기</div>
							<div class="order-list__menu__list__value">0</div>
						</div></a><a class="order-list__menu__list"
						href="/user_shopping_pages/order_list?before=12&amp;status=1">
						<div class="order-list__menu__list__wrap">
							<div class="order-list__menu__list__title">결제완료</div>
							<div class="order-list__menu__list__value">0</div>
						</div></a><a class="order-list__menu__list"
						href="/user_shopping_pages/order_list?before=12&amp;status=2">
						<div class="order-list__menu__list__wrap">
							<div class="order-list__menu__list__title">배송준비</div>
							<div class="order-list__menu__list__value">0</div>
						</div></a><a class="order-list__menu__list"
						href="/user_shopping_pages/order_list?before=12&amp;status=3">
						<div class="order-list__menu__list__wrap">
							<div class="order-list__menu__list__title">배송중</div>
							<div class="order-list__menu__list__value">0</div>
						</div></a><a class="order-list__menu__list"
						href="/user_shopping_pages/order_list?before=12&amp;status=4">
						<div class="order-list__menu__list__wrap">
							<div class="order-list__menu__list__title">배송완료</div>
							<div class="order-list__menu__list__value">0</div>
						</div></a><a class="order-list__menu__list"
						href="/user_shopping_pages/order_list?before=12&amp;status=5">
						<div class="order-list__menu__list__wrap">
							<div class="order-list__menu__list__title">구매확정</div>
							<div class="order-list__menu__list__value">0</div>
						</div></a>
				</div>
				<div>
					<div class="order-list__content">
						<div class="filter">
							<div class="filter-bar">
								<div class="filter-bar__control-list">
									<ul class="filter-bar__control-list__left">
										<li class="filter-bar__control-list__item filter-bar__control-list__item--icon"><button
												class="filter-bar__control-list__icon" type="button"
												title="필터 전체">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
													preserveAspectRatio="xMidYMid meet">
													<path fill="#BDBDBD"
														d="M18.284 4H5.716a.7.7 0 0 0-.61.362.668.668 0 0 0 0 .724l3.963 6.978c.353.632.97 1.348.971 2.076v6.181c.002.24-.054.388.149.558.203.17.343.118.444.095l3.29-1.257c.283-.095.321-.369.317-.676v-4.9c0-.73.338-1.445.69-2.077l3.963-6.978a.668.668 0 0 0 0-.724.7.7 0 0 0-.61-.362z"></path></svg>
											</button>
										</li>
										<li class="filter-bar__control-list__item">
											<div class="drop-down panel-drop-down filter-bar-control">
												<button class="button button--color-blue-light-very-more button--size-50 button--shape-4 filter-bar-control__button active">
													기간
													<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
														<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path></svg>
												</button>
											</div>
										</li>
										<li class="filter-bar__control-list__item"><div
												class="drop-down panel-drop-down filter-bar-control">
												<button class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">
													주문상태
													<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
														<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path></svg>
												</button>
											</div>
										</li>
									</ul>
								</div>
								<ul class="filter-bar__tag-list">
									<li class="filter-bar__tag-list__item"><button
											class="button button--color-blue button--size-50 button--shape-4 filter-bar__tag" type="button">
											선택된기간
											<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
												<path d="M6 4.94L3.879 2.817l-1.061 1.06L4.939 6 2.818 8.121l1.06 1.061L6 7.061l2.121 2.121 1.061-1.06L7.061 6l2.121-2.121-1.06-1.061L6 4.939zM6 12A6 6 0 1 1 6 0a6 6 0 0 1 0 12z"></path></svg>
										</button></li>
									<li class="filter-bar__tag-list__item"><button
											class="filter-bar__tag-list__clear" type="button">초기화</button></li>
								</ul>
							</div>
						</div>
						<c:if test="${fn:length(myOrders) > 0 }">
						<c:forEach items="${myOrders }" var="myOrder">
						<div class="order-list__item">
							<div class="order-list__item__title">
								<div class="order-list__item__title__order">${myOrder.orders.ocode } | <fmt:formatDate value="${myOrder.orders.reg_dt }" pattern="yyyy.MM.dd"/> </div>
								<a class="order-list__item__title__link" href="#">상세보기</a>
							</div>
							<div class="order-list__item__production">
								<div class="order-list__item__production__wrap">
									<div class="order-list__item__production__item">
										<div class="order-list__item__production__item__wrap">
											<img class="order-list__item__production__item__img"
												src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157966092380961868.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c"
												srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157966092380961868.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157966092380961868.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157966092380961868.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c 3x" />
											<div class="order-list__item__production__item__info">
												<div class="order-list__item__production__item__info__wrap">
													<a class="order-list__item__production__item__info__brand"
														href="/brands/home?query=%EB%A7%88%ED%8B%B8%EB%9D%BC">마틸라</a><a
														class="order-list__item__production__item__info__name"
														href="/productions/162919/selling">밸런스 M2 알러지케어
														차렵이불(단품/세트) 9종</a>
												</div>
												<div class="order-list__item__production__item__info__wrap">
													<div
														class="order-list__item__production__item__info__option">컬러:
														02. 오트밀 / 구성: SS이불패드세트</div>
													<div
														class="order-list__item__production__item__info__price">78,800원
														| 1개</div>
													<div
														class="order-list__item__production__item__info__status">구매확정
														| 일반택배배송</div>
												</div>
											</div>
										</div>
										<div class="order-list__item__production__item__delivery">
											<button
												class="button button--color-blue-inverted button--size-50 button--shape-4 order-list__item__production__item__delivery__btn">배송추적</button>
											<button
												class="button button--color-blue button--size-50 button--shape-4 order-list__item__production__item__delivery__btn">리뷰작성</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
					</c:if>
						</div>
					</div>
				</div>
			</div>
			<div class="toast-message-root"></div>


<script src="https://static.ohou.se/assets/v3/application_react-39c024d42df4dc70afcdc802be03a3c9af0e4e38c629c9255ff5b66c1abd9aa0.js"></script>
<script src="https://static.ohou.se/dist/js/vendor-9bc9135a2316948b78ce.js"></script>

<script src="https://static.ohou.se/dist/js/2-7e950e574f58b096f0e9.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/9-951da074d502cd3e22c2.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/templates-Order-OrderList-OrderList-d2df50fd5c490592d2a8.chunk.js"></script>  <script src="https://static.ohou.se/dist/js/4-17bf1875b96b532caa79.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/5-929b9fffe7ae5368ab47.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/6-f9a7aa948033fe2a7698.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/8-d265326c5db90f2ab65d.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/10-b59309a75c6f37163459.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/11-9849b06d57186c4133de.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/18-a2c672c31d65f840159c.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/App-cf611cec6ec3494b7a1e.js"></script>
  
<script type="text/javascript" async="async" src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>

</div>
