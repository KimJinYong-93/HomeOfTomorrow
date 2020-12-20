<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title><decorator:title default="내일의 집" /></title>


<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/main.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<link href="https://static.ohou.se/assets/favicon-186ac0d991a44c522f984d86e6a50d24c65b7b3a02a004ba7e13f5722aabd952.png" rel="shortcut icon"/>


<decorator:head />
</head>



<div id="header-h">
	<div id="header" class="">
		<div class="inner first_in">

			<div class="top_menu">

				<div class="xans-layout-category right_cate">
					<div class="position">
						<ul>
							<li class="tel nor">ddit 403호 <span>042-1234-4567</span></li>
						</ul>
					</div>
				</div>

				<ul>
					<li class="xans-element- xans-layout xans-layout-statelogoff ">
						<form action="<%=request.getContextPath() %>/payment/kakaoPay" method="post" role="form">
							<button type="submit" onclick="payment()"><img src="<%=request.getContextPath() %>/resources/_dj/img/payment_icon_yellow_small.png" style="height: 20px;"></button>
						</form>
						<script>
							function payment(){
								$('form[role="form"]').submit();
							}
						</script>
					</li>
					<c:if test="${loginUser eq null }">
						<li class="xans-element- xans-layout xans-layout-statelogoff ">
							<a href="<%=request.getContextPath() %>/common/loginForm.do">LOGIN</a>
						</li>
						<li class="xans-element- xans-layout xans-layout-statelogoff ">
							<a href="<%=request.getContextPath() %>/common/joinForm.do">JOIN</a>
						</li>
					</c:if>
					<c:if test="${loginUser ne null }">
						<li class="xans-element- xans-layout xans-layout-statelogoff ">
							<a href="<%=request.getContextPath()%>/common/logout">LOGOUT</a>
						</li>
						<li class="cart">
							<a href="<%=request.getContextPath()%>/order/basket">CART 
								<!-- /////////////////////////////////장바구니 담긴 물품갯수 연결//////////////////////////////////// -->
								<!-- <span class="xans-element- xans-layout xans-layout-orderbasketcount cart_no ">0</span> -->
							</a>
						</li>
						<li><a href="<%=request.getContextPath() %>/member/myPage?id=${loginUserDetail.id}">MY PAGE</a></li>
					</c:if>
				</ul>
			</div>
		</div>

		<div class="header_inner">

<!------------------------------------------------------------------------------------------------------------------     

    ※ 로고 
 
------------------------------------------------------------------------------------------------------------------->

			<div class="logo">
				<a href="<%=request.getContextPath() %>/common/main"><img
					src="<%=request.getContextPath()%>/resources/_dj/img/logo1.png"
					style="width: 170px; height: auto; margin-top: -5%; margin-left: 5%;" alt="로고"></a>
			</div>
<!------------------------------------------------------------------------------------------------------------------     

    ※ 상단 카테고리 & 우측 아이콘 영역 / 카테고리별 이미지 설정 아래 참조
 
------------------------------------------------------------------------------------------------------------------->
			<div id="top_category">
				<div class="inner">
					<div class="xans-element- xans-layout xans-layout-category left_cate c_position">
						<ul class="category_img">
							<div class="position">
								<ul>
								<c:forEach items="${mainMenuList}" var="mainMenu">
									<c:if test="${mainMenu.mcode ne 'M000000' }">
										<c:if test="${mainMenu.mname eq 'QnA' }">
										<li class="list xans-record-"><a
											style="font-weight: 700 !important;"
											href="<%=request.getContextPath() %>${mainMenu.url}">Q&A</a></li>
										</c:if>
										<c:if test="${mainMenu.mname ne 'QnA' }">
											<li class="list xans-record-"><a
											style="font-weight: 700 !important;"
											href="<%=request.getContextPath() %>${mainMenu.url}">${mainMenu.mname }</a></li>
										</c:if>
									</c:if>
								</c:forEach>
								</ul>
							</div>
						</ul>
					</div>
				</div>
			</div>
			
			
			<div class="top_banner">
				<ul>
					<li>
						<a href="<%=request.getContextPath() %>/common/joinForm.do">회원가입 하고 포인트 적립받기
							<img src="<%=request.getContextPath()%>/resources/_dj/img/download_icon.png" alt="회원가입하고 포인트 적립받기">
					</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>