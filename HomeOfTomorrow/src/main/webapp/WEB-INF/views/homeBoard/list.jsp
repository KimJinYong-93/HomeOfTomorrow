<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/plugins/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/upload.css" />
  <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/upload2.css" />
<style>
	.wrap{
		margin: 5%;
	}
	.title{
		display: flex;
		justify-content: center;
		align-items: center;
	}
	th, td{
		text-align: center;
	}
	.perPage{
		width: 70px;
	}
	.searchBtn{
		margin-left: 2px;
	}
	.btn-primary{
		color: #fff;
    	background-color: #7399c9;
    	border-color: #7399c9;
	}
	.btn-primary:hover{
		color: #fff;
    	background-color: #638cbf;
    	border-color: #638cbf;
	}
	.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover {
	    z-index: 3;
	    color: #fff;
	    cursor: default;
	    background-color: #7399c9;
	    border-color: #7399c9;
	}
	td{
		font-size: 13px;
	}
	.pagination>li>a, .pagination>li>span{
		position: relative;
	    float: left;
	    padding: 6px 12px;
	    margin-left: -1px;
	    line-height: 1.42857143;
	    color: #337ab7;
	    text-decoration: none;
	    background-color: #fff;
	    border: 1px solid #ddd;
	    font-size: 15px;
	}
	.title{
		margin-bottom: 2%;
	}
	.input-group{
		margin-top: 15px; 
		float: right;
		height: 38px;
		font-size: 14px;
	}
	nav{
		margin-top: 3%
	}
</style>
<c:set var="pageMaker" value="${dataMap.pageMaker }"/>
<c:set var="boardList" value="${dataMap.boardList }"/>
<c:set var="cri" value="${pageMaker.cri }" />
<div class="wrap">
	<div class="title" style="margin-bottom: 5%;">
        <div class="justify-center seller-layout__header">
				<h1><font color="#7399c9">JIP</font></h1>
				<span style="font-size: 16px; position: relative; top: 20px; color: gray;">나만의 개성있는 집을 다른 회원들에게 소개시켜주세요💖 </span>
		</div>
    </div>
    
    <div class="row">
	        <button class="btn" style="color: white; font-size: 18px; float: right; background: #a5c1e6; margin-left: 83%; padding: 5px 20px;" onclick="registBtn()">글등록</button>
	</div>       

	<div class="ec-base-table typeList gBorder">
		  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,viewport-fit=cover">
		  <meta name="naver-site-verification" content="02b1a3c42ca24420bada54291813fdd604872c89">
		
		  <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
		
		  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
		  <script src="https://static.ohou.se/assets/v3/layouts/navigation_stub-2afc6570f26c12358127eb3d1d8b54fc3aa1df1f1a041c239fcf21d9abcade4a.js"></script><style type="text/css">.layout-top-banner-mobile.layout-top-banner-mobile--unloaded { display: none; }</style>
		  
		    <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css">
			<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/2-efe4945d.chunk.css">
			<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/9-d91eb381.chunk.css">
			<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/17-a6e9d202.chunk.css">
			<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/41-1b38e8d8.chunk.css">
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/jip.css">
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/jip2.css">
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/jip3.css"> 
		
		<div class="container">
			<div class="project-feed">
				<!-- ///////////////////홈보드 전체 글 카운트 ///////////////////////// -->
				<div class="project-feed__count"></div>
				<div class="virtualized-list row"
					style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px);">
					<c:forEach items="${homeBoardList }" var="homeBoard">
					<div class="col-12 col-md-4">
						<article class="project-feed__item">
							<!-- //////////////////해당 게시글 URL///////////////////////// -->
							<a class="project-feed__item__link" href="<%=request.getContextPath()%>/homeBoard/detail?hno=${homeBoard.hno}"></a>
							<div class="project-feed__item__image">
								<!-- //////////////////해당 게시글 이미지///////////////////////// -->
								<img class="image" alt="" src="<%=request.getContextPath()%>/homeBoard/getPicture?picture=${homeBoard.picture}">
									<span class="project-feed__item__image__new" aria-label="NEW">
										<svg class="icon" width="36" height="20" viewBox="0 0 36 20" preserveAspectRatio="xMidYMid meet">
										<g fill="none" fill-rule="evenodd">
										<rect width="36" height="20" fill="#FDBD39" rx="4"></rect>
										<path fill="#FFF" fill-rule="nonzero" d="M6 14V6h1.668l3.446 5.644h.036V6h1.318v8h-1.475L7.354 7.97h-.036V14H6zm8.414 0V6h5.174v1.131h-3.687v2.193h2.865v1.12h-2.865v2.425h3.76V14h-5.247zm8.317 0l-2.067-8h1.511l1.414 5.924h.037L25.318 6h1.21l1.667 5.924h.037L29.658 6H31l-2.03 8h-1.476l-1.62-5.808h-.036L24.194 14H22.73z"></path></g></svg></span>
							</div>
							<!-- //////////////////홈보드 타이틀 연결///////////////////////// -->
							<h1 class="project-feed__item__title">${homeBoard.title }</h1>
							<address class="project-feed__item__writer-wrap">
								<a class="project-feed__item__writer">
									<!-- //////////////////유저프로필 이미지연결///////////////////////// -->
									<img class="project-feed__item__writer__image" alt="" src="<%=request.getContextPath()%>/member/getPicture?id=${homeBoard.id}">
									<!-- //////////////////유저아이디연결///////////////////////// -->
									<span class="project-feed__item__writer__name">${homeBoard.writer }</span></a>
							<footer class="project-feed__item__status">
								<!-- //////////////////조회수연결 ///////////////////////// -->
								<span class="entry">조회수 ${homeBoard.viewcnt }</span>
							</footer>
							</address>
						</article>
					</div>
					</c:forEach>
					
				</div>
			</div>
		</div>
 	   </div>
</div>
<script>
	function registBtn(){
		location.href="registForm?cg_code=${cg_code}";
	}
</script>


