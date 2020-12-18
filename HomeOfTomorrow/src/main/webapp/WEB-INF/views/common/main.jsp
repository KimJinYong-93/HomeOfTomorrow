<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>



<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean" rel="stylesheet">
<link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/layout/application_react-1e92c7147066d0282bd14c1c54ad6f4eda35ac557fc7d3743f26f3ce17a3802d.css" />
<script src="https://static.ohou.se/assets/v3/layouts/navigation_stub-2afc6570f26c12358127eb3d1d8b54fc3aa1df1f1a041c239fcf21d9abcade4a.js"></script>
  
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/18-edc534e5.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/App-3e49e6d3.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/7-7f96bff5.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/13-69bdf3b3.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/templates-Home-HomePage-e9223171.chunk.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/slick/slick.js">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/slick/slick.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/slick/slick-theme.css">

<style>
 #container{
 	overflow-x:hidden; overflow-y:auto;
 }
 .slick-items{
 	width : 50%;
 	margin-left: 20%;
 	margin-top: 5%;
 }
 .slick-dots{
 	width : 77%;
 }
</style>


<div id="container">

    <div class="slick-items">
    <c:forEach items="${homeBoardTop3 }" var="homeBoard">
	    <li class="scroll-fade motion4" >
	        <a href="/product/tired-skull-black-diamond/20/category/1/display/2/"><img src="<%=request.getContextPath()%>/homeBoard/getPicture?picture=${homeBoard.picture}" alt="집들이베스트"></a>
			    <div style="z-index: 100; display: inline-block; margin-top: -50%;" >
                <span>${homeBoard.title }</span>
	         	<strong class="name">
	         		<a href="#"></a>
	         		<img alt="프로필이미지" src="<%=request.getContextPath()%>/member/getPicture?id=${homeBoard.id}" style="border: 1px solid gray; width: 20px; height: 20px;width: 30px;height: 30px; display: inline-block; border-radius: 50%;">
					<span style="font-size: 12px; color: #555555; padding-top: 0px;display: inline-block;">${homeBoard.writer }</span>
	            </strong>
	            </div>
	    </li>
   	</c:forEach>
    </div>

<div class="on" id="section_on_off">
    <!--★ P R O C U T ★-->
    <div id="main_section_2" class="xans-element- xans-product xans-product-listmain-1 xans-product-listmain xans-product-1 main_section"><div class="title scroll-fade motion1">
        <!--------------------------------------------------------------------------------------------------
            ※ 타이틀 수정 - 텍스트만 변경바랍니다.
        --------------------------------------------------------------------------------------------------->
        <h2>BEST &nbsp;PRODUCT </h2>
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
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',30,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-130" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(30,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('30', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/killer-cat-black-diamond/30/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/main_ban/event1.jpg"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/killer-cat-black-diamond/30/category/1/display/2/"
										name="anchorBoxName_30"> <img
										src="<%=request.getContextPath() %>/goods/getPicture?picture=${goods.picture}"
										id="eListPrdImage30_2" class="thumb_Img"
										alt="Killer Cat – Black Diamond">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/killer-cat-black-diamond/30/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/killer-cat-black-diamond/30/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">${goods.gname }</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">${goods.cname }</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">${goods.price }원</span>
											<span class="pri"><fmt:formatNumber type="number">${goods.price }</fmt:formatNumber>원</span></span> <span class="sale displaynone"></span>
										</li>
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


<div class="off" id="section_on_off">
    <!--★ S T O R Y ★-->
    <div id="main_section_3" class="main_section"> 
    <div class="inner">    
        <ul><li>
                <div class="title scroll-fade dj-viewport motion1">
                    <!--------------------------------------------------------------------------------------------------
                        ※ 타이틀 수정 - 텍스트만 변경바랍니다.
                    --------------------------------------------------------------------------------------------------->
                    <h2>STORY</h2><p class="bar"></p>
                </div>
            </li><li>
        </li></ul><ul class="banner"><li class="scroll-fade"><a href="/shopinfo/company.html"><img src="<%=request.getContextPath()%>/resources/_dj/img/main_section_3_banner_img1.jpg"></a></li>
            <li class="text scroll-fade">
                <h2>더 좋은 내일을 꿈꾸게</h2>
                <p class="ment"> 
                    편안함을 중점으로 베이직하지만 담백한 감성을 토대로 누구든 거부감 없이 쉽게 입을 수 있는 상품들을 소개합니다.
                    컬러를 재해석하여 쉽게 스타일링이 가능하고 입을 수 있는 워크웨어 감성과 더불어 무무에서만 볼 수 있는 특별한 상품까지 여러분에게 제안합니다.
                </p>
                <a href="/shopinfo/company.html">MUMU STORY</a>
            </li>
        </ul></div>
</div>
</div>
    

<div class="off" id="section_on_off">
    <!--★ M A G A Z I N E ★-->
    <div id="main_section_4" class="main_section"> 
    <div class="inner">    
        <ul><li>
                <div class="title scroll-fade dj-viewport motion1">
                    <!--------------------------------------------------------------------------------------------------
                        ※ 타이틀 수정 - 텍스트만 변경바랍니다.
                    --------------------------------------------------------------------------------------------------->
                    <h2>MAGAZINE </h2><p class="bar"></p>
                </div>
            </li><li>
        </li></ul><ul><!-- 매거진 시작 --><div id="dj-maz" class="main_maz main_section_width">
           <div class="xans-element- xans-board xans-board-listpackage-5 xans-board-listpackage xans-board-5 "><div class="maz_list">       
                
                                   </div>
</div>
   
              <p class="more_btn"><a href="/board/magazine/list.html?board_no=5">게시물 더보기</a></p>
              </div> 
        </ul><!-- 매거진 끝 --></div>
</div>
</div>
    
</div>



<script src="https://static.ohou.se/assets/v3/application_react-39c024d42df4dc70afcdc802be03a3c9af0e4e38c629c9255ff5b66c1abd9aa0.js"></script>
<script src="https://static.ohou.se/dist/js/vendor-9bc9135a2316948b78ce.js"></script>

<script src="https://static.ohou.se/dist/js/0-8701b5d5811d4b2c36d8.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/7-45da8a99e495dcda9029.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/13-5a926ce250f8bda5bcd9.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/templates-Home-HomePage-5d4e5fdcf89918bd1f96.chunk.js"></script>  <script src="https://static.ohou.se/dist/js/4-17bf1875b96b532caa79.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/5-929b9fffe7ae5368ab47.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/6-f9a7aa948033fe2a7698.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/8-d265326c5db90f2ab65d.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/10-b59309a75c6f37163459.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/11-9849b06d57186c4133de.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/18-a2c672c31d65f840159c.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/App-cf611cec6ec3494b7a1e.js"></script>

<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/_dj/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
$('.autoplay').slick({
	  slidesToShow: 3,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 2000,
	});
</script>


<script type="text/javascript">



$(document).ready(function () {


	$('.slick-items').slick({
		slidesToShow: 3,
		
		slidesToScroll: 1,
		
		autoplay : true,

		dots: true,

		speed : 1000 /* 이미지가 슬라이딩시 걸리는 시간 */,

		infinite: true,

		autoplaySpeed: 3000 /* 이미지가 다른 이미지로 넘어 갈때의 텀 */,

		arrows: true,

		slidesToShow: 1,

		slidesToScroll: 1,

		fade: false

	});

});



</script>
