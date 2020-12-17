<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

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
	<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. --><li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="/category/products/53/" class="sub_name">프로필 <span class="count displaynone">()</span></a>
	</li>
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="/category/subscription/54/" class="sub_name">나의 쇼핑 <span class="count displaynone">()</span></a>
	</li>
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="/category/subscription/54/" class="sub_name">나의 리뷰 <span class="count displaynone">()</span></a>
	</li>
	<li style="display:; margin: 0px 5px;" class="xans-element- xans-product xans-product-displaycategory  dj-mov-left-right2 xans-record-"><a href="/category/subscription/54/" class="sub_name">설정 <span class="count displaynone">()</span></a>
	</li>
	<!-- //참고 -->
	    </ul>
	</div>

  <meta name="csrf-param" content="authenticity_token" />
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v3/bucket_ui/bucket_ui-cf437a161bdb44b28d08d72550bb85e52b07cf425b26f21c6c412cc524af5a4c.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/LayoutNavigation-bce2cf3e.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/UserShow-bdfc147a.css" />
  

	<div data-react-class="UserShow" class="page">
		<div class="user-show-layout">
			<div class="container">
				<div class="row">
					<div class="col-12 col-lg-3 wrap--profile">
						<div data-sticky-enabled="false" data-sticky-disabled="false"
							data-sticky-always="false" data-sticky-ignore="false"
							data-direction="top" data-offset="0" class="sticky-container">
							<div class="sticky-child" style="position: relative">
								<div class="user-profile" style="margin-top: 65px;">
									<div class="user-profile__share">
										<button type="button">
											<span class="icon--common-action" style="background-position-x: -360px; background-position-y: -280px; width: 24px; height: 24px"></span>
										</button>
										<div class="share-tooltip--normal-user-show">
											<div class="share-tooltip__tooltip" style="right: 0; top: 100%; transition: opacity .3s ease, transform .3s ease, visibility 0s .3s; opacity: 0; transform: translateY(-16px); visibility: hidden">
												<a class="share-tooltip__btn-share"	href="#" target="_blank" rel="noopener noreferrer">
													<span class="icon icon-sns-square-facebook"></span></a>
												<a class="share-tooltip__btn-share"	href="#" target="_blank" rel="noopener noreferrer">
													<span class="icon icon-sns-square-naver"></span></a>
											</div>
										</div>
									</div>
									<div class="user-profile__container">
										<div class="user-profile__profile-image">
											<img src="<%=request.getContextPath()%>/member/getPicture?id=${loginUserDetail.id}" />
										</div>
										<div class="profile-info">
											<div class="profile-info__name">
												<span>${loginUserDetail.nickname }</span>
											</div>
											<div class="profile-info__follow-state">
												<div class="profile-info__follow-state__text">
													<a href="/users/8176942/follower">팔로워 <span
														class="highlight">0</span></a>
												</div>
												<div class="profile-info__follow-state__vertical-bar"></div>
												<div class="profile-info__follow-state__text">
													<a href="/users/8176942/followee">팔로잉 <span
														class="highlight">0</span></a>
												</div>
											</div>
											<div class="profile-info__actions">
												<a class="profile-info__btn" href="/users/8176942/edit">설정</a><a
													class="profile-info__btn profile-info__btn--primary profile-info--hide-on-pc"
													href="/invite_codes/recommend_code">친구 초대 <span
													class="highlight">+5,000P</span></a>
											</div>
										</div>
									</div>
									<div class="user-profile__links">
										<div class="short-cut">
										<c:set value="/member/orderList" var="url" />
											<c:set value="주문내역" var="buttonName" />
											<c:if test="${loginUser.authority eq 'ROLE_COMPANY' }">
												<c:set value="/goods/upload" var="url"/>
												<c:set value="상품등록" var="buttonName"/>
											</c:if>
												<div class="short-cut__item" style="margin: 0px 25px;">
													<a href="<%=request.getContextPath() %>${url }">
														<div class="short-cut__icon">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
																<path fill-rule="evenodd" transform="matrix(1 0 0 -1 0 23.033)" d="M12.943 6.342a2 2 0 0 1-1.886 0L3 2.032V20.5a.5.5 0 0 0 .5.5h17a.5.5 0 0 0 .5-.5V2.033l-8.057 4.309zm-.471-.882l8.056-4.31A1 1 0 0 1 22 2.034V20.5a1.5 1.5 0 0 1-1.5 1.5h-17A1.5 1.5 0 0 1 2 20.5V2.033a1 1 0 0 1 1.472-.882l8.056 4.31a1 1 0 0 0 .944 0z"></path>
															</svg>
														</div>
														<div class="short-cut__text">${buttonName }</div>
														<div class="short-cut__text">
															<b class="highlight">0</b>
														</div>
													</a>
												</div>
											<div class="short-cut__item" style="margin: 0px 25px;">
												<a href="/users/8176942/praises">
													<div class="short-cut__icon">
														<svg width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
															<path fill="currentColor" d="M22.971 7.638c-.548-5.17-7.119-7.135-10.57-2.488a.5.5 0 0 1-.802 0C8.148.503 1.577 2.469 1.029 7.625.642 12.451 3.897 17.183 12 21.436c8.104-4.252 11.36-8.984 10.972-13.798zm.996-.093c.428 5.319-3.137 10.446-11.738 14.899a.5.5 0 0 1-.46 0C3.169 17.99-.395 12.864.034 7.532.656 1.67 7.904-.683 12 4.052 16.096-.683 23.344 1.67 23.967 7.545z"></path></svg>
													</div>
													<div class="short-cut__text">좋아요</div>
													<div class="short-cut__text">
														<b class="highlight">0</b>
													</div></a>
											</div>
										</div>
									</div>
								</div>
								<div class="profile-info__footer profile-info--hide-on-otherwise">
									<a class="profile-info__btn profile-info__btn--primary profile-info__btn--large" href="/invite_codes/recommend_code">친구 초대하고 <span
										class="highlight">5,000P</span> 받기<svg width="1em"
											height="1em" viewBox="0 0 24 24"
											preserveAspectRatio="xMidYMid meet">
											<path fill="currentColor" fill-rule="nonzero"
												d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg></a>
								</div>
							</div>
						</div>
					</div>
					<div class="horizontal-line"></div>
					<div class="col-12 offset-lg-1 col-lg-8 wrap--contents">
						<div class="contents">
							<section class="post post--cards">
								<h5 class="post__title"> 내가 쓴 글 <strong>${homeCount }</strong></h5>
								<c:if test="${myhomeBoardList eq null }">
								<a class="post__upload post--cards__upload"
									href="/contents/card_collections/new"><span
									class="icon--page-mypage"
									style="margin-right: 5px; background-position-x: -0px; background-position-y: -200px; width: 12px; height: 12px"></span>첫
									번째 글을 올려보세요</a>
								</c:if>
								<c:if test="${myhomeBoardList ne null }">
											<div class="row post--cards__list">
									<c:forEach begin="0" end="3" varStatus="status">
												<c:if test="${myhomeBoardList[status.index] ne null }">
												  <div class="col-4 col-md-3">
												  	<a href="">
												    <div class="post--cards__item" style="background-image: url('<%=request.getContextPath()%>/homeBoard/getPicture?picture=${myhomeBoardList[status.index].picture}'); background-position:center; background-size : cover;" >
												    </div>
												    </a>
												  </div>
												 </c:if>
												 <c:if test="${myhomeBoardList[status.index] eq null }">
												  <div class="col-4 col-md-3 post--cards__empty">
												    <div></div>
												  </div>
												</c:if>
									</c:forEach>
											</div>
											<a class="btn btn-simple btn-sm btn-md-md post__btn-new" href="/contents/card_collections/new"><span class="icon--page-mypage" style="margin-right:5px;background-position-x:-0px;background-position-y:-200px;width:12px;height:12px"></span>집들이 올리기</a>
								</c:if>
							</section>
							<section class="post post--projects">
								<h5 class="post__title"> 질문과 답변 <strong>0</strong></h5>
								<a class="post--projects__upload post__upload"
									href="/projects/write"><span class="icon--page-mypage"
									style="margin-right: 5px; background-position-x: -0px; background-position-y: -200px; width: 12px; height: 12px"></span>첫
									번째 질문을 올려보세요</a>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>