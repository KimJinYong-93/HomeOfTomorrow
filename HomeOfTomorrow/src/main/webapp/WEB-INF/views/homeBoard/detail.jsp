<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<div id="container">
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/App-3e49e6d3.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/14-0f9754c8.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/19-02f372a3.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/32-a0514330.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/templates-Content-ProjectDetail-9b23669a.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/containers-CommentFeed-CommentFeedProvider-fca43689.chunk.css" />
	<main class="content-detail">
	<div class="content-detail-cover-image">
		<div class="content-detail-cover-image__sizer">
			<div class="content-detail-cover-image__inner-sizer"></div>
		</div>
		<div class="content-detail-cover-image__image"
			style="background-image: url('<%=request.getContextPath() %>/homeBoard/getPicture?picture=${homeBoard.picture }'); background-size: cover; background-repeat: no-repeat; background-position: center 57.3611%;"></div>
		<button class="content-detail-cover-image__app-button" type="button">
			<div class="content-detail-cover-image__app-button-box">
				더 편하게 앱으로 보기
				<svg class="icon" width="1em" height="1em" viewBox="0 0 24 24"
					preserveAspectRatio="xMidYMid meet">
					<path fill="currentColor" fill-rule="nonzero"
						d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg>
			</div>
		</button>
	</div>
	<a
		class="project-detail-cover-image-button project-detail-cover-image-button--skyblue-50"
		href="/projects/40175/use_products">이 집의 모든 제품 보기<svg class="icon"
			width="1em" height="1em" viewBox="0 0 24 24"
			preserveAspectRatio="xMidYMid meet">
			<path fill="currentColor" fill-rule="nonzero"
				d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg></a>
	<div class="content-detail-content-section">
		<div class="content-detail-content-section__content">
			<header class="content-detail-header">
				<div class="content-detail-header__top">
					<p class="content-detail-header__category">온라인 집들이</p>
				</div>
				<h1 class="content-detail-header__title"></h1>
				<div class="content-detail-header__bottom">
					<a class="content-detail-header__author" href="/users/1480735"><div
							class="content-detail-header__author-image">
							<img class="image" alt=""
								src="<%=request.getContextPath()%>/member/getPicture?id=${homeBoard.id}">
						</div>
						<div class="content-detail-header__author-name">${homeBoard.writer }</div>
						<div class="content-detail-header__author-date"><fmt:formatDate value="${homeBoard.reg_dt }" pattern="yyyy년 MM월 dd일"/></div></a>
					<c:if test="${homeBoard.id eq loginUserDetail.id }">
					<div class="content-detail-header__user-actions">
						<button class="_3Z6oR _3AsCW _1BDvx content-detail-header__follow">수정</button>
						<div class="drop-down content-detail-header__more">
							<button
								class="_3Z6oR _3lIhQ _1BDvx content-detail-header__more-button" style="width: 90px; font-size: 15px;" onclick="homeBoardDelete(${homeBoard.hno});">삭제
							</button>
						</div>
					</div>
					</c:if>
				</div>
			</header>
				<p class="bpd-view-text bpd-view-p-block"></p>
			<div class="bpd-view project-detail__content-bpd">
				${homeBoard.content }
				<div class="bpd-view-button-block bpd-view-button-block--sns">
					<a
						class="bpd-view-button-block__button bpd-view-button-block__button--sns"
						href="<%=request.getContextPath() %>/homeBoard/list" target="_blank"
						rel="noreferrer noopener">목록으로</a>
				</div>
			</div>
		</div>
		<div class="content-detail-content-section__sidebar">
			<div data-sticky-enabled="false" data-sticky-disabled="false"
				data-sticky-always="false" data-sticky-ignore="false"
				data-direction="top" data-offset="81"
				class="sticky-container content-detail-content-section__sidebar-sticky"
				style="position: sticky; top: 81px;">
				<div
					class="sticky-child content-detail-content-section__sidebar-inner"
					style="position: relative; box-sizing: border-box; height: 641px;">
					<div class="content-detail-sidebar">
						<button
							class="content-detail-sidebar-button content-detail-sidebar-button--white"
							aria-pressed="false" title="좋아요" type="button">
							<svg class="content-detail-sidebar__icon-blue icon" width="24"
								height="24" fill="currentColor" stroke="currentColor"
								stroke-width="2" viewBox="0 0 24 24"
								preserveAspectRatio="xMidYMid meet">
								<path
									d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path></svg>
							<svg class="content-detail-sidebar__icon-inactive icon"
								width="24" height="24" viewBox="0 0 24 24"
								preserveAspectRatio="xMidYMid meet">
								<path fill="currentColor"
									d="M22.971 7.638c-.548-5.17-7.119-7.135-10.57-2.488a.5.5 0 0 1-.802 0C8.148.503 1.577 2.469 1.029 7.625.642 12.451 3.897 17.183 12 21.436c8.104-4.252 11.36-8.984 10.972-13.798zm.996-.093c.428 5.319-3.137 10.446-11.738 14.899a.5.5 0 0 1-.46 0C3.169 17.99-.395 12.864.034 7.532.656 1.67 7.904-.683 12 4.052 16.096-.683 23.344 1.67 23.967 7.545z"></path></svg>
						</button>
						<span class="content-detail-sidebar-counter">621</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="content-detail-footer">
		<dl class="content-detail-stats">
			<div class="content-detail-stats__item">
				<dt>좋아요</dt>
				<dd>621</dd>
			</div>
			<div class="content-detail-stats__item">
				<dt>조회</dt>
				<dd>44,278</dd>
			</div>
		</dl>
		<div></div>
	</div>
	<div data-sticky-enabled="false" data-sticky-disabled="false"
		data-sticky-always="false" data-sticky-ignore="false"
		data-direction="bottom" data-offset="0"
		class="sticky-container content-detail-floating-wrap content-detail-floating-wrap--overlay"
		style="position: sticky; bottom: 0px;">
		<div class="sticky-child content-detail-floating"
			style="position: relative;">
			<div class="content-detail-floating__content">
				<button class="content-detail-floating-action" title="좋아요"
					type="button">
					<span class="content-detail-floating-action__item"><svg
							class="icon" width="24" height="24" viewBox="0 0 24 24"
							preserveAspectRatio="xMidYMid meet">
							<path fill="currentColor"
								d="M22.971 7.638c-.548-5.17-7.119-7.135-10.57-2.488a.5.5 0 0 1-.802 0C8.148.503 1.577 2.469 1.029 7.625.642 12.451 3.897 17.183 12 21.436c8.104-4.252 11.36-8.984 10.972-13.798zm.996-.093c.428 5.319-3.137 10.446-11.738 14.899a.5.5 0 0 1-.46 0C3.169 17.99-.395 12.864.034 7.532.656 1.67 7.904-.683 12 4.052 16.096-.683 23.344 1.67 23.967 7.545z"></path></svg></span><span
						class="content-detail-floating-action__count">621</span>
				</button>
			</div>
		</div>
	</div>
	</main>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	function homeBoardDelete(hno){
		if(confirm('정말로 집들이 게시글을 삭제하시겠습니까?')){
			location.href="<%=request.getContextPath()%>/homeBoard/deleteHomeBoard?hno="+hno;
		}
	}
</script>
</div>

