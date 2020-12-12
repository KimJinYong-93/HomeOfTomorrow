<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title><decorator:title default="sitemesh test"/></title>
  

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">


  <decorator:head />	
</head>

  
  
  <div id="header-h">
    <div id="header" class="">   
    <div class="inner first_in"> 
        
<!------------------------------------------------------------------------------------------------------------------     

    ※ 로고 좌측 로그인, 로그아웃 등 메뉴
 
------------------------------------------------------------------------------------------------------------------->

<div class="top_menu">
    

<div class="xans-layout-category right_cate">
        <div class="position">        
            <ul><!------------------------------------------------------------------------------------------------------------------     

                ※ 커뮤니티
 
                -------------------------------------------------------------------------------------------------------------------><li class="tel nor">ddit 403호 <span>042-1234-4567</span></li>
  
  

            </ul></div> 
     </div>




<!------------------------------------------------------------------------------------------------------------------     

    ※ 검색창 
 
------------------------------------------------------------------------------------------------------------------->
<div class="right_area">
    <div class="right_icon">       
        <li class="search all_list">               
            <div id="find_btn" class="find_btn">
                <a href="#none"><img src="<%=request.getContextPath()%>/resources/_dj/img/top_r_menu_icon_03_b.png" alt="검색버튼" class="btn_b"></a>
            </div>
            
            <div id="find_view">
                <form id="searchBarForm" name="" action="/product/search.html" method="get" target="_self" enctype="multipart/form-data">
<input id="banner_action" name="banner_action" value="" type="hidden"><div class="xans-element- xans-layout xans-layout-searchheader "><!--
                    $product_page=/product/detail.html
                    $category_page=/product/list.html
                    -->
<fieldset>
<span>검색</span> <input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" placeholder="" onmousedown="SEARCH_BANNER.clickSearchForm(this)" value="" type="text"><input type="image" src="<%=request.getContextPath()%>/resources/_dj/img/search_btn_img.png" alt="검색" onclick="SEARCH_BANNER.submitSearchBanner(this); return false;"> &nbsp;<div id="find_btn2" class="find_btn"><a href="#none">X</a></div>
</fieldset>
</div>
</form>                <div class="xans-element- xans-search xans-search-hotkeyword bestKeyword"><span>추천 검색어</span>
<span>
                        <a href="/product/search.html?keyword=" class="xans-record-"></a>
                                            </span>
</div>
 
            </div>
        </li>
    </div>
</div>

 
    <ul><li class="xans-element- xans-layout xans-layout-statelogoff "><a href="<%=request.getContextPath()%>/common/loginForm.do">LOGIN</a>
</li>
        <li class="xans-element- xans-layout xans-layout-statelogoff "><a href="<%=request.getContextPath()%>/common/joinForm.do">JOIN</a>
</li>
                        <li class="cart"><a href="/order/basket.html">CART<span class="xans-element- xans-layout xans-layout-orderbasketcount cart_no ">0</span>
</a></li>
        <li><a href="/myshop/index.html">MY PAGE</a></li>
    </ul></div>
    </div>  
        
    <div class="header_inner">     
        
<!------------------------------------------------------------------------------------------------------------------     

    ※ 로고 
 
------------------------------------------------------------------------------------------------------------------->

<div class="logo">
    <a href="/index.html"><img src="<%=request.getContextPath()%>/resources/_dj/img/logo.jpg" style="width: 200px;height: 40px" alt="로고"></a>
</div>
        <!------------------------------------------------------------------------------------------------------------------     

    ※ 상단 카테고리 & 우측 아이콘 영역 / 카테고리별 이미지 설정 아래 참조
 
------------------------------------------------------------------------------------------------------------------->
<div id="top_category">
    <div class="inner">
    <div class="xans-element- xans-layout xans-layout-category left_cate c_position"><ul class="category_img">
<div class="position">
             <ul>
<!--------------------------------------------------------------------- 

                ※ 상품관리 > 분류관리에서 설정한 카테고리 시작 (소스 수정 X)
                ※ 관련 매뉴얼 http://d-j.co.kr/_dj/sub/manual/manual_view.html?no=22347&board_no=3

                ----------------------------------------------------------------------><li class="list xans-record-"><a style="font-weight:700 !important;" href="/product/list.html?cate_no=43">STORY</a></li>
                <li class="list"><a style="font-weight:700 !important;" href="/board/gallery/list.html?board_no=8">GALLERY</a></li>
                <li class="list"><a style="font-weight:700 !important;" href="/shopinfo/location.html">LOCATION</a></li>
                <li class="list"><a style="font-weight:700 !important;" href="/board/p_review/list.html?board_no=4">REVIEW</a></li>
                <li class="list xans-record-"><a style="font-weight:700 !important;" href="/product/list.html?cate_no=23">SHOP</a></li>   
                                 
                <!--------------------------------------------------------------------- 

                ※ 일반 카테고리 리스트 

                ---------------------------------------------------------------------->
                 
              </ul>
</div>   
        </ul>
<!-----★ 카테고리 마우스 오버 시 이미지 출력 영역 ★-------------------------------------------------------------------------- 

        ※ <div id="sub_img" class="sub_카테고리번호"><a href="링크원하는주소"><img src="/이미지경로/이미지파일명"/></a></div>
        ※ 카테고리 번호 확인 : 상품관리 > 분류관리 > 카테고리 선택 후 우측 분류 URL 제일 끝 숫자를 적으시면 됩니다.
        ※ 관련 매뉴얼 http://d-j.co.kr/_dj/sub/manual/manual_view.html?no=30766&board_no=3

        ------------------------------------------------------------------------------------------------------------------------------><div id="sub_img" class="sub_24"><a href="/product/list.html?cate_no=24"><img src="<%=request.getContextPath()%>/resources/_dj/img/category_item_img_1.jpg"></a></div>
<div id="sub_img" class="sub_25"><a href="/product/list.html?cate_no=25">
	<img src="<%=request.getContextPath()%>/resources/_dj/img/category_item_img_2.jpg"></a></div>
</div>
        
        
    </div>
</div>  
        

<div class="top_banner">
    <ul><li>
           <!---------------------------------------------------------------------------------------------------------

              ※ 1. 프로모션 > 쿠폰관리 > 쿠폰 만들기 > 발급구분 "고객 다운로드 발급" 선택 후 원하는 조건으로 생성
              ※ 2. 프로모션 > 쿠폰관리 > 쿠폰 발급/조회 > 경로 "복사" 후 링크로 사용
           ----------------------------------------------------------------------------------------------------------->
           <a href="<%=request.getContextPath()%>/common/regist.do">회원가입 1,000원 적립금 <img src="<%=request.getContextPath()%>/resources/_dj/img/download_icon.png" alt="다운로드아이콘"></a>
        </li>
    </ul></div>  
    </div>
    </div>
</div>

  