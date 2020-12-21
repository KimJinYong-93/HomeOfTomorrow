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
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="<%=request.getContextPath() %>/review/list" class="sub_name">나의 리뷰 <span class="count displaynone">()</span></a>
	</li>
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="<%=request.getContextPath() %>/member/userModifyForm" class="sub_name">설정 <span class="count displaynone">()</span></a>
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
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean" rel="stylesheet">
    <script src="https://static.ohou.se/assets/v3/layouts/navigation_stub-2afc6570f26c12358127eb3d1d8b54fc3aa1df1f1a041c239fcf21d9abcade4a.js"></script>
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/layout/application_react-1e92c7147066d0282bd14c1c54ad6f4eda35ac557fc7d3743f26f3ce17a3802d.css" />
  
    <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css" />
	<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/App-3e49e6d3.css" />
	<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/42-16e469a0.chunk.css" />
	<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/templates-Review-MyHome-MyReviewList-fe78dbee.chunk.css" />

		<div class="layout">
		 <div class="my-review-list container">
			<div class="my-review-list__filter">
				<button type="button" class="my-review-list__filter__item">베스트순</button>
				<button type="button"
					class="my-review-list__filter__item my-review-list__filter__item--select">최신순</button>
			</div>
			<div class="virtualized-list my-review-list__list"
				style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px)">
				<div>
					<c:forEach items="${reviewList }" var="list">
					<div class="my-review-list__list__item">
						<div class="my-review-list__list__item__wrap">
							<div class="my-review-list__list__item__product">
								<a class="my-review-list__list__item__product__name"
									href="/productions/117560/selling">[${list.orderDetail.goods.cname }]&nbsp;${list.orderDetail.goods.gname } </a>
								<div class="my-review-list__list__item__product__explain">${list.orderDetail.order_bd.op_choose }</div>
								<div class="my-review-list__list__item__product__info">
									<span class="my-review-list__list__item__product__info__star"
										aria-label="별점 5.0점">
										<c:forEach begin="1" end="${list.review.score }">
										<svg fill="#35C5F0" width="1em"
											height="1em" preserveAspectRatio="xMidYMid meet"
											viewBox="0 0 16 16">
											<defs>
											<path id="star-path-1.000"
												d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
											<clipPath id="star-clip-1.000">
											<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
											<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
											<use clip-path="url(#star-clip-1.000)"
												xlink:href="#star-path-1.000"></use></svg>
										</c:forEach>
										</span>
									<div class="my-review-list__list__item__product__info__text">${loginUserDetail.nickname }
										| <fmt:formatDate value="${list.review.reg_dt }" pattern="yyyy.MM.dd"/> | 내일의집 리뷰</div>
								</div>
								<div class="my-review-list__list__item__product__content">${list.review.content }</div>
							</div>
							<div style="width: 70px;">
								<div class="my-review-list__list__item__insert" onclick="reviewModifyModalOpen('${list.review}', '${list.orderDetail }')" style="font-size: 15px; display: inline-block;">수정</div>
								<div class="my-review-list__list__item__insert" style="font-size: 15px;display: inline-block; position: relative; left: 30px;" onclick="deleteReview(${list.review.gcode},${list.review.ocode });">삭제</div>
								<c:if test="${list.review.picture ne null}">
								<img class="my-review-list__list__item__image"
									src="<%=request.getContextPath()%>/review/getPicture?picture=${list.review.picture}">
								</c:if>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
				<div>
				</div>
			</div>
		</div> 
	</div>
			<div class="toast-message-root"></div>
			<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
			<script type="text/javascript">
			function deleteReview(gcode,ocode){
				
				if(confirm('정말 리뷰를 삭제하시겠습니까?')){
					location.href='<%=request.getContextPath()%>/review/deleteReview?gcode='+gcode+'&ocode='+ocode
				}
			}
			
			</script>
			<%@ include file="reviewModifyModal.jsp"%>

</div>
