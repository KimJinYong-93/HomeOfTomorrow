<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<div id="container">     
	
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
								<div class="user-profile">
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
											<img src="<%=request.getContextPath()%>/resources/Login_v1/images/icons/profile4.png" />
										</div>
										<div class="profile-info">
											<div class="profile-info__name">
												<span>회원닉네임</span>
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
											<div class="short-cut__item">
												<a href="<%=request.getContextPath() %>/member/orderList">
													<div class="short-cut__icon">
<svg id="Layer_3" enable-background="new 0 0 64 64" height="512" viewBox="0 0 64 64" width="512" xmlns="http://www.w3.org/2000/svg"><g><path d="m6 27h8c.552 0 1-.448 1-1v-8c0-.552-.448-1-1-1h-8c-.552 0-1 .448-1 1v8c0 .552.448 1 1 1zm1-8h6v6h-6z"/><path d="m14 41h-8c-.552 0-1 .447-1 1v8c0 .553.448 1 1 1h8c.552 0 1-.447 1-1v-8c0-.553-.448-1-1-1zm-1 8h-6v-6h6z"/><path d="m17 7h22v2h-22z"/><path d="m17 11h22v2h-22z"/><path d="m17 19h22v2h-22z"/><path d="m17 23h22v2h-22z"/><path d="m13.586 5h-7.586c-.552 0-1 .448-1 1v8c0 .552.448 1 1 1h8c.552 0 1-.448 1-1v-7.586l1.707-1.707-1.414-1.414zm-2 2-4.586 4.586v-4.586zm1.414 6h-4.586l4.586-4.586z"/><path d="m15.293 27.293-1.707 1.707h-7.586c-.552 0-1 .448-1 1v8c0 .553.448 1 1 1h8c.552 0 1-.447 1-1v-7.586l1.707-1.707zm-3.707 3.707-4.586 4.586v-4.586zm1.414 6h-4.586l4.586-4.586z"/><path d="m62 63c.552 0 1-.447 1-1v-18c0-.553-.448-1-1-1h-5v-15c0-.552-.448-1-1-1h-13v-25c0-.552-.448-1-1-1h-40c-.552 0-1 .448-1 1v52c0 .553.448 1 1 1h15v7c0 .553.448 1 1 1zm-13-18h4v4h-4zm-12-2v-14h6v5c0 .553.448 1 1 1h4c.552 0 1-.447 1-1v-5h6v14zm8-14h2v4h-2zm-28 15v9h-14v-50h38v24h-5c-.552 0-1 .448-1 1v3h-18v2h18v2h-18v2h18v6h-17c-.552 0-1 .447-1 1zm10 1h4v4h-4zm-8 0h6v5c0 .553.448 1 1 1h6c.552 0 1-.447 1-1v-5h6v16h-20zm42 16h-20v-16h6v5c0 .553.448 1 1 1h6c.552 0 1-.447 1-1v-5h6z"/><path d="m55 57h4v2h-4z"/><path d="m49 39h4v2h-4z"/><path d="m55 53h4v2h-4z"/><path d="m33 57h4v2h-4z"/><path d="m33 53h4v2h-4z"/></g></svg>
													</div>
													<div class="short-cut__text">주문내역</div>
													<div class="short-cut__text">
														<b class="highlight">0</b>
													</div></a>
											</div>
											<div class="short-cut__item">
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
											<div class="short-cut__item">
												<a href="/user_shopping_pages/coupons">
													<div class="short-cut__icon">
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
<g>
	<g>
		<path d="M492,236H144.262c-11.046,0-20,8.954-20,20s8.954,20,20,20H492c11.046,0,20-8.954,20-20C512,244.954,503.046,236,492,236z
			"/>
	</g>
</g>
<g>
	<g>
		<path d="M492,86H144.262c-11.046,0-20,8.954-20,20s8.954,20,20,20H492c11.046,0,20-8.954,20-20S503.046,86,492,86z"/>
	</g>
</g>
<g>
	<g>
		<path d="M492,386H144.262c-11.046,0-20,8.954-20,20c0,11.046,8.954,20,20,20H492c11.046,0,20-8.954,20-20
			C512,394.954,503.046,386,492,386z"/>
	</g>
</g>
<g>
	<g>
		<circle cx="27" cy="106" r="27"/>
	</g>
</g>
<g>
	<g>
		<circle cx="27" cy="256" r="27"/>
	</g>
</g>
<g>
	<g>
		<circle cx="27" cy="406" r="27"/>
	</g>
</g>

</svg>

													</div>
													<div class="short-cut__text">글목록</div>
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
								<h5 class="post__title"> 내가 쓴 글 <strong>0</strong></h5>
								<a class="post__upload post--cards__upload"
									href="/contents/card_collections/new"><span
									class="icon--page-mypage"
									style="margin-right: 5px; background-position-x: -0px; background-position-y: -200px; width: 12px; height: 12px"></span>첫
									번째 글을 올려보세요</a>
							</section>
							<section class="post post--projects">
								<h5 class="post__title"> 집들이 <strong>0</strong></h5>
								<a class="post--projects__upload post__upload"
									href="/projects/write"><span class="icon--page-mypage"
									style="margin-right: 5px; background-position-x: -0px; background-position-y: -200px; width: 12px; height: 12px"></span>첫
									번째 집들이를 올려보세요</a>
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