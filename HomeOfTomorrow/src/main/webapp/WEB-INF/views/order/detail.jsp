<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
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
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="<%=request.getContextPath() %>/order/list" class="sub_name">주문 내역 <span class="count displaynone">()</span></a>
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
  
  <!-- webpack vendor module -->

  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v3/components/modal-f0d0d6d3de7c6af277cedf14e63e81f35de21fddb39c29158ee5240d6ef4698a.css" />
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v3/components/modal/unsigned_expert_promotion-0e6dfcdbd7a2aff40984568868c2cfb0ac42b6461cb9441fd461b6aaa7738a89.css" />
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v3/components/autocomplete-b90e5093fd6272bf968b24073411e196f032d826a99ce7c79f61f975b6cfef98.css" />
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v3/bucket_ui/_form-c79020f23c73f20e31215835e55fadfe4ac96dd0627a1200348beaff9ce8da25.css" />
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v2/application-eeca9ce7d84cca2484d2e19c85185836da4bc1ae6a1079b717951a546b356bf3.css" />
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v3/bucket_ui/bucket-icons-666f525bc684b3218656f27b690456c21b5f2dead1e01573259a2a5dd0614170.css" />

  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/LayoutNavigation-bce2cf3e.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/LayoutFooter-48994b9b.css" />

  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v2/orders/show-4a12fcbefcf50eb9bfa416c1d51c4b25e1c449859c4dd562a6d936b6aa191293.css" />
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v2/order_options/recommand_review-f392b6f818b956467c417ce9c481da6e7736eb30c3e01487c95a08422393825d.css" />
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v2/production_reviews/new-3241cd5d646a293988e69eea4d5235b77fae32204d7eee55bdf91e0beec37b98.css" />
  <link rel="stylesheet" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css"/>
  <link rel="stylesheet" href="https://static.ohou.se/dist/css/36-d4e921c1.chunk.css"/>


	<div class="layout">
		<div id="wrapper" class="aws">
			<div id="body" class="orders show">
				<div class="contents">
					<div class="point-info point-info--mobile">
						<ul>
							<li>구매확정시 7일 후 포인트 적립</li>
							<li>리뷰작성시 각 상품당 <span>포토 500P 일반 100P</span></li>
						</ul>
					</div>
					<div class="title">주문상세정보</div>
					<!-- finish title -->

					<div id="detail_info">
						<div class="point-info point-info--pc">
							<ul>
								<li>구매확정시 7일 후 포인트 적립</li>
								<li>리뷰작성시 각 상품당 <span>포토 500P 일반 100P</span></li>
							</ul>
						</div>

						<div class="subtitle">
							주문번호 : ${orderDetail.orders.ocode } | 주문일자 :
							<fmt:formatDate value="${orderDetail.orders.reg_dt }"
								pattern="yyyy.MM.dd" />
						</div>

						<div class="table">
							<c:forEach items="${orderDetail.orderdetail }" var="detail">
								<div class="order_list">
									<div class="product_image">
										<div class="image"
											style="background-image: url('<%=request.getContextPath()%>/goods/getPicture?picture=${detail.goods.picture }')"></div>
									</div>

									<div class="product_detail">
										<a class="name" target="_blank"
											href="/productions/162919/selling">[${detail.goods.bname}]
											${detail.goods.cname }</a>

										<div class="option">${detail.order_bd.op_choose }</div>
										<div class="cost">
											<fmt:formatNumber type="number">${detail.goods.price }</fmt:formatNumber>
											원
										</div>
										<div class="count">| ${detail.order_bd.vol}개</div>

										<div class="status">일반택배배송</div>
									</div>

									<div class="button_set">
										<div class="fake"></div>
										<div class="buttons">
											<a class='button blue' href="javascript:reviewModalOpen();">리뷰작성</a>
										</div>
									</div>
								</div>
							</c:forEach>

							<div class="order_delivery">
								<a
									onclick="window.open(this.href, &#39;오늘의집 - 배송조회&#39;, &#39;height=600, width=350&#39;);return false;"
									class="button two"
									href="/order_options/49144855/delivery_info?email=rkdwldnjs123%40naver.com"
									style="color: gray;">배송추적</a>
							</div>
						</div>
					</div>
					<!-- finish detail_info -->

					<!-- finish vbank_info -->

					<div id="payment_info">
						<div class="subtitle">결제 정보</div>

						<div class="wrap_panel divide one">
							<div class="field">
								<div class="title">상품금액</div>
								<div class="content">
									<fmt:formatNumber type="number">${payment.pay}</fmt:formatNumber>
									원
								</div>
							</div>
							<div class="field">
								<div class="title">사용 포인트</div>
								<div class="content">(-) 0 P</div>
							</div>
							<div class="field">
								<div class="title">쿠폰 할인가</div>
								<div class="content">(-) 0 P</div>
							</div>
							<div class="field">
								<div class="title">결제금액</div>
								<div class="content emphasis">
									<fmt:formatNumber type="number">${payment.pay}</fmt:formatNumber>
									원
								</div>
							</div>
							<div class="field">
								<div class="title">결제방법</div>
								<div class="content">${payment.payway }</div>
							</div>
						</div>

						<div class="wrap_panel divide two">
							<div class="field">
								<div class="title">주문자</div>
								<div class="personal">${loginUserDetail.name } (닉네임:
									${loginUserDetail.nickname })</div>
							</div>
							<div class="field">
								<div class="title">연락처</div>
								<div class="personal">${loginUserDetail.hp }</div>
							</div>
							<div class="field">
								<div class="title">이메일</div>
								<div class="personal">${loginUserDetail.email }</div>
							</div>
						</div>
					</div>
					<!-- finish payment_info -->

					<div id="delivery_info" style="margin: 0px;">
						<div class="subtitle">배송지 정보</div>

						<div class="wrap_panel">
							<div class="field">
								<div class="title">수령인</div>
								<div class="content">${payment.recipient }</div>
							</div>
							<div class="field">
								<div class="title">연락처</div>
								<div class="content">${payment.rcp_hp }</div>
							</div>
							<div class="field">
								<div class="title">주소</div>
								<div class="content">(${payment.zipcode })
									${payment.address1 }&nbsp;${payment.address2 }</div>
							</div>
							<div class="field">
								<div class="title">배송메모</div>
								<div class="content">
									<div class="memo">${payment.dv_memo }</div>
								</div>
							</div>
						</div>
					</div>
					<!-- finish delivery_info -->

				</div>

			</div>
		</div>
		<div class="toast-message-root"></div>
		<%@ include file="reviewModal.jsp"%>
<!-- 		<script
			src="https://static.ohou.se/assets/v3/application_react-39c024d42df4dc70afcdc802be03a3c9af0e4e38c629c9255ff5b66c1abd9aa0.js"></script>
		<script
			src="https://static.ohou.se/dist/js/vendor-9bc9135a2316948b78ce.js"></script>

		<script
			src="https://static.ohou.se/dist/js/2-7e950e574f58b096f0e9.chunk.js"></script>
		<script
			src="https://static.ohou.se/dist/js/9-951da074d502cd3e22c2.chunk.js"></script>
		<script
			src="https://static.ohou.se/dist/js/templates-Order-OrderList-OrderList-d2df50fd5c490592d2a8.chunk.js"></script>
		<script
			src="https://static.ohou.se/dist/js/4-17bf1875b96b532caa79.chunk.js"></script>
		<script
			src="https://static.ohou.se/dist/js/5-929b9fffe7ae5368ab47.chunk.js"></script>
		<script
			src="https://static.ohou.se/dist/js/6-f9a7aa948033fe2a7698.chunk.js"></script>
		<script
			src="https://static.ohou.se/dist/js/8-d265326c5db90f2ab65d.chunk.js"></script>
		<script
			src="https://static.ohou.se/dist/js/10-b59309a75c6f37163459.chunk.js"></script>
		<script
			src="https://static.ohou.se/dist/js/11-9849b06d57186c4133de.chunk.js"></script>
		<script
			src="https://static.ohou.se/dist/js/18-a2c672c31d65f840159c.chunk.js"></script>
		<script
			src="https://static.ohou.se/dist/js/App-cf611cec6ec3494b7a1e.js"></script>

		<script type="text/javascript" async="async"
			src="https://cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script> -->
		
	</div>