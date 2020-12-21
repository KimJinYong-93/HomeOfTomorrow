<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
 <script src="https://static.ohou.se/assets/v3/logging-69d1a145b1872071cd6479677379b6bbe429e845a932730a150eab3576275e7f.js" async="async"></script>
 <script src="https://static.ohou.se/assets/v3/amplitude_bridge-16d2ae2fff38dc913ff70e367d7c1906d2a29b9304bc08b92cf695e8ca5f13ec.js" async="async"></script>
 <script type="text/javascript" src="https://analysis.adinsight.co.kr/emnet/trs_esc.js" defer></script>
 <script src="https://cdn.ravenjs.com/3.26.4/raven.min.js" crossorigin="anonymous"></script>
  
 <link rel="alternate" href="android-app://net.bucketplace/http/ohou.se/deep"/>
 <link href="https://static.ohou.se/assets/favicon-186ac0d991a44c522f984d86e6a50d24c65b7b3a02a004ba7e13f5722aabd952.png" rel="shortcut icon"/>
 <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean" rel="stylesheet">
 <script src="https://static.ohou.se/assets/v3/layouts/navigation_stub-2afc6570f26c12358127eb3d1d8b54fc3aa1df1f1a041c239fcf21d9abcade4a.js"></script>
  
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/payResult.css">
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/_dj/js/payResult2.css">

<style>
	.container--my-page span{
		color:#518cd6;
	}

</style>

<div class="container--my-page">
	<div class="container--my-page__noti">
		<p style="font-size: 20px;">내일의<span style="color:#8aafde;">&nbsp;집</span>을 이용해주셔서 감사합니다!</p><br>
		<span style="font-size: 40px; color:#8aafde">결제완료</span><br>
	</div>
	<article id="customer-center" class="customer-center">
		<h1 class="customer-center__title"><span>${loginUser.id}</span>&nbsp;님,</h1>
		<div class="row">
			<section class="col-12 customer-center__contact">
				<address>
					<!-- //////////////주문번호 연결하기//////////////////  -->
					<p><span>132234245번</span> 주문이 완료되었습니다.</p><br>
					주문내역 조회는 <span>마이페이지</span>&nbsp;&nbsp;▶&nbsp;&nbsp; <span>주문내역</span>&nbsp;에서 확인하실 수 있습니다.<br>
					<br>고객센터 :&nbsp;<a href="tel:1670-0876" style="text-decoration: underline;">042-1234-4567</a>
				</address>
				<button class="btn btn-md btn-priority customer-center__contact__btn-inquiry"
					type="button" onclick="location.href='<%=request.getContextPath() %>/member/myPage?id=${loginUserDetail.id}'">바로가기</button>
			</section>
		</div>
	</article>
</div>



