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
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/detail.css">
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/detail2.css">
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/detail3.css">

		<div class="production-selling">
			<div class="production-selling-overview container">
				<div class="production-selling-overview__container row">
					<div
						class="production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7">
						<div class="production-selling-cover-image-container">
					<div
						class="carousel production-selling-cover-image production-selling-overview__cover-image"
						role="region" aria-roledescription="carousel">
						<div
							class="carousel__list-wrap production-selling-cover-image__carousel-wrap">
							<div class="carousel__list" aria-live="polite"
								style="transform: translateX(0%); transition: transform 0s ease 0s;">
								<div class="carousel__list__entry production-selling-cover-image__entry"
									role="group" aria-roledescription="slide" aria-label="2 of 6" style="width: 100%;">
									<img class="production-selling-cover-image__entry__image" tabindex="0"
										src="<%=request.getContextPath() %>/goods/getPicture?picture=${goods.picture}">
								</div>
							</div>
						</div>
						<!-- ///////////마진때문에 넣어놈////////////// -->
						<ul class="production-selling-cover-image__list">
							<li class="production-selling-cover-image__list__item">
								<button class="production-selling-cover-image__list__btn production-selling-cover-image__list__btn" type="button" 
										aria-label="6개 중 1번째 항목">
									<img class="image">
								</button></li>
							</li>
						</ul>
						<!-- ///////////마진때문에 넣어놈////////////// -->
						<div class="production-selling-cover-image__paginator">
							<ul class="carousel-paginator">
								<li><span class="carousel-paginator__page selected"
									data-key="1"></span></li>
								<li><span class="carousel-paginator__page" data-key="2"></span></li>
								<li><span class="carousel-paginator__page" data-key="3"></span></li>
								<li><span class="carousel-paginator__page" data-key="4"></span></li>
								<li><span class="carousel-paginator__page" data-key="5"></span></li>
								<li><span class="carousel-paginator__page small"
									data-key="6"></span></li>
							</ul>
						</div>
					</div>
				</div>
					</div>
					<div
						class="production-selling-overview__content col-12 col-md-6 col-lg-5">
						<div class="production-selling-header">
							<h1 class="production-selling-header__title">
								<p class="production-selling-header__title__brand-wrap">
									<a class="production-selling-header__title__brand"
										href="/brands/home?query=%EC%98%AC%EB%A3%A8%EB%AF%B8&amp;affect_type=ProductSaleDetail&amp;affect_id=48222">${goods.bname }
									</a>
								</p>
								<span class="production-selling-header__title__name">${goods.gname }</span>
							</h1>
							<div class="production-selling-header__content">
								<p class="production-selling-header__review-wrap">
									<a class="production-selling-header__review"
										href="#production-selling-review"><span
										class="production-selling-header__review__icon"
										aria-label="별점 4.7점"><svg fill="#87aede" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
												<defs>
												<path id="star-path-1.000"
													d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-1.000">
												<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
												<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-1.000)"
													xlink:href="#star-path-1.000"></use></svg>
											<svg fill="#87aede" width="1em" height="1em"
												preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
												<defs>
												<path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-1.000">
												<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
												<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-1.000)"
													xlink:href="#star-path-1.000"></use></svg>
											<svg fill="#87aede" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
												<defs>
												<path id="star-path-1.000"
													d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-1.000">
												<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
												<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-1.000)"
													xlink:href="#star-path-1.000"></use></svg>
											<svg fill="#87aede" width="1em" height="1em"
												preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
												<defs>
												<path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-1.000">
												<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
												<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
											<svg fill="#87aede" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
												<defs>
												<path id="star-path-0.710" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-0.710">
												<rect x="0" y="0" width="11.36" height="16"></rect></clipPath></defs>
												<use xlink:href="#star-path-0.710" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-0.710)" xlink:href="#star-path-0.710"></use></svg></span>
										<span class="production-selling-header__review__text">
										<!-- ///////////////////////해당 게시물의 리뷰 총 개수//////////////////////// -->
										<span class="number">18,473</span><span class="postfix">개 리뷰</span></span></a>
								</p>
								<p class="production-selling-header__price">
									<span class="production-selling-header__price__row"><span
										class="production-selling-header__price__discount"><span
											class="number">60</span><span class="percent">%</span> </span>
											<span class="production-selling-header__price__price-wrap">
											<del class="production-selling-header__price__original">
												<span class="number"><fmt:formatNumber type="number">${goods.price }</fmt:formatNumber></span><span class="won">원</span>
											</del><span class="production-selling-header__price__separator"></span><span
											class="production-selling-header__price__price"><span
												class="number"><fmt:formatNumber type="number">${goods.price }</fmt:formatNumber></span><span class="won">원</span><span
												class="production-selling-header__price__badge">
													<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
														<rect width="30" height="20" fill="#F77" rx="4"></rect>
														<path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></span></span></span></span>
														<span class="production-selling-header__price__row">
														<span class="production-selling-header__price__cell"></span>
														</span>
								</p>
							</div>
						</div>
						<div
							class="production-selling-option-form production-selling-overview__option-form">
							<section
								class="selling-option-form-content production-selling-option-form__form">
								<div class="selling-option-form-content__form">
									<div class="selling-option-select-input">
										<div class="input-group select-input selling-option-select-input__option selling-option-select-input__option-1 focused">
											<c:forEach items="${option }" var="optionMap" varStatus="status">
												<select class="form-control empty option" id="option${status.index }">
													<option selected="" disabled="disabled">${optionMap.key }</option>
													<c:forEach items="${optionMap.value }" var="optionList" varStatus="status">
														<option value="${optionList}">${optionList }</option>
													</c:forEach>
												</select>
												<span class="select-input__icon">
													<svg class="icon" width="10" height="10" style="fill: currentColor" preserveAspectRatio="xMidYMid meet">
														<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
													</svg>
												</span>
											</c:forEach>
										</div>
									</div>
								</div>
								<ul class="selling-option-form-content__list"></ul>
								<p class="selling-option-form-content__price">
									<span class="selling-option-form-content__price__left">주문금액</span>
									<span class="selling-option-form-content__price__right">
									<!-- ///////////////////상품가격연결////////////////////// -->	
									<span class="selling-option-form-content__price__number">0</span>원</span>
								</p>
							</section>
							<div class="production-selling-option-form__footer">
								<button
									class="button button--color-blue-inverted button--size-55 button--shape-4"
									type="button">장바구니</button>
								<button
									class="button button--color-blue button--size-55 button--shape-4"
									type="button">바로구매</button>
							</div>
						</div>
						<div class="production-selling-overview__promotion-banner">
							<a class="production-selling-promotion-banner" 	href="#">
								<img class="production-selling-promotion-banner__image production-selling-promotion-banner__image--pc" 
									   src="<%=request.getContextPath()%>/resources/image/detail_ban.jpg" alt="디테일페이지 광고배너이미지"/> 
							</a>	
						</div>
					</div>
				</div>
			</div>
			<div class="production-selling__card-gallery-wrap container">
				<div
					class="production-selling-section production-selling-section--placeholder">
					<div class="production-selling-section__header">
						<div class="production-selling-section__title"></div>
						<div class="production-selling-section__right"></div>
					</div>
					<div class="gallery-wrap"></div>
				</div>
			</div>
			<div class="production-selling-navigation-border"></div>
		</div>
		<!--///////////////////////////////////////////////////////  -->
		<div data-sticky-enabled="false" data-sticky-disabled="true"
			data-sticky-always="false" data-sticky-ignore="false"
			data-direction="top" data-offset="0"
			class="sticky-container production-selling-navigation-wrap">
			<div class="sticky-child production-selling-navigation"
				style="position: relative">
				<nav class="production-selling-navigation__content">
					<ol class="production-selling-navigation__list">
						<li><a
							class="production-selling-navigation__item production-selling-navigation__item--active"
							href="#production-selling-information">상품정보</a></li>
						<li><a class="production-selling-navigation__item"
							href="#production-selling-review">리뷰<span
								class="production-selling-navigation__item__count">1,362</span></a></li>
					</ol>
				</nav>
			</div>
		</div>
		<!--///////////////////////////////////////////////////////  -->
<div class="production-selling__detail__content col-12 col-lg-12">
	<div class="production-selling-content">
		<a id="production-selling-information"></a>
		<section class="production-selling-section">
			<header
				class="production-selling-section__header production-selling-section__header__hidden">
				<h1 class="production-selling-section__title">상품정보</h1>
			</header>
			<div
				class="production-selling-description production-selling-description--notice">
				<div class="production-selling-description__expand-wrap">
					<button
						class="button button--color-blue button--size-60 button--shape-4 production-selling-description__expand"
						type="button">
						펼치기
						<svg class="icon" width="1em" height="1em" viewBox="0 0 16 16"
							preserveAspectRatio="xMidYMid meet">
							<path fill="currentColor" fill-rule="evenodd"
								d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg>
					</button>
				</div>
				<div class="production-selling-description__content">
					${goods.content }
					<!-- <p style="text-align: center;">
						///////////////////////작성자가 등록한 사진 가져오는곳//////////////////////////////
						<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/160816888268211124.jpg" width="860" height="1200">
						<img src="https://exit.ohou.se/a181bd825258b6abc17746945670379873b68731/gi.esmplus.com/yolonix/1031X20/0000.jpg">
						<img src="https://exit.ohou.se/78d38256dd02a451ff3d90dd509b48be72944827/gi.esmplus.com/yolonix/1031X20/0.gif">
						<img src="https://exit.ohou.se/27b265bdd38e2aa4ebb997cb5a0c40e4917ac9d2/gi.esmplus.com/yolonix/1031X20/1.jpg">
					</p> -->
				</div>
				<table
					class="production-selling-table production-selling-description__information-noti">
					<!-- ///////////////////////작성자 정보 text 나타내기////////////////////////////// -->
					<tbody>
						<tr>
							<th>품명</th>
							<td>${goods.gname }</td>
						</tr>
						<tr>
							<th>회사명</th>
							<td>${goods.cname }</td>
						</tr>
						<tr>
							<th>회사주소</th>
							<td>${memberC.address1 } ${memberC.address2 }</td>
						</tr>
						<tr>
							<th>문의 이메일</th>
							<td>${memberC.email }</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		<a id="production-selling-review"></a>
		<section class="production-selling-section">
			<header class="production-selling-section__header">
				<h1 class="production-selling-section__title">
				<!-- ///////////////////////해당 게시글의 리뷰 총 개수//////////////////// -->
					리뷰 <span class="count">210</span>
				</h1>
				<div class="production-selling-section__right">
					<a href="#">리뷰쓰기</a>
				</div>
			</header>
			<div class="production-review-feed">
				<div class="production-review-feed__header-v2">
					<div class="production-review-feed__header-v2__stars">
						<div class="production-review-feed__header-v2__stars__badge">
							<span class="badge__mobile">4.8</span>
								<span class="icon" aria-label="별점 4.8점">
								<svg fill="#87aede" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
									<defs> <path id="star-path-275" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
									<clipPath id="star-clip-275"> <rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
									<use xlink:href="#star-path-275" fill="#DBDBDB"></use>
									<use clip-path="url(#star-clip-275)" xlink:href="#star-path-275"></use>
								</svg>
								<svg fill="#87aede" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
									<defs> <path id="star-path-276" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
									<clipPath id="star-clip-276">
									<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
									<use xlink:href="#star-path-276" fill="#DBDBDB"></use>
									<use clip-path="url(#star-clip-276)" xlink:href="#star-path-276"></use>
								</svg>
								<svg fill="#87aede" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
									<defs> 
									<path id="star-path-277" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
									<clipPath id="star-clip-277">
									<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
									<use xlink:href="#star-path-277" fill="#DBDBDB"></use>
									<use clip-path="url(#star-clip-277)" xlink:href="#star-path-277"></use>
								</svg>
								<svg fill="#87aede" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
									<defs>
									<path id="star-path-278" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
									<clipPath id="star-clip-278">
									<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
									<use xlink:href="#star-path-278" fill="#DBDBDB"></use>
									<use clip-path="url(#star-clip-278)" xlink:href="#star-path-278"></use>
								</svg>
								<svg fill="#87aede" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
									<defs>
									<path id="star-path-279" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
									<clipPath id="star-clip-279">
									<rect x="0" y="0" width="12.952380952380949" height="16"></rect></clipPath></defs>
									<use xlink:href="#star-path-279" fill="#DBDBDB"></use>
									<use clip-path="url(#star-clip-279)" xlink:href="#star-path-279"></use>
								</svg>
								</span><span class="badge__pc">4.8</span>
						</div>
						<div class="production-review-feed__header-v2__stars__avg">
							<div class="production-review-feed__header-v2__stars__avg-warp">
								<div class="production-review-feed__header-v2__stars__avg__container">
									<div class="production-review-feed__header-v2__stars__avg__label label_selected">5점</div>
									<div class="production-review-feed__header-v2__stars__avg__bar">
										<div class="production-review-feed__header-v2__stars__avg__bar__bg"></div>
										<div class="production-review-feed__header-v2__stars__avg__bar__color"
											style="width: 82.8571%;"></div>
									</div>
									<div class="production-review-feed__header-v2__stars__avg__number label_selected">174</div>
								</div>
								<div class="production-review-feed__header-v2__stars__avg__container">
									<div class="production-review-feed__header-v2__stars__avg__label">4점</div>
									<div class="production-review-feed__header-v2__stars__avg__bar">
										<div class="production-review-feed__header-v2__stars__avg__bar__bg"></div>
										<div class="production-review-feed__header-v2__stars__avg__bar__color" style="width: 16.1905%;"></div>
									</div>
									<div class="production-review-feed__header-v2__stars__avg__number">34</div>
								</div>
								<div class="production-review-feed__header-v2__stars__avg__container">
									<div class="production-review-feed__header-v2__stars__avg__label">3점</div>
									<div class="production-review-feed__header-v2__stars__avg__bar">
										<div class="production-review-feed__header-v2__stars__avg__bar__bg"></div> 
										<div class="production-review-feed__header-v2__stars__avg__bar__color" 	style="width: 0.47619%;"></div>
									</div>
									<div class="production-review-feed__header-v2__stars__avg__number">1</div>
								</div>
								<div class="production-review-feed__header-v2__stars__avg__container">
									<div class="production-review-feed__header-v2__stars__avg__label">2점</div>
									<div class="production-review-feed__header-v2__stars__avg__bar">
										<div class="production-review-feed__header-v2__stars__avg__bar__bg"></div>
										<div class="production-review-feed__header-v2__stars__avg__bar__color" style="width: 0%;"></div>
									</div>
									<div class="production-review-feed__header-v2__stars__avg__number">0</div>
								</div>
								<div class="production-review-feed__header-v2__stars__avg__container">
									<div class="production-review-feed__header-v2__stars__avg__label">1점</div>
									<div class="production-review-feed__header-v2__stars__avg__bar">
										<div class="production-review-feed__header-v2__stars__avg__bar__bg"></div>
										<div class="production-review-feed__header-v2__stars__avg__bar__color" style="width: 0.47619%;"></div>
									</div>
									<div class="production-review-feed__header-v2__stars__avg__number">1</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="production-review-feed__list">
					<div class="production-review-item__container">
						<article class="production-review-item">
							<div class="production-review-item__writer">
								<!-- ///////////////////////작성자 프로필이미지 연결 현재들어간 값은 이미지없을때 뜨는 기본값//////////////////// -->
								<a href="/users/8593472"><img src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-default_images-avatar.png/80/80"
									class="production-review-item__writer__img" alt=""></a>
								<div class="production-review-item__writer__info">
									<!-- ///////////////////////작성자 아이디 연결 //////////////////// -->
									<span class="production-review-item__writer__info__name">리뷰작성자 아이디</span>
									<!-- ///////////////////////결제일 연결//////////////////// -->
									<span class="production-review-item__writer__info__upDate">2020.11.18</span>
									
								</div>
							</div>

							<!-- ///////////////////////옵션연결클래스//////////////////// -->
							<span class="production-review-item__name">
								<p></p>
								화이트
							</span>
							
							<button class="production-review-item__writer__info__total-star-wrap" type="button">
										<span class="production-review-item__writer__info__total-star"
											aria-label="별점 1.0점"><svg fill="#87aede" width="1em"
												height="1em" preserveAspectRatio="xMidYMid meet"
												viewBox="0 0 16 16">
												<defs>
												<path id="star-path-280"
													d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-280">
												<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
												<use xlink:href="#star-path-280" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-280)"
													xlink:href="#star-path-280"></use></svg>
											<svg fill="#87aede" width="1em" height="1em"
												preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
												<defs>
												<path id="star-path-281"
													d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-281">
												<rect x="0" y="0" width="0" height="16"></rect></clipPath></defs>
												<use xlink:href="#star-path-281" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-281)"
													xlink:href="#star-path-281"></use></svg>
											<svg fill="#87aede" width="1em" height="1em"
												preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
												<defs>
												<path id="star-path-282"
													d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-282">
												<rect x="0" y="0" width="0" height="16"></rect></clipPath></defs>
												<use xlink:href="#star-path-282" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-282)"
													xlink:href="#star-path-282"></use></svg>
											<svg fill="#87aede" width="1em" height="1em"
												preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
												<defs>
												<path id="star-path-283"
													d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-283">
												<rect x="0" y="0" width="0" height="16"></rect></clipPath></defs>
												<use xlink:href="#star-path-283" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-283)"
													xlink:href="#star-path-283"></use></svg>
											<svg fill="#87aede" width="1em" height="1em"
												preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16">
												<defs>
												<path id="star-path-284"
													d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-284">
												<rect x="0" y="0" width="0" height="16"></rect></clipPath></defs>
												<use xlink:href="#star-path-284" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-284)"
													xlink:href="#star-path-284"></use></svg></span>
										<svg
											class="production-review-item__writer__info__total-star__down-icon"
											width="10" height="10" viewBox="0 0 10 10"
											fill="currentColor" preserveAspectRatio="xMidYMid meet">
											<path d="M1.8 2.5l-.97.94L5 7.5l4.17-4.06-.97-.94L5 5.63z"></path></svg>
									</button>
							
							
							<!-- ///////////////////////리뷰연결클래스//////////////////// -->
							<p class="production-review-item__description"> 오늘 의집에서 삭제가 안되더라구요
								리뷰가 수정은 되는데 그래서 내용 다 지우고 좋아요 까지 적고 반품을 해달라고 했는데 답변이 없더라구요 그런데 끝내
								삭제를 하려고 오늘의집으로 삭제요청을 하셨더라구요 그런데 제가 전화 통화를 못해서 삭제가 안되었고 결국에는 반품이
								되었더라구요.. 차라리 처음에 전화해서 확실하게 반품은 불가하다 아니면 5점 리뷰 아니면 삭제해달라 말씀하셨으면 더
								나았겠어요..정말 힘들었어요 정말..</p>
						</article>
					</div>
					
				
				<!-- /////////////////////페이지네이션//////////////////////////// -->	
				</div>
				<ul class="_2BEHX production-review__paginator">
					<li><button class="_3b4ci R16_p" type="button">1</button></li>
					<li><button class="_3b4ci" type="button">2</button></li>
					<li><button class="_3b4ci" type="button">3</button></li>
					<li><button class="_3b4ci" type="button">4</button></li>
					<li><button class="_3b4ci" type="button">5</button></li>
					<li><button class="_3b4ci" type="button">6</button></li>
					<li><button class="_3b4ci" type="button">7</button></li>
					<li><button class="_3b4ci" type="button">8</button></li>
					<li><button class="_3b4ci" type="button">9</button></li>
					<li><button class="_2XI47 _3I7ex" type="button">
							<svg width="1em" height="1em" viewBox="0 0 24 24">
								<path fill="currentColor"
									d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg>
						</button></li>
				</ul>
			</div>
		</section>
		<div></div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script>
	var cnt = 0;
	$('.option').on('change', function(){
		cnt += 1;
		alert(cnt)
		if($('.option').length == $('.option option:selected').length){
			alert("test")
			return;
		}
	})	
</script>
