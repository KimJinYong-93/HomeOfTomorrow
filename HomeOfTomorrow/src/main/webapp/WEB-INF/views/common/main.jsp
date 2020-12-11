<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container">     
    

<!-------------------------------------------------------------------------------------------------------------------------------------



   ◀◀◀◀◀ 좌측 자주쓰는화면의 "dj_map.html" 를 클릭하시면 수정위치를 보다 쉽게 찾으실 수 있습니다. ◀◀◀◀◀

   ※ 각 섹션 별로 사용 원하지 않으실 경우 class="on"을 class="off"로 변경하시면 숨김 처리가 됩니다.
      다시 class="on"으로 설정시 보여지게 됩니다. 

   ※ 직접 수정 시 오류가 발생할 수 있으므로, 꼭 수정전 파일을 백업하시길 권합니다. (오류 발생 후 복구 요청시 비용 발생)

   ※ 모든 이미지는 편집창이나 사이트상이 아닌 FTP를 이용해 수정하셔야 합니다. 
      관련 매뉴얼은 http://d-j.co.kr/_dj/sub/manual/list.html?board_no=3 (FTP 사용법 이미지 변경)을 참고 바랍니다.



--------------------------------------------------------------------------------------------------------------------------------------->

<style> 
    .dj_slider .slider_1 { min-height:600px; }
    .dj_slider .slider_1.slick-initialized { height:600px; } 
</style>


<div class="on" id="section_on_off">  
    <!--★ 메인 롤링이미지 ★-->
    <div id="main_section_1">    
<div class="section left"> 
<div class="dj_slider slider_1_top action_block">  
                 <div class="foot_btn">              
                     <ul class="inner"><li class="btn_prev slick-arrow" style="display: list-item;"><img src="<%=request.getContextPath() %>/resources/_dj/img/slider_2_prev_btn.png"></li>
                         <li class="btn_next slick-arrow" style="display: list-item;"><img src="<%=request.getContextPath() %>/resources/_dj/img/slider_2_next_btn.png"></li>
                     </ul></div>
                 <!------------------------------------------------

                    ※ 숫자 3를 이미지 개수만큼 변경하시면 됩니다.

                 ------------------------------------------------->
                 <div class="slider_tag"><span>1 / 4</span></div>
                 <div class="slider_1 slick-initialized slick-slider" style="height: 600px;">  
                     
                 <!------------------------------------------------------------------------
.
                    ※ onclick="window.location.href='링크주소';"
                    ※ <div> ~ </div> 까지 복사해 원하시는 개수로 사용 가능합니다.

                  ------------------------------------------------------------------------>     
                  <!--★ 0번 이미지 ★-->
                  <div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 5200px;"><div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 1300px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;">
                      <img src="<%=request.getContextPath() %>/resources/_dj/img/main_ban/00.jpg" id="slider_0_img" alt="영번째이미지">
                  &nbsp;</div><div class="slick-slide" data-slick-index="1" aria-hidden="true" style="transition: opacity 400ms linear 0s; width: 1300px; position: relative; left: -1300px; top: 0px; z-index: 998; opacity: 0;">
                      <img src="<%=request.getContextPath() %>/resources/_dj/img/main_ban/01.jpg" id="slider_1_img" alt="첫번째이미지">
                  &nbsp;</div><div class="slick-slide" data-slick-index="2" aria-hidden="true" style="transition: opacity 400ms linear 0s; width: 1300px; position: relative; left: -2600px; top: 0px; z-index: 998; opacity: 0;">
                       <img src="<%=request.getContextPath() %>/resources/_dj/img/main_ban/02.jpg" id="slider_1_img" alt="두번째이미지">                     
                  &nbsp;</div><div class="slick-slide" data-slick-index="3" aria-hidden="true" style="transition: opacity 400ms linear 0s; width: 1300px; position: relative; left: -3900px; top: 0px; z-index: 998; opacity: 0;">
                       <img src="<%=request.getContextPath() %>/resources/_dj/img/main_ban/03.png" id="slider_1_img" alt="세번째이미지">                     
                  &nbsp;</div></div></div>  
                     
                  <!--★ 1번 이미지 ★-->
                    

                  <!--★ 2번 이미지 ★-->
                     
                     
                  <!--★ 3번 이미지 ★-->
                  
                                       
	                  <ul class="slick-dots" style="display: block;">
	                  <li class="slick-active" aria-hidden="false">
	                  	<button type="button" data-role="none" role="button" aria-required="false" tabindex="0">1</button></li>
	                  <li aria-hidden="true" class="">
	                  	<button type="button" data-role="none" role="button" aria-required="false" tabindex="0">2</button></li>
	                  <li aria-hidden="true" class="">
	                  	<button type="button" data-role="none" role="button" aria-required="false" tabindex="0">3</button></li>
	                  <li aria-hidden="true" class="">
	                  <button type="button" data-role="none" role="button" aria-required="false" tabindex="0">4</button></li>
	                  </ul>
                  </div>
       
                 <script type="text/javascript" src="<%=request.getContextPath() %>/resources/_dj/js/jquery-1.11.0.min.js"></script>
				 <script type="text/javascript" src="<%=request.getContextPath() %>/resources/_dj/js/slick/slick.min.js"></script>
                 <!------------------------------------------------------------------------ 

                    ※ autoplaySpeed: 7000 에서 속도를 조절하시면 됩니다. 1000 = 1초

                 --------------------------------------------------------=---------------->
                 <script type="text/javascript">      
                 $('.slider_1').slick({  
                 prevArrow: $('.btn_prev'),
                 nextArrow: $('.btn_next'),
                 autoplay: true,
                 autoplaySpeed: 5000,
                 dots: true,
                 arrow: true,
                 infinite: true,
                 fade: true,
                 speed: 400,               
                 cssEase: 'linear',
                 accessibility: false,
                 pauseOnHover: false,                
                 });
                 </script> 
                 <script type="text/javascript">
                 var $status = $('.slider_tag span');
                 var $slickElement = $('.slider_1_top');
                 $slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
                 var i = (currentSlide ? currentSlide : 0) + 1;
                 $status.text(i + ' / ' + slick.slideCount);});   
                 </script> 
</div>  
</div>  
</div>
</div>


<div class="off" id="section_on_off">
    <!--★ 시그니처 텍스트 ★-->
    <div id="main_section_ment">
    <ul><li>
            <p class="eng scroll-fade dj-viewport motion2">MUMU 19 WINTER COLLECTION</p>
            
            <h2 class="scroll-fade  motion1">
                더 좋은 내일을<br>
                꿈꾸게 하는<br>
                무무 드림 컬렉션
            </h2>
           
            <p class="scroll-fade dj-viewport motion5">
                무무의 이번 컬렉션은 각기 다른 소재와 색감의 옷들이 여러 형식으로 레이어드되고 결국에는 조화로운 한 톤을 이루는데 집중한 시즌입니다.<br>
                겨울에 어울리는 부드럽고 차분한 색채와 소재로 완성한 무무의 윈터 컬렉션을 만나보세요.
            </p>
        </li>
    </ul></div>
</div>


<div class="on" id="section_on_off">
    <!--★ 배너 3개 ★-->
    <div id="main_section_banner">
    <ul><li class="scroll-fade motion4">
            <!-------------------------------------------
            ※  <a href="링크주소">
            --------------------------------------------->
                <a href="/product/tired-skull-black-diamond/20/category/1/display/2/"><img src="<%=request.getContextPath()%>/resources/_dj/img/main_ban/signature-01.jpg" alt="배너이미지1"></a>
                <span>TIRED SKULL</span>
        </li>
        <li class="scroll-fade motion4">
                <a href="/product/lonely-lion-silver-lining/22/category/23/display/1/"><img src="<%=request.getContextPath()%>/resources/_dj/img/main_ban/signature-02.jpg" alt="배너이미지2"></a>
                <span>LONELY LION</span>
        </li>
        <li class="scroll-fade motion2">
                <a href="/product/killer-cat-knight-gray/32/category/1/display/2/"><img src="<%=request.getContextPath()%>/resources/_dj/img/main_ban/signature-03.png" alt="배너이미지3"></a>
                <span>KILLER CAT</span>
        </li>        
    </ul></div>
</div>

<div class="on" id="section_on_off">
    <!--★ 배너 3개 2 ★-->
    <div id="main_section_banner2">
    <ul><li class="scroll-fade motion4">
            <!-------------------------------------------
            ※  <a href="링크주소">
            --------------------------------------------->
               
            <span style="padding-top:100px; font-size:40px;font-weight:600;">향기가 머무는 공간</span><p class="bar"></p>
<div style="line-height:12px;"><span>첫 번째 시그니처인 ‘SCENT MONSTER’는<br>
프리미엄 차량용 디퓨저 라인입니다.<br>
향기가 지속되도록 정기배송해드립니다.</span></div>

        </li>
        <li class="scroll-fade motion3">
            <a href="/shopinfo/subscription.html">
                <img src="<%=request.getContextPath()%>/resources/_dj/img/main_ban/coscent.png" alt="배너이미지2">
            &nbsp;</a>
        </li>
    </ul></div>
</div>

<div class="off" id="section_on_off">
    <!--★ 배너 포인트적립 ★-->
    <div id="main_section_banner3">
<ul></ul></div>
</div>


<div class="on" id="section_on_off">
    <!--★ P R O C U T ★-->
    <div id="main_section_2" class="xans-element- xans-product xans-product-listmain-1 xans-product-listmain xans-product-1 main_section"><div class="title scroll-fade motion1">
        <!--------------------------------------------------------------------------------------------------
            ※ 타이틀 수정 - 텍스트만 변경바랍니다.
        --------------------------------------------------------------------------------------------------->
        <h2>PRODUCT </h2>
<p class="bar"></p>
    </div>
<div class="dj-product dj-main-product">
    <!--

        $count = 20

        -------------------------------------------------------------------------------------------------------------------
            ※ 상품진열개수를 설정하는 변수입니다. 설정하지 않을 경우, 최대 200개의 상품이 진열 됩니다.
            ※ 진열된 상품이 많으면, 쇼핑몰에 부하가 발생할 수 있습니다.
        -------------------------------------------------------------------------------------------------------------------

        $basket_result = /product/add_basket.html
        $basket_option = /product/basket_option.html
    -->   
    <!----------------------------------------------------------------------------------

            ※ grid5 의 숫자를 원하는 가로 상품갯수로 변경하시면 자동적용됩니다.
            ※ grid5 = 한줄에 5개 / grid4 = 한줄에 4개 
            ※ 설정후 @import(/_dj/page/item_list.html) 갯수를 맞춰 주시면 됩니다.

    ----------------------------------------------------------------------------------->

				<ul class="prdList grid4">
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
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/killer-cat-black-diamond/30/category/1/display/2/"
										name="anchorBoxName_30"> <img
										src="//scentmonster.co.kr/web/product/medium/202009/77f3efe298f9c837b1335bfb929fd3f9.png"
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
										class=""><span style="font-size: 12px; color: #555555;">Killer
												Cat – Black Diamond</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">차량용방향제 센트몬스터</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">38,000원</span><span
												class="pri">38,000원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>


					<li id="anchorBoxId_32" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count40">
									<span class="dj-mov-fade-in-out2">31%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_32">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',32,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-132" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(32,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('32', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/killer-cat-knight-gray/32/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/killer-cat-knight-gray/32/category/1/display/2/"
										name="anchorBoxName_32"> <img
										src="//scentmonster.co.kr/web/product/medium/202009/f81f0d6ae2de09a327c729a4c72ebc5b.png"
										id="eListPrdImage32_2" class="thumb_Img"
										alt="Killer Cat – Knight Gray">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/killer-cat-knight-gray/32/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/killer-cat-knight-gray/32/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">Killer
												Cat – Knight Gray</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">차량용방향제 센트몬스터</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">38,000원</span><span
												class="pri">38,000원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>


					<li id="anchorBoxId_34" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count40">
									<span class="dj-mov-fade-in-out2">31%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_34">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',34,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-134" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(34,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('34', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/killer-cat-silver-lining/34/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/killer-cat-silver-lining/34/category/1/display/2/"
										name="anchorBoxName_34"> <img
										src="//scentmonster.co.kr/web/product/medium/202009/8a01beb13f67b1f58ef39a528ee0b01c.png"
										id="eListPrdImage34_2" class="thumb_Img"
										alt="Killer Cat – Silver Lining">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/killer-cat-silver-lining/34/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/killer-cat-silver-lining/34/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">Killer
												Cat – Silver Lining</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">차량용방향제 센트몬스터</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">38,000원</span><span
												class="pri">38,000원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li id="anchorBoxId_33" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count40">
									<span class="dj-mov-fade-in-out2">31%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_33">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',33,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-133" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(33,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('33', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/killer-cat-pure-gold/33/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/killer-cat-pure-gold/33/category/1/display/2/"
										name="anchorBoxName_33"> <img
										src="//scentmonster.co.kr/web/product/medium/202009/731e63b4c0bd78e1f37c55ffb86fac3d.png"
										id="eListPrdImage33_2" class="thumb_Img"
										alt="Killer Cat – Pure Gold">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/killer-cat-pure-gold/33/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/killer-cat-pure-gold/33/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">Killer
												Cat – Pure Gold</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">차량용방향제 센트몬스터</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">38,000원</span><span
												class="pri">38,000원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li id="anchorBoxId_35" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count40">
									<span class="dj-mov-fade-in-out2">31%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_35">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',35,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-135" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(35,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('35', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/killer-cat-rose-gold/35/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/killer-cat-rose-gold/35/category/1/display/2/"
										name="anchorBoxName_35"> <img
										src="//scentmonster.co.kr/web/product/medium/202009/2168f3c02620eddfb1e3b48b0e63bb15.png"
										id="eListPrdImage35_2" class="thumb_Img"
										alt="Killer Cat – Rose Gold">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/killer-cat-rose-gold/35/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/killer-cat-rose-gold/35/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">Killer
												Cat – Rose Gold</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">차량용방향제 센트몬스터</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">38,000원</span><span
												class="pri">38,000원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li id="anchorBoxId_26" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count20">
									<span class="dj-mov-fade-in-out2">18%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_26">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',26,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-126" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(26,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('26', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/lonely-lion-black-diamond/26/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/lonely-lion-black-diamond/26/category/1/display/2/"
										name="anchorBoxName_26"> <img
										src="//scentmonster.co.kr/web/product/medium/202011/2b2d37f165a69a22edb01116adcd559e.jpg"
										id="eListPrdImage26_2" class="thumb_Img"
										alt="Lonely Lion – Black Diamond">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/lonely-lion-black-diamond/26/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/lonely-lion-black-diamond/26/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">Lonely
												Lion – Black Diamond</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">차량용방향제 센트몬스터</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">45,000원</span><span
												class="pri">45,000원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li id="anchorBoxId_25" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count20">
									<span class="dj-mov-fade-in-out2">18%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_25">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',25,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-125" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(25,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('25', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/lonely-lion-knight-gray/25/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/lonely-lion-knight-gray/25/category/1/display/2/"
										name="anchorBoxName_25"> <img
										src="//scentmonster.co.kr/web/product/medium/202011/d164abda3ac276b2959d30bb3077b71e.jpg"
										id="eListPrdImage25_2" class="thumb_Img"
										alt="Lonely Lion – Knight Gray">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/lonely-lion-knight-gray/25/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/lonely-lion-knight-gray/25/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">Lonely
												Lion – Knight Gray</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">차량용방향제 센트몬스터</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">45,000원</span><span
												class="pri">45,000원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li id="anchorBoxId_22" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count20">
									<span class="dj-mov-fade-in-out2">18%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_22">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',22,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-122" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(22,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('22', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/lonely-lion-silver-lining/22/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/lonely-lion-silver-lining/22/category/1/display/2/"
										name="anchorBoxName_22"> <img
										src="//scentmonster.co.kr/web/product/medium/202011/99d568b101724cc723c5d1a97cf011e6.jpg"
										id="eListPrdImage22_2" class="thumb_Img"
										alt="Lonely Lion – Silver Lining">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/lonely-lion-silver-lining/22/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/lonely-lion-silver-lining/22/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">Lonely
												Lion – Silver Lining</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">차량용방향제 센트몬스터</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">45,000원</span><span
												class="pri">45,000원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li id="anchorBoxId_23" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count20">
									<span class="dj-mov-fade-in-out2">18%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_23">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',23,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-123" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(23,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('23', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/lonely-lion-pure-gold/23/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/lonely-lion-pure-gold/23/category/1/display/2/"
										name="anchorBoxName_23"> <img
										src="//scentmonster.co.kr/web/product/medium/202011/a413ba2e01c6f8b15cb392d64b0b78ce.jpg"
										id="eListPrdImage23_2" class="thumb_Img"
										alt="Lonely Lion – Pure Gold">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/lonely-lion-pure-gold/23/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/lonely-lion-pure-gold/23/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">Lonely
												Lion – Pure Gold</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">차량용방향제 센트몬스터</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">45,000원</span><span
												class="pri">45,000원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li id="anchorBoxId_20" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count20">
									<span class="dj-mov-fade-in-out2">18%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_20">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',20,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-120" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(20,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('20', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/tired-skull-black-diamond/20/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a
										href="/product/tired-skull-black-diamond/20/category/1/display/2/"
										name="anchorBoxName_20"> <img
										src="//scentmonster.co.kr/web/product/medium/20200211/d9572b941d917c5fc5e3b18efe7ddb8f.jpg"
										id="eListPrdImage20_2" class="thumb_Img"
										alt="Tired Skull – Black Diamond">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/tired-skull-black-diamond/20/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/tired-skull-black-diamond/20/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">Tired
												Skull – Black Diamond</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">차량용방향제 센트몬스터</li>
										<li class="price_all"><span class="custom ">55,000원</span>
											<span class="price  displaynone"><span class="strike">45,000원</span><span
												class="pri">45,000원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li id="anchorBoxId_14" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro  dj_count0">
									<span class="dj-mov-fade-in-out2">0%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_14">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',14,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-114" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(14,  1, 'basket', '')"
												alt="장바구니 담기" class="ec-admin-icon cart"></a><span>장바구니</span>
										</li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('14', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/방향제-카트리지-단품구매-1ea/14/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a href="/product/방향제-카트리지-단품구매-1ea/14/category/1/display/2/"
										name="anchorBoxName_14"> <img
										src="//scentmonster.co.kr/web/product/medium/20200211/56e3c4b01a28caf3d3ad3db6d44aa5fe.jpg"
										id="eListPrdImage14_2" class="thumb_Img"
										alt="방향제 카트리지 (단품구매) 1EA">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/방향제-카트리지-단품구매-1ea/14/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/방향제-카트리지-단품구매-1ea/14/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">방향제
												카트리지 (단품구매) 1EA</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">센트몬스터</li>
										<li class="price_all"><span class="custom ">5,500원</span>
											<span class="price  displaynone"><span class="strike">5,500원</span><span
												class="pri">5,500원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li id="anchorBoxId_13" class="item_list xans-record-">
						<div class="item_list_box">
							<div class="thumbnail">
								<div class="custom_pro displaynone dj_count0">
									<span class="dj-mov-fade-in-out2">0%</span>
								</div>
								<div class="button">
									<ul>
										<li class="likeButton displaynone"><button type="button">
												LIKE<strong><span
													class="likePrdCount likePrdCount_13">0</span></strong>
											</button></li>
									</ul>
									<ul class="other">
										<li class="option"><a
											onclick="optionPreview(this,'listmain-1',13,'T')""=""><img
												src="//img.echosting.cafe24.com/design/skin/default/product/btn_option_view.gif"
												id="btn_preview_listmain-113" class="option_preview" alt=""></a><span>옵션보기</span>
										</li>
										<li class="cart"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
												onclick="check_action_nologin();" alt="장바구니 담기"
												class="ec-admin-icon cart"></a><span>장바구니</span></li>
										<li class="zoom"><a href="#none"><img
												src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
												onclick="zoom('13', '1', '2','', '');"
												style="cursor: pointer" alt="상품 큰 이미지 보기"></a><span>확대보기</span>
										</li>
										<li class="pop"><a
											href="/product/방향제-카트리지-정기구독-1ea/13/category/1/display/2/"
											target="blank"><img src="<%=request.getContextPath()%>/resources/_dj/img/button_other_04.png"></a><span>새창보기</span>
										</li>
									</ul>
								</div>
								<div class="prdImg  scroll-fade">
									<a href="/product/방향제-카트리지-정기구독-1ea/13/category/1/display/2/"
										name="anchorBoxName_13"> <img
										src="//scentmonster.co.kr/web/product/medium/20200211/d96f9533f9a48f90b0698967682945e1.jpg"
										id="eListPrdImage13_2" class="thumb_Img"
										alt="방향제 카트리지 (정기구독) 1EA">
									</a>
								</div>
							</div>
							<div class="description"
								onclick="window.location.href='/product/방향제-카트리지-정기구독-1ea/13/category/1/display/2/';">
								<div class="inner">
									<div class="displaynone"></div>
									<div class="brand displaynone"></div>
									<strong class="name"><a
										href="/product/방향제-카트리지-정기구독-1ea/13/category/1/display/2/"
										class=""><span style="font-size: 12px; color: #555555;">방향제
												카트리지 (정기구독) 1EA</span></a></strong>
									<ul class="spec">
										<li class="summary_line "></li>
										<li class="summary ">₩5,500 / 1개월</li>
										<li class="price_all"><span class="custom displaynone">0원</span>
											<span class="price  displaynone"><span class="strike">5,500원</span><span
												class="pri">5,500원</span></span> <span class="sale displaynone"></span>
										</li>
									</ul>
									<div class="icon">
										<div class="promotion"></div>
									</div>
								</div>
							</div>
						</div>
					</li>

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