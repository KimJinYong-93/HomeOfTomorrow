<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/maineffect.css">

<script
	src="https://static.ohou.se/assets/v3/layouts/navigation_stub-2afc6570f26c12358127eb3d1d8b54fc3aa1df1f1a041c239fcf21d9abcade4a.js"></script>
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css" />
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/App-3e49e6d3.css" />
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/7-7f96bff5.chunk.css" />
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/13-69bdf3b3.chunk.css" />
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/templates-Home-HomePage-e9223171.chunk.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/_dj/js/slick/slick.js">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/_dj/js/slick/slick.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/_dj/js/slick/slick-theme.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<style>
@font-face {
	font-family: 'Nanum Gothic';
	font-style: normal;
	font-weight: 600;
}

#container {
	overflow-x: hidden;
	overflow-y: auto;
}

.slick-items {
	position: relative;
	width: 50%;
	margin-left: 10%;
	margin-top: 3%;
	float: left;
}

.slider_info {
	width: 667px;
	position: absolute;
	top: 440px;
	z-index: 10;
	height: 200px;
	padding: 20px;
	color: #fff;
	font-weight: 800;
	margin-left: 10px;
}

.slider_back {
	width: 850px;
	position: absolute;
	top: 367px;
	z-index: 1;
	height: 200px;
	padding: 20px;
	color: #fff;
	font-weight: 800;
	background-image: linear-gradient(to top, rgba(130, 123, 109, 0.5) 30%,
		transparent);
}

.slick-dots {
	width: 850px;
}

#slide_title {
	font-family: 'Nanum Gothic';
	font-weight: 600;
	font-size: 30px;
}

#slider_profile {
	border: 1px none #fff;
	width: 30px;
	height: 30px;
	display: inline-block;
	border-radius: 50%;
	margin-top: 10px;
	margin-right: 10px;
}

.event_ban {
	position: absolute;
	right: 15%;
	width: 100%;
	height: 567px;
	margin-top: 2.6%;
	right: 15%;
	background-image:
		url('<%=request.getContextPath()%>/resources/_dj/img/main_ban/event1.jpg');
	background-repeat: no-repeat;
	background-position: center;
	background-size: contain;
}

.best-item {
	width: 80%;
	margin-left: 10%;
}
</style>


<div class="best-item">
	<div class="slick-items" style="width: 75%">
		<c:forEach items="${homeBoardTop3 }" var="homeBoard">
			<li class="scroll-fade motion4"><a
				href="/product/tired-skull-black-diamond/20/category/1/display/2/"><img
					src="<%=request.getContextPath()%>/homeBoard/getPicture?picture=${homeBoard.picture}"
					alt="집들이베스트"></a>
				<div class="slider_back"></div>
				<div class="slider_info">
					<span id="slide_title">${homeBoard.title }</span><br> <a
						href="#"></a> 
						<img id="slider_profile" alt="프로필이미지"
						src="<%=request.getContextPath()%>/member/getPicture?id=${homeBoard.id}">
					<span
						style="font-size: 15px; font-weight: 700; color: #fff; padding-top: 0px; display: inline-block;">${homeBoard.writer }</span>
				</div></li>
		</c:forEach>
	</div>
	<div class="event_ban" style="width: 20%"></div>
</div>
<div class="on" id="section_on_off">
	<!--★ P R O C U T ★-->
	<div id="main_section_2"
		class="xans-element- xans-product xans-product-listmain-1 xans-product-listmain xans-product-1 main_section">
		<div class="title scroll-fade motion1">
			<!--------------------------------------------------------------------------------------------------
            ※ 타이틀 수정 - 텍스트만 변경바랍니다.
        --------------------------------------------------------------------------------------------------->
			<h2>BEST &nbsp;PRODUCT</h2>
			<p class="bar"></p>
		</div>
		<div class="dj-product dj-main-product">
			<ul class="prdList grid4">
				<c:forEach items="${goodsTop12 }" var="goods">
					<li id="anchorBoxId_30" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count40">
									<span class="dj-mov-fade-in-out2">31%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_30">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a onclick=""> <svg version="1.1"
													id="Capa_1" xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
													viewBox="0 0 550 550"
													style="enable-background: new 0 0 512 512;"
													xml:space="preserve" fill="#868687">
														<g>
															<path
														d="M156,256c0,11.046,8.954,20,20,20h60v60c0,11.046,8.954,20,20,20s20-8.954,20-20v-60h60c11.046,0,20-8.954,20-20
																c0-11.046-8.954-20-20-20h-60v-60c0-11.046-8.954-20-20-20s-20,8.954-20,20v60h-60C164.954,236,156,244.954,156,256z" />
															<path
														d="M160.406,61.8l25.869-10.716c10.204-4.228,15.051-15.927,10.823-26.132c-4.228-10.205-15.926-15.054-26.132-10.823
																l-25.869,10.716c-10.204,4.228-15.051,15.927-10.823,26.132C138.488,61.148,150.168,66.038,160.406,61.8z" />
															<path
														d="M256,0c-11.046,0-20,8.954-20,20s8.954,20,20,20c119.378,0,216,96.608,216,216c0,119.378-96.608,216-216,216
																c-119.378,0-216-96.608-216-216c0-11.046-8.954-20-20-20s-20,8.954-20,20c0,141.483,114.497,256,256,256
																c141.483,0,256-114.497,256-256C512,114.517,397.503,0,256,0z" />
															<path
														d="M93.366,113.165l19.799-19.799c7.811-7.811,7.811-20.475,0-28.285c-7.811-7.81-20.475-7.811-28.285,0L65.081,84.88
																c-7.811,7.811-7.811,20.475,0,28.285C72.89,120.974,85.555,120.976,93.366,113.165z" />
															<path
														d="M24.952,197.099c10.227,4.236,21.914-0.642,26.132-10.823l10.716-25.87c4.228-10.205-0.619-21.904-10.823-26.132
																c-10.207-4.227-21.904,0.619-26.132,10.823l-10.716,25.869C9.901,181.172,14.748,192.871,24.952,197.099z" />
														</g>
											</svg>
										</a><span>옵션보기</span></li>
										<li class="cart"><a href="#none"> <svg
													viewBox="0 0 550 550" xmlns="http://www.w3.org/2000/svg"
													fill="#868687">
														<path
														d="m448 512h-384c-35.285156 0-64-28.714844-64-64v-85.332031c0-11.777344 9.558594-21.335938 21.332031-21.335938 11.777344 0 21.335938 9.558594 21.335938 21.335938v85.332031c0 11.753906 9.578125 21.332031 21.332031 21.332031h384c11.753906 0 21.332031-9.578125 21.332031-21.332031v-85.332031c0-11.777344 9.558594-21.335938 21.335938-21.335938 11.773437 0 21.332031 9.558594 21.332031 21.335938v85.332031c0 35.285156-28.714844 64-64 64zm0 0" />
														<path
														d="m356.414062 271.082031-85.332031 85.332031c-8.339843 8.34375-21.824219 8.34375-30.164062 0l-85.332031-85.332031c-6.101563-6.101562-7.9375-15.273437-4.632813-23.253906 3.308594-7.957031 11.09375-13.160156 19.714844-13.160156h64v-213.335938c0-11.773437 9.554687-21.332031 21.332031-21.332031s21.332031 9.558594 21.332031 21.332031v213.335938h64c8.621094 0 16.40625 5.203125 19.714844 13.160156 3.304687 7.980469 1.46875 17.152344-4.632813 23.253906zm0 0" /></svg>
										</a><span>장바구니</span></li>
										<li class="pop"><a href="#" target="blank"> <svg
													viewBox="0 0 512 511" xmlns="http://www.w3.org/2000/svg"
													fill="#868687">
														<path
														d="m168 138.5h-104c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10h104c5.523438 0 10-4.476562 10-10s-4.476562-10-10-10zm0 0" />
														<path
														d="m210 158.5c2.628906 0 5.210938-1.070312 7.070312-2.929688 1.859376-1.859374 2.929688-4.441406 2.929688-7.070312s-1.070312-5.210938-2.929688-7.070312c-1.859374-1.859376-4.441406-2.929688-7.070312-2.929688s-5.210938 1.070312-7.070312 2.929688c-1.859376 1.859374-2.929688 4.441406-2.929688 7.070312s1.070312 5.210938 2.929688 7.070312c1.859374 1.859376 4.441406 2.929688 7.070312 2.929688zm0 0" />
														<path
														d="m164 198.5h-100c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10h100c5.523438 0 10-4.476562 10-10s-4.476562-10-10-10zm0 0" />
														<path
														d="m164 258.5h-100c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10h100c5.523438 0 10-4.476562 10-10s-4.476562-10-10-10zm0 0" />
														<path
														d="m64 56.5c2.628906 0 5.210938-1.070312 7.070312-2.929688 1.859376-1.859374 2.929688-4.441406 2.929688-7.070312s-1.070312-5.210938-2.929688-7.070312c-1.859374-1.859376-4.441406-2.929688-7.070312-2.929688s-5.210938 1.070312-7.070312 2.929688c-1.859376 1.859374-2.929688 4.441406-2.929688 7.070312s1.070312 5.210938 2.929688 7.070312c1.859374 1.859376 4.441406 2.929688 7.070312 2.929688zm0 0" />
														<path
														d="m105.671875 56.5c2.628906 0 5.207031-1.070312 7.066406-2.929688 1.863281-1.859374 2.933594-4.441406 2.933594-7.070312s-1.070313-5.210938-2.933594-7.070312c-1.859375-1.859376-4.4375-2.929688-7.066406-2.929688-2.640625 0-5.210937 1.070312-7.082031 2.929688-1.859375 1.859374-2.917969 4.441406-2.917969 7.070312s1.058594 5.210938 2.917969 7.070312c1.871094 1.859376 4.441406 2.929688 7.082031 2.929688zm0 0" />
														<path
														d="m147.328125 56.5c2.640625 0 5.210937-1.070312 7.082031-2.929688 1.859375-1.859374 2.917969-4.441406 2.917969-7.070312s-1.058594-5.210938-2.917969-7.070312c-1.871094-1.859376-4.441406-2.929688-7.082031-2.929688-2.628906 0-5.207031 1.070312-7.066406 2.929688-1.863281 1.859374-2.933594 4.441406-2.933594 7.070312s1.070313 5.210938 2.933594 7.070312c1.859375 1.859376 4.4375 2.929688 7.066406 2.929688zm0 0" />
														<path
														d="m210 56.5h151.667969c5.523437 0 10-4.476562 10-10s-4.476563-10-10-10h-151.667969c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10zm0 0" />
														<path
														d="m310.003906 222.5c-48.523437 0-88 39.476562-88 88s39.476563 88 88 88c48.523438 0 88-39.476562 88-88s-39.476562-88-88-88zm0 156c-37.496094 0-68-30.503906-68-68s30.503906-68 68-68 68 30.503906 68 68-30.503906 68-68 68zm0 0" />
														<path
														d="m502.066406 454.613281-79.363281-79.367187c11-19.074219 17.300781-41.1875 17.300781-64.746094 0-25.421875-7.339844-49.15625-20.003906-69.210938v-206.789062c0-18.746094-15.253906-34-34-34h-352c-18.746094 0-34 15.253906-34 34v300c0 18.746094 15.253906 34 34 34h159.683594c21.351562 42.648438 65.46875 72 116.320312 72 23.554688 0 45.667969-6.300781 64.742188-17.300781l79.367187 79.367187c6.609375 6.613282 15.292969 9.917969 23.976563 9.917969s17.367187-3.304687 23.976562-9.917969c6.40625-6.402344 9.933594-14.917968 9.933594-23.976562 0-9.054688-3.527344-17.570313-9.933594-23.976563zm-468.066406-434.113281h352c7.71875 0 14 6.28125 14 14v38h-380v-38c0-7.71875 6.28125-14 14-14zm0 328c-7.71875 0-14-6.28125-14-14v-242h380v124.277344c-23.375-22.453125-55.101562-36.277344-89.996094-36.277344-71.683594 0-130 58.316406-130 130 0 13.214844 1.988282 25.976562 5.671875 38zm166.003906-38c0-60.652344 49.347656-110 110-110s110 49.347656 110 110-49.347656 110-110 110-110-49.347656-110-110zm287.921875 177.925781c-5.421875 5.425781-14.246093 5.421875-19.667969 0l-76.738281-76.738281c7.234375-5.839844 13.828125-12.433594 19.667969-19.667969l76.738281 76.734375c2.628907 2.628906 4.074219 6.121094 4.074219 9.835938s-1.445312 7.210937-4.074219 9.835937zm0 0" />
														<path
														d="m310.003906 265.503906c-5.523437 0-10 4.476563-10 10 0 5.523438 4.476563 10 10 10 13.78125 0 24.996094 11.214844 24.996094 24.996094 0 5.523438 4.476562 10 10 10s10-4.476562 10-10c0-24.8125-20.183594-44.996094-44.996094-44.996094zm0 0" /></svg>
												<span>새창열기</span></li>
									</ul>
								</div>
								<div class="prdImg scroll-fade">
									<a href="<%=request.getContextPath() %>/goods/detail?gcode=${goods.gcode}" name="anchorBoxName_30">
										<img src="<%=request.getContextPath() %>/goods/getPicture?picture=${goods.picture}" id="eListPrdImage30_2" class="thumb_Img"
										alt="Killer Cat – Black Diamond">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='<%=request.getContextPath() %>/goods/detail?gcode=${goods.gcode}';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/killer-cat-black-diamond/30/category/1/display/2/"
										class=""> <span style="font-size: 12px; color: #555555;">${goods.gname }</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">${goods.bname }</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">${goods.price }원</span>
												<span class="pri"><fmt:formatNumber type="number">${goods.price }</fmt:formatNumber>원</span></span>
											<span class="sale displaynone"></span></li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>




<script
	src="https://static.ohou.se/assets/v3/application_react-39c024d42df4dc70afcdc802be03a3c9af0e4e38c629c9255ff5b66c1abd9aa0.js"></script>
<script
	src="https://static.ohou.se/dist/js/vendor-9bc9135a2316948b78ce.js"></script>

<script
	src="https://static.ohou.se/dist/js/0-8701b5d5811d4b2c36d8.chunk.js"></script>
<script
	src="https://static.ohou.se/dist/js/7-45da8a99e495dcda9029.chunk.js"></script>
<script
	src="https://static.ohou.se/dist/js/13-5a926ce250f8bda5bcd9.chunk.js"></script>
<script
	src="https://static.ohou.se/dist/js/templates-Home-HomePage-5d4e5fdcf89918bd1f96.chunk.js"></script>
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

<script src="https://code.jquery.com/jquery-2.2.0.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/resources/_dj/js/slick/slick.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$('.autoplay').slick({
		slidesToShow : 3,
		slidesToScroll : 1,
		autoplay : true,
		autoplaySpeed : 2000,
	});
</script>


<script type="text/javascript">
	$(document).ready(function() {
		$('.slick-items').slick({
			slidesToShow : 3,
			slidesToScroll : 1,
			autoplay : true,
			dots : true,
			speed : 2000 /* 이미지가 슬라이딩시 걸리는 시간 */,
			infinite : true,
			autoplaySpeed : 3000 /* 이미지가 다른 이미지로 넘어 갈때의 텀 */,
			arrows : false,
			slidesToShow : 1,
			slidesToScroll : 1,
			fade : false
		});
	});
</script>
