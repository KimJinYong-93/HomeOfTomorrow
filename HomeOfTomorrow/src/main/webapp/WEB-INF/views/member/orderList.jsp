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


	<div class="order-list container">
		<div class="order-list__info">
			<div class="order-list__info__wrap">
				<a class="order-list__info__wrap__content"
					href="/user_shopping_pages/coupons"><svg
						class="order-list__info__wrap__content__icon--coupon"
						viewBox="0 0 54 34" preserveAspectRatio="xMidYMid meet">
						<defs></defs>
						<g fill="none" fill-rule="evenodd">
						<path d="M0 0h54v34H0z"></path>
						<path fill="#FFF" stroke="#757575" stroke-width="2"
							d="M1 7.004v19.992A4 4 0 005.008 31h43.984A4.001 4.001 0 0053 26.996V7.004A4 4 0 0048.992 3H5.008A4.001 4.001 0 001 7.004z"></path>
						<path fill="#757575" d="M7 3h2v28H7z"></path>
						<path stroke="#757575" stroke-linecap="round" stroke-width="4"
							d="M35 14.273C33.98 12.207 32.076 11 30 11c-3.361 0-6 2.686-6 6.545C24 20.314 26.639 23 30 23c2.076 0 3.98-1.207 5-3.273"></path></g></svg>
					<div class="order-list__info__wrap__content__text">
						<span>쿠폰</span><span
							class="order-list__info__wrap__content__value">0</span>
					</div></a><a class="order-list__info__wrap__content"
					href="/user_shopping_pages/mileages"><svg
						class="order-list__info__wrap__content__icon--point" width="46"
						height="30" viewBox="0 0 46 30"
						preserveAspectRatio="xMidYMid meet">
						<g fill="none" fill-rule="evenodd" transform="translate(-4 -2)">
						<path d="M0 0h54v34H0z"></path>
						<g fill="#FFF" fill-rule="nonzero" stroke="#757575"
							stroke-width="2" transform="translate(27.4 8.6)">
						<path
							d="M21.6 4.4H.6v14c0 1.5 4.58 3 11 3 5.58 0 10-1.54 10-3v-14z"></path>
						<ellipse cx="11.1" cy="3.4" rx="10.5" ry="3"></ellipse></g>
						<path stroke="#757575" stroke-linecap="round" stroke-width="2"
							d="M28 17c0 1.66 4.7 3 10.5 3h0c5.8 0 10.5-1.34 10.5-3m-21 5c0 1.66 4.7 3 10.5 3h0c5.8 0 10.5-1.34 10.5-3"></path>
						<circle cx="19" cy="17" r="14" fill="#FFF" fill-rule="nonzero"
							stroke="#757575" stroke-width="2"></circle>
						<path stroke="#757575" stroke-linecap="round" stroke-width="4"
							d="M13 19h7c1 0 4-1.07 4-3 0-2.28-1.73-4-4-4h-3v12"></path></g></svg>
					<div class="order-list__info__wrap__content__text">
						<span>포인트</span><span
							class="order-list__info__wrap__content__value">6,086</span>
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
						<path
							d="M50.954 21.579l-3.868 4.741.069 5.582-23.073-8.398 3.763-10.336 23.11 8.41z"></path>
						<path
							d="M2.664 21.579l3.869 4.741-.069 5.582 23.072-8.398-3.762-10.336-23.11 8.41z"></path></g>
						<path fill="#FFF" stroke-width="2"
							d="M25.129 31.214a3 3 0 013.076 0l1.243.742a1 1 0 001.347-.307l.798-1.208a3 3 0 012.771-1.335l1.442.13a1 1 0 001.08-.862l.195-1.435A3 3 0 0139 24.534l1.355-.509a1 1 0 00.6-1.245l-.447-1.377a3 3 0 01.684-2.999l1-1.046a1 1 0 000-1.382l-1-1.047a3 3 0 01-.684-2.999l.447-1.377a1 1 0 00-.6-1.245L39 8.8a3 3 0 01-1.918-2.405l-.195-1.434a1 1 0 00-1.08-.862l-1.442.13a3 3 0 01-2.771-1.335l-.798-1.208a1 1 0 00-1.347-.308l-1.243.743a3 3 0 01-3.076 0l-1.243-.743a1 1 0 00-1.347.308l-.798 1.208a3 3 0 01-2.772 1.334l-1.442-.129a1 1 0 00-1.08.862l-.195 1.434A3 3 0 0114.334 8.8l-1.355.51a1 1 0 00-.6 1.244l.448 1.377a3 3 0 01-.685 3l-1 1.046a1 1 0 000 1.382l1 1.046a3 3 0 01.685 3l-.448 1.376a1 1 0 00.6 1.245l1.355.51a3 3 0 011.918 2.404l.195 1.435a1 1 0 001.08.861l1.442-.13a3 3 0 012.772 1.336l.798 1.208a1 1 0 001.347.307l1.243-.742z"></path>
						<path stroke-linecap="round" stroke-linejoin="round"
							stroke-width="4"
							d="M20 12.667l3.333 8.666 3.334-8.666m0 0L30 21.333l3.333-8.666"></path></g></g></svg>
					<div class="order-list__info__wrap__content__text">
						<span>구매등급</span><span
							class="order-list__info__wrap__content__value">WELCOME</span>
					</div>
				</button>
			</div>
			<div class="order-list__info__invite">
				<div class="order-list__info__invite__code">
					<span class="order-list__info__invite__code__title">나의 추천코드</span><span
						class="order-list__info__invite__code__content">RKS9UHJU</span>
				</div>
				<div class="order-list__info__invite__explain">
					나는
					<!-- -->
					5000
					<!-- -->
					P, 친구는
					<!-- -->
					5000
					<!-- -->
					원 쿠폰<a
						class="button button--color-blue button--size-50 button--shape-4 order-list__info__invite__explain__btn"
						href="/invite_codes/recommend_code">추천하기</a>
				</div>
			</div>
		</div>
		<div class="order-list__menu">
			<a class="order-list__menu__list"
				href="/user_shopping_pages/order_list?status=0"><div
					class="order-list__menu__list__wrap">
					<div class="order-list__menu__list__title">입금대기</div>
					<div class="order-list__menu__list__value">0</div>
				</div></a><a class="order-list__menu__list"
				href="/user_shopping_pages/order_list?status=1"><div
					class="order-list__menu__list__wrap">
					<div class="order-list__menu__list__title">결제완료</div>
					<div class="order-list__menu__list__value">0</div>
				</div></a><a class="order-list__menu__list"
				href="/user_shopping_pages/order_list?status=2"><div
					class="order-list__menu__list__wrap">
					<div class="order-list__menu__list__title">배송준비</div>
					<div class="order-list__menu__list__value">0</div>
				</div></a><a class="order-list__menu__list"
				href="/user_shopping_pages/order_list?status=3"><div
					class="order-list__menu__list__wrap">
					<div class="order-list__menu__list__title">배송중</div>
					<div class="order-list__menu__list__value">0</div>
				</div></a><a class="order-list__menu__list"
				href="/user_shopping_pages/order_list?status=4"><div
					class="order-list__menu__list__wrap">
					<div class="order-list__menu__list__title">배송완료</div>
					<div class="order-list__menu__list__value">0</div>
				</div></a><a class="order-list__menu__list"
				href="/user_shopping_pages/order_list?status=5"><div
					class="order-list__menu__list__wrap">
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
								<li
									class="filter-bar__control-list__item filter-bar__control-list__item--icon"><button
										class="filter-bar__control-list__icon" type="button"
										title="필터 전체">
										<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
											preserveAspectRatio="xMidYMid meet">
											<path fill="#BDBDBD"
												d="M18.284 4H5.716a.7.7 0 0 0-.61.362.668.668 0 0 0 0 .724l3.963 6.978c.353.632.97 1.348.971 2.076v6.181c.002.24-.054.388.149.558.203.17.343.118.444.095l3.29-1.257c.283-.095.321-.369.317-.676v-4.9c0-.73.338-1.445.69-2.077l3.963-6.978a.668.668 0 0 0 0-.724.7.7 0 0 0-.61-.362z"></path></svg>
									</button></li>
								<li class="filter-bar__control-list__item"><div
										class="drop-down panel-drop-down filter-bar-control">
										<button
											class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">
											기간
											<svg class="icon" width="12" height="12" viewBox="0 0 12 12"
												fill="currentColor" preserveAspectRatio="xMidYMid meet">
												<path
													d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path></svg>
										</button>
									</div></li>
								<li class="filter-bar__control-list__item"><div
										class="drop-down panel-drop-down filter-bar-control">
										<button
											class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">
											주문상태
											<svg class="icon" width="12" height="12" viewBox="0 0 12 12"
												fill="currentColor" preserveAspectRatio="xMidYMid meet">
												<path
													d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path></svg>
										</button>
									</div></li>
							</ul>
						</div>
						<ul class="filter-bar__tag-list"></ul>
					</div>
				</div>
			</div>
		</div>
	</div>