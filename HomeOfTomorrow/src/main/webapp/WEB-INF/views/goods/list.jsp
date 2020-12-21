<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="alternate" href="android-app://net.bucketplace/http/ohou.se/deep" />
<link rel="apple-touch-icon" sizes="57x57" href="/assets/bookmark_icon/favicon_57x57.png" />
<link rel="apple-touch-icon" sizes="72x72" href="/assets/bookmark_icon/favicon_72x72.png" />
<link rel="apple-touch-icon" sizes="114x114" href="/assets/bookmark_icon/favicon_114x114.png" />
<link rel="apple-touch-icon" sizes="144x144" href="/assets/bookmark_icon/favicon_144x144.png" />
<link rel="shortcut icon" href="/assets/bookmark_icon/favicon_144x144.png" />
<link href="https://static.ohou.se/assets/favicon-186ac0d991a44c522f984d86e6a50d24c65b7b3a02a004ba7e13f5722aabd952.png"
	rel="shortcut icon" />

<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="3T+BCb7N1nSa5LU23rYO9CgJ1H43hIYqnljjPoGX9BlkcSXyecmLVcLG+0aEc/gGcrI0sxC0G5tL5tTj2xoYbA==" />

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean"
	rel="stylesheet">
<link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/layout/application_react-1e92c7147066d0282bd14c1c54ad6f4eda35ac557fc7d3743f26f3ce17a3802d.css" />
<script src="https://static.ohou.se/assets/v3/layouts/navigation_stub-2afc6570f26c12358127eb3d1d8b54fc3aa1df1f1a041c239fcf21d9abcade4a.js"></script>
<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
<script src="https://static.ohou.se/assets/v3/logging-69d1a145b1872071cd6479677379b6bbe429e845a932730a150eab3576275e7f.js"
	async="async"></script>
<script src="https://static.ohou.se/assets/v3/amplitude_bridge-16d2ae2fff38dc913ff70e367d7c1906d2a29b9304bc08b92cf695e8ca5f13ec.js"
	async="async"></script>
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/App-3e49e6d3.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/2-efe4945d.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/9-d91eb381.chunk.css" />

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/store.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/store2.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/store3.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/store4.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/slick/slick.css">
<script src="<%=request.getContextPath()%>/resources/_dj/js/slick/slick.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">

<div id="wrap">
	<div class="layout">
		<div id="store-index">
			<section class="main">
				<div>
					<img src="<%=request.getContextPath()%>/resources/image/event1.jpg"
						style="width: 100%; height: auto;">
				</div>
				<div>
					<img src="<%=request.getContextPath()%>/resources/image/event2.jpg"
						style="width: 100%; height: auto;">
				</div>
				<div>
					<img src="<%=request.getContextPath()%>/resources/image/event3.png"
						style="width: 100%; height: auto;">
				</div>
				<div>
					<img src="<%=request.getContextPath()%>/resources/image/event4.jpg"
						style="width: 100%; height: auto;">
				</div>
			</section>
			
			<section class="container store-index-section">
				<h1>인기 키워드</h1>
				<div class="row keyword-list">
					<div class="col-6 col-md-3 keyword-wrap">
						<a href="#">
							<div class="keyword" style="background-image:url('<%=request.getContextPath()%>/resources/image/keyword1.jpg'); background-size:contain;background-repeat:no-repeat">
								 <span style="position:relative">나홀로 홈파티 ~70%</span>
							</div>
						</a>
					</div>
					<div class="col-6 col-md-3 keyword-wrap">
						<a href="#">
							<div class="keyword" style="background-image:url('<%=request.getContextPath()%>/resources/image/keyword2.jpg'); background-size:contain;background-repeat:no-repeat">
								 <span style="position:relative">2020 베스트 브랜드</span>
							</div>
						</a>
					</div>
					<div class="col-6 col-md-3 keyword-wrap">
						<a href="#">
							<div class="keyword" style="background-image:url('<%=request.getContextPath()%>/resources/image/keyword3.jpg'); background-size:contain;background-repeat:no-repeat">
								 <span style="position:relative">꿀잠 필수템 ~84%</span>
							</div>
						</a>
					</div>
					<div class="col-6 col-md-3 keyword-wrap">
						<a href="#">
							<div class="keyword" style="background-image:url('<%=request.getContextPath()%>/resources/image/keyword4.jpg'); background-size:contain;background-repeat:no-repeat">
								 <span style="position:relative">겨울필수템 모음jip </span>
							</div>
						</a>
					</div>

				</div>
			</section>
			
			<!-- ///////////////////////내일도착 랜덤물품 리스트///////////////////////// -->

			<section class="container store-index-section store-index-today-deal-list">
				<header class="store-index-today-deal-list__header">
					<h1 class="store-index-today-deal-list__title">내일도착</h1>
					<a class="store-index-today-deal-list__detail-link"
						href="/commerces/today_deals?affect_type=StoreHomeDeal&amp;affect_id=5">더보기</a>
				</header>
				
				<!-- ///////////////////////내일도착 랜덤물품 리스트///////////////////////// -->
				
				<div class="store-index-today-deal-list__content row">
					<div class="col-12 col-md-4 col-lg-3">
						<div class="today-deal-item--wrapper">
							<article class="today-deal-item">
								<a class="today-deal-item__overlay" href="#"></a>
								<div class="today-deal-item__image">
									<div class="today-deal-item__image__item">
										<div class="production-item-image">
											<!-- /////////랜덤물품 이미지////////  -->
											<img class="image" src="<%=request.getContextPath()%>/resources/image/nae1.jpg" alt="내일도착 썸네일이미지1">
											<div class="production-item-image__dark-overlay"></div>
										</div>
									</div>
								</div>


								<div class="today-deal-item__content">
									<div class="today-deal-item__content--wrap">
										<h1 class="today-deal-item__header">
											<!-- /////////랜덤물품 회사이름////////  -->
											<span class="today-deal-item__header__brand">베베데코 </span>
											<!-- /////////랜덤물품 상품제목////////  -->
											<span class="today-deal-item__header__name">빠른배송 3중직 암막커튼 10colors</span>
										</h1>
										<span class="production-item-price"><span class="production-item-price__rate">47<span class="percentage">% </span></span>
										<!-- /////////랜덤물품 상품가격////////  -->
										<span class="production-item-price__price">29,900</span></span>
										<div class="today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#72a2ed" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
												<!-- /////////랜덤물품 상품평점 및 리뷰////////  -->
												<strong class="avg">4.4</strong> 리뷰 5,631
											</p>
										</div>
										<span class="production-item-badge-list"></span>
										<span class="production-item-badge-list">
											<svg class="icon" aria-label="무료배송" width="47" height="20" viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
												<rect width="47" height="20" fill="#000" fill-opacity=".07" fill-rule="nonzero" rx="4"></rect>
												<path fill="#757575" d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path></g>
										</svg>
										</span>
									</div>
								</div>


							</article>
						</div>
					</div>
					<div class="col-12 col-md-4 col-lg-3">
						<div class="today-deal-item--wrapper">
							<article class="today-deal-item">
								<a class="today-deal-item__overlay" href="#"></a>
								<div class="today-deal-item__image">
									<div class="today-deal-item__image__item">
										<div class="production-item-image">
											<img class="image" src="<%=request.getContextPath()%>/resources/image/nae2.jpg" alt="내일도착 썸네일이미지2">
											<div class="production-item-image__dark-overlay"></div>
										</div>
									</div>
								</div>


								<div class="today-deal-item__content">
									<div class="today-deal-item__content--wrap">
										<h1 class="today-deal-item__header">
											<span class="today-deal-item__header__brand">데코뷰 </span>
											<span class="today-deal-item__header__name">프리미엄 원터치 난방텐트</span>
										</h1>
										<span class="production-item-price"><span class="production-item-price__rate">32<span class="percentage">% </span></span>
										<span class="production-item-price__price">29,900</span></span>
										<div class="today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#72a2ed" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
												<strong class="avg">4.4</strong> 리뷰 5,631
											</p>
										</div>
										<span class="production-item-badge-list"></span>
										<span class="production-item-badge-list">
											<svg class="icon" aria-label="무료배송" width="47" height="20" viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
												<rect width="47" height="20" fill="#000" fill-opacity=".07" fill-rule="nonzero" rx="4"></rect>
												<path fill="#757575" d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path></g>
										</svg>
										</span>
									</div>
								</div>


							</article>
						</div>
					</div>
					<div class="col-12 col-md-4 col-lg-3">
						<div class="today-deal-item--wrapper">
							<article class="today-deal-item">
								<a class="today-deal-item__overlay" href="#"></a>
								<div class="today-deal-item__image">
									<div class="today-deal-item__image__item">
										<div class="production-item-image">
											<img class="image" src="<%=request.getContextPath()%>/resources/image/nae3.jpg" alt="내일도착 썸네일이미지3">
											<div class="production-item-image__dark-overlay"></div>
										</div>
									</div>
								</div>


								<div class="today-deal-item__content">
									<div class="today-deal-item__content--wrap">
										<h1 class="today-deal-item__header">
											<span class="today-deal-item__header__brand">그레이불</span>
											<span class="today-deal-item__header__name">순수 유기농 오가닉 면 100%  프릴차렵이불세트</span>
										</h1>
										<span class="production-item-price"><span class="production-item-price__rate">26<span class="percentage">% </span></span>
										<span class="production-item-price__price">29,900</span></span>
										<div class="today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#72a2ed" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
												<strong class="avg">4.4</strong> 리뷰 5,631
											</p>
										</div>
										<span class="production-item-badge-list"></span>
										<span class="production-item-badge-list">
											<svg class="icon" aria-label="무료배송" width="47" height="20" viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
												<rect width="47" height="20" fill="#000" fill-opacity=".07" fill-rule="nonzero" rx="4"></rect>
												<path fill="#757575" d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path></g>
										</svg>
										</span>
									</div>
								</div>


							</article>
						</div>
					</div>
					<div class="col-12 col-md-4 col-lg-3">
						<div class="today-deal-item--wrapper">
							<article class="today-deal-item">
								<a class="today-deal-item__overlay" href="#"></a>
								<div class="today-deal-item__image">
									<div class="today-deal-item__image__item">
										<div class="production-item-image">
											<img class="image" src="<%=request.getContextPath()%>/resources/image/nae4.jpg" alt="내일도착 썸네일이미지4">
											<div class="production-item-image__dark-overlay"></div>
										</div>
									</div>
								</div>


								<div class="today-deal-item__content">
									<div class="today-deal-item__content--wrap">
										<h1 class="today-deal-item__header">
											<span class="today-deal-item__header__brand">포홈 </span>
											<span class="today-deal-item__header__name">레이스 패브릭 크리스마스 소품 26종</span>
										</h1>
										<span class="production-item-price"><span class="production-item-price__rate">56<span class="percentage">% </span></span>
										<span class="production-item-price__price">29,900</span></span>
										<div class="today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#72a2ed" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
												<strong class="avg">4.4</strong> 리뷰 5,631
											</p>
										</div>
									</div>
								</div>


							</article>
						</div>
					</div>
				</div>
				
				
				<a
					class="button button--color-gray-7 button--size-45 button--shape-4 store-index-today-deal-list__more-btn"
					href="/commerces/today_deals?affect_type=StoreHomeDeal&amp;affect_id=5">오늘의딜
					더보기<svg class="right-icon" width="10" height="10"
						viewBox="0 0 10 10" fill="currentColor"
						preserveAspectRatio="xMidYMid meet">
							<path d="M2.5 8.2L5.63 5 2.5 1.8l.94-.97L7.5 5 3.44 9.17z"></path></svg>
				</a>
			</section>

			
			<div class="carousel__list-wrap" style="margin-top: 5%;">
				<div class="featured-quick-navigation container">
					<ul class="featured-quick-navigation__list">
							<li class="featured-quick-navigation__item">
								<div class="featured-quick-navigation__item__content">
									<span class="category" id="">전체</span>
								</div>
							</li>
						<c:forEach items="${categoryList }" var="category">
							<li class="featured-quick-navigation__item">
								<div class="featured-quick-navigation__item__content">
									<span class="category" id="${category.cg_code }">${category.name }</span>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>


			<section
				class="container store-index-section store-index-product-list">
				<h1>전체 상품</h1>
				<div class="filter store-index-product-list__filter">
					<div class="filter-bar">
						<label for="ex_select">정렬기준</label>
						<select class="category_select"> 
							<!-- 이부분에 원하는 정렬기준 넣으면됨 -->
							<option>인기순</option>
							<option>낮은 가격 순</option>
						</select>
					</div>
				</div>
				
				<!--/////////////////////상품리스트///////////////////////////  -->
				<div class="virtualized-list row" id="list" style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px)">

				</div>
			</section>
		</div>
		<div class="toast-message-root"></div>
	</div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.6/handlebars.min.js"></script>
<script type="text/x-handlebars-template"  id="goods-list-template" >
{{#each .}}
	<div class="col-6 col-md-3 product-item-wrap goodsByCgcode">
		<div class="production-item production-item__placeholder">
			<a href="detail?gcode={{gcode}}"><div class="production-item-image production-item__image">
				<img class="image" id="goodsImg" src="<%=request.getContextPath()%>/goods/getPicture?picture={{picture}}">
			</div></a>
			
			<div class="production-item__content">
				<h1 class="production-item__header">
					<span class="production-item__header__brand" id="bname">{{bname}}</span>
					<a href="detail?gcode={{gcode}}"><span class="production-item__header__name">{{gname}}</span></a>
				</h1>
				<span class="production-item-price">
					<span class="production-item-price__rate">43<span class="percentage">% </span></span>
					<span class="production-item-price__price">{{addCommaNumber price}}</span>
				</span> 
				<span class="production-item-badge-list">
					<svg class="icon" aria-label="무료배송" width="47" height="20" viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
						<g fill="none" fill-rule="evenodd"> 
						<rect width="47" height="20" fill="#000" fill-opacity=".07" fill-rule="nonzero" rx="4"></rect>
						<path fill="#757575" d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path></g>
					</svg>
					<svg class="icon" aria-label="특가" width="30" height="20"
					viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
					<rect width="30" height="20" fill="#F77" rx="4"></rect>
						<path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></span>
			</div>
		</div>
	</div>
{{/each}}	
</script>
<script>
	$('.main').slick({
		slidesToScroll : 1,
		autoplay : true,
		autoplaySpeed : 2000,
	});
	
	var cg_code = "";
	var data = {cg_code : cg_code};
	
	$('.category').on('click', function(){
		data.cg_code = $(this).attr('id');
		getList(data);
	});
	
	getList(data);
	
	function getList(data){
		$.ajax({
			url : "<%=request.getContextPath()%>/goods/goodsListByCategory",
			type : "post",
			data : data,	
			success:function(result){
				printData(result, $('#list'), $('#goods-list-template'))
			},
			error:function(error){
				alert('알 수 없는 오류로 실패했습니다.');	
			}
		});
		
		/* $.getJSON(pageInfo,function(data){	
			printData(data.replyList, $('#repliesDiv'), $('#goods-list-template'));
			//printPaging(data.pageMaker, $('.pagination'));	
		}); */
	}
	
	var printData = function(goodsList, target, templateObject){
		var template = Handlebars.compile(templateObject.html());
		var html = template(goodsList);	
		$('.goodsByCgcode').remove();
		target.append(html);
	}
	
	Handlebars.registerHelper({
		"getGoodsList":function(){
			$.ajax({
				url : "<%=request.getContextPath()%>/goods/list",
				type : "post",
				data : data,	
				success:function(data){
					alert(data)
					<%-- alert('댓글이 등록되었습니다.');
					getPage("<%=request.getContextPath()%>/replies/${board.bno}/"+data);
					$('#newReplyText').val(""); --%>
				},
				error:function(error){
					alert('알 수 없는 오류로 실패했습니다.');	
				}
			});
		},
		"addCommaNumber" : function(price){
			return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
			
	});
	
</script>

<script
	src="https://static.ohou.se/assets/v3/application_react-39c024d42df4dc70afcdc802be03a3c9af0e4e38c629c9255ff5b66c1abd9aa0.js"></script>
<script
	src="https://static.ohou.se/dist/js/vendor-9bc9135a2316948b78ce.js"></script>

<script
	src="https://static.ohou.se/dist/js/0-8701b5d5811d4b2c36d8.chunk.js"></script>
<script
	src="https://static.ohou.se/dist/js/1-1402983761d4b567d6d9.chunk.js"></script>
<script
	src="https://static.ohou.se/dist/js/2-7e950e574f58b096f0e9.chunk.js"></script>
<script
	src="https://static.ohou.se/dist/js/7-45da8a99e495dcda9029.chunk.js"></script>
<script
	src="https://static.ohou.se/dist/js/9-951da074d502cd3e22c2.chunk.js"></script>
<script
	src="https://static.ohou.se/dist/js/13-5a926ce250f8bda5bcd9.chunk.js"></script>
<script
	src="https://static.ohou.se/dist/js/39-3d73210cfa8849738c57.chunk.js"></script>
<script
	src="https://static.ohou.se/dist/js/templates-Commerce-StoreIndex-StoreIndex-4e1951facd24d5502f9a.chunk.js"></script>
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
<script src="https://static.ohou.se/dist/js/App-cf611cec6ec3494b7a1e.js"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>