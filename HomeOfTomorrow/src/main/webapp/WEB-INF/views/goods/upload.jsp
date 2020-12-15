<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
	
  <meta name="csrf-param" content="authenticity_token" />
  <script src="https://static.ohou.se/dist/js/vendor-9bc9135a2316948b78ce.js"></script>
  <script src="https://static.ohou.se/dist/js/10-b59309a75c6f37163459.chunk.js"></script>
  <script src="https://static.ohou.se/dist/js/utils-9c0aa47b7fb8865bdda8.js"></script>
  <link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v3/bucket_ui/bucket_ui-cf437a161bdb44b28d08d72550bb85e52b07cf425b26f21c6c412cc524af5a4c.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/layout/application_simplified-292aaabc44d7729c34b0c1af5b3aa9b030c551b99804d8f9ee75b0a53eaf76a2.css" />
  <script src="https://static.ohou.se/assets/v3/application_simplified-7c49b9558856963801e50da5cfe6272c49dbc59dd45eef774b17918cf85db7ef.js"></script>
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/bucket_ui/components-e514064ef8cbfb4f627c4195455941a571fa4531e81bc40ff8fe62f4e2f13703.css" />
  <script src="https://static.ohou.se/assets/v3/components-8812e17a5506f01585b2ab780e7b6d07def9edb402adb359366a61807e15f164.js"></script>
  <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/upload.css" />



<div data-react-class="SalesApplication"
	data-react-props="{&quot;csrf&quot;:&quot;MmsuVeAekNbl7xd7j8Bjv+Y0b/FlzZPM/CxswIE7t4WBKCNcCFjlqCG54llzGARFJTF6jUmqjQsYye+Nq2ljKQ==&quot;,&quot;data&quot;:{&quot;id&quot;:null,&quot;license1&quot;:&quot;&quot;,&quot;license2&quot;:&quot;&quot;,&quot;license3&quot;:&quot;&quot;,&quot;company&quot;:&quot;&quot;,&quot;homepage&quot;:&quot;&quot;,&quot;sales&quot;:&quot;&quot;,&quot;sales_phone1&quot;:&quot;&quot;,&quot;sales_phone2&quot;:&quot;&quot;,&quot;sales_phone3&quot;:&quot;&quot;,&quot;sales_email&quot;:&quot;&quot;,&quot;brand&quot;:&quot;&quot;,&quot;product_categories&quot;:&quot;&quot;,&quot;about_product&quot;:null,&quot;other_market&quot;:&quot;&quot;,&quot;sale_file_url&quot;:null,&quot;status&quot;:0,&quot;created_at&quot;:null,&quot;updated_at&quot;:null,&quot;is_edit&quot;:false},&quot;categories&quot;:[{&quot;display_name&quot;:&quot;주방&quot;,&quot;code&quot;:&quot;주방&quot;},{&quot;display_name&quot;:&quot;생활용품&quot;,&quot;code&quot;:&quot;생활용품&quot;},{&quot;display_name&quot;:&quot;가구&quot;,&quot;code&quot;:&quot;가구&quot;},{&quot;display_name&quot;:&quot;홈데코/조명&quot;,&quot;code&quot;:&quot;홈데코/조명&quot;},{&quot;display_name&quot;:&quot;시공/서비스&quot;,&quot;code&quot;:&quot;시공/서비스&quot;},{&quot;display_name&quot;:&quot;반려동물&quot;,&quot;code&quot;:&quot;반려동물&quot;},{&quot;display_name&quot;:&quot;패브릭&quot;,&quot;code&quot;:&quot;패브릭&quot;},{&quot;display_name&quot;:&quot;수납/정리&quot;,&quot;code&quot;:&quot;수납/정리&quot;},{&quot;display_name&quot;:&quot;가전&quot;,&quot;code&quot;:&quot;가전&quot;},{&quot;display_name&quot;:&quot;DIY/공구&quot;,&quot;code&quot;:&quot;DIY/공구&quot;}]}"
	data-hydrate="t">
	<div id="seller-layout--APPLICATION"
		class="seller-layout seller-layout--APPLICATION">
		<div class="container">
			<div class="justify-center seller-layout__header">
				<h1 class="seller-layout__header__title">상품등록</h1>
				<div class="row seller-layout__header__explain">
					<ul class="seller-layout__header__explain__list">
						<li>작성해주신 정보를 바탕으로 카테고리별 담당 MD가 입점을 검토하여 이메일을 드립니다.</li>
						<li>입점 불가에 대한 통보는 불가 사유와 함께 이메일로 보내드립니다. 회신을 주셔도 답변이 불가한 점 양해
							부탁드립니다.</li>
						<li>사업자가 이미 등록되어 있어 입점 신청이 불가한 경우 sellers@bucketplace.net으로
							이메일을 보내주세요.</li>
						<li>입점 신청과 관련된 내용은 일반 고객센터 접수가 불가능합니다. 참고 바랍니다.</li>
					</ul>
				</div>
			</div>
			<div class="row justify-center seller-layout__divider">
				<hr class="col-10 seller-layout__hr" />
			</div>
		</div>
		<div class="container seller-layout__body">
			<form id="sales-form--application"
				class="sales-form sales-form--application"
				action="/partner/applications" method="post" accept-charset="UTF-8">
				<input type="hidden" name="authenticity_token"
					value="MmsuVeAekNbl7xd7j8Bjv+Y0b/FlzZPM/CxswIE7t4WBKCNcCFjlqCG54llzGARFJTF6jUmqjQsYye+Nq2ljKQ==" />
				<div class="sales-form__section">
					<div class="row">
						<div class="offset-1 col-10">
							<p class="sales-form__section__title">회사 정보</p>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__company"
								class="form-label sales-form__form-label">회사 이름<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="sales_application__company"
									name="sales_application[company]" class="form-control"
									placeholder="오늘의집" value="" />
							</div>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__license1"
								class="form-label sales-form__form-label">사업자 등록번호<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="tel" id="sales_application__license1"
									name="sales_application[license1]" class="form-control"
									placeholder="123" value="" /><span class="sales-form__divider">-</span><input
									type="tel" id="sales_application__license2"
									name="sales_application[license2]" class="form-control"
									placeholder="45" value="" /><span class="sales-form__divider">-</span><input
									type="tel" id="sales_application__license3"
									name="sales_application[license3]" class="form-control"
									placeholder="67890" value="" />
							</div>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__homepage"
								class="form-label sales-form__form-label">홈페이지</label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="sales_application__homepage"
									name="sales_application[homepage]" class="form-control"
									placeholder="www.ohou.se" value="" />
							</div>
						</div>
					</div>
				</div>
				<div class="row justify-center seller-layout__divider">
					<hr class="col-10 seller-layout__hr" />
				</div>
				<div class="sales-form__section">
					<div class="row">
						<div class="offset-1 col-10">
							<p class="sales-form__section__title">영업담당자 정보</p>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__sales"
								class="form-label sales-form__form-label">이름<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="sales_application__sales"
									name="sales_application[sales]" class="form-control"
									placeholder="집냥이" value="" />
							</div>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__sales_phone1"
								class="form-label sales-form__form-label">전화번호<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="tel" id="sales_application__sales_phone1"
									name="sales_application[sales_phone1]" class="form-control"
									placeholder="010" value="" /><span class="sales-form__divider">-</span><input
									type="tel" id="sales_application__sales_phone2"
									name="sales_application[sales_phone2]" class="form-control"
									placeholder="1234" value="" /><span class="sales-form__divider">-</span><input
									type="tel" id="sales_application__sales_phone3"
									name="sales_application[sales_phone3]" class="form-control"
									placeholder="5678" value="" />
							</div>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__email_username"
								class="form-label sales-form__form-label">이메일<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="sales_application__sales_email"
									name="sales_application[sales_email]" class="form-control"
									placeholder="zipnyang@ohou.se" value="" />
							</div>
						</div>
					</div>
				</div>
				<div class="row justify-center seller-layout__divider">
					<hr class="col-10 seller-layout__hr" />
				</div>
				<div class="sales-form__section">
					<div class="row">
						<div class="offset-1 col-10">
							<p class="sales-form__section__title">상품 정보</p>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__brand"
								class="form-label sales-form__form-label">대표브랜드 이름<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="sales_application__brand"
									name="sales_application[brand]" class="form-control"
									placeholder="오늘의집 가구" value="" />
							</div>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__product_categories"
								class="form-label sales-form__form-label">취급 카테고리<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<input type="hidden" id="sales_application__product_categories"
								name="sales_application[product_categories]" value="" />
							<div class="form-check sales-form__form-check">
								<label class="form-check-label"
									for="sales_application__category--주방"><input
									type="checkbox" id="sales_application__category--주방"
									name="sales_application[category--주방]"
									class="form-check category__checkbox" value="주방" /><span
									class="check-img"></span>주방</label>
							</div>
							<div class="form-check sales-form__form-check">
								<label class="form-check-label"
									for="sales_application__category--생활용품"><input
									type="checkbox" id="sales_application__category--생활용품"
									name="sales_application[category--생활용품]"
									class="form-check category__checkbox" value="생활용품" /><span
									class="check-img"></span>생활용품</label>
							</div>
							<div class="form-check sales-form__form-check">
								<label class="form-check-label"
									for="sales_application__category--가구"><input
									type="checkbox" id="sales_application__category--가구"
									name="sales_application[category--가구]"
									class="form-check category__checkbox" value="가구" /><span
									class="check-img"></span>가구</label>
							</div>
							<div class="form-check sales-form__form-check">
								<label class="form-check-label"
									for="sales_application__category--홈데코/조명"><input
									type="checkbox" id="sales_application__category--홈데코/조명"
									name="sales_application[category--홈데코/조명]"
									class="form-check category__checkbox" value="홈데코/조명" /><span
									class="check-img"></span>홈데코/조명</label>
							</div>
							<div class="form-check sales-form__form-check">
								<label class="form-check-label"
									for="sales_application__category--반려동물"><input
									type="checkbox" id="sales_application__category--반려동물"
									name="sales_application[category--반려동물]"
									class="form-check category__checkbox" value="반려동물" /><span
									class="check-img"></span>반려동물</label>
							</div>
							<div class="form-check sales-form__form-check">
								<label class="form-check-label"
									for="sales_application__category--패브릭"><input
									type="checkbox" id="sales_application__category--패브릭"
									name="sales_application[category--패브릭]"
									class="form-check category__checkbox" value="패브릭" /><span
									class="check-img"></span>패브릭</label>
							</div>
							<div class="form-check sales-form__form-check">
								<label class="form-check-label"
									for="sales_application__category--수납/정리"><input
									type="checkbox" id="sales_application__category--수납/정리"
									name="sales_application[category--수납/정리]"
									class="form-check category__checkbox" value="수납/정리" /><span
									class="check-img"></span>수납/정리</label>
							</div>
							<div class="form-check sales-form__form-check">
								<label class="form-check-label"
									for="sales_application__category--가전"><input
									type="checkbox" id="sales_application__category--가전"
									name="sales_application[category--가전]"
									class="form-check category__checkbox" value="가전" /><span
									class="check-img"></span>가전</label>
							</div>
							<div class="form-check sales-form__form-check">
								<label class="form-check-label"
									for="sales_application__category--DIY/공구"><input
									type="checkbox" id="sales_application__category--DIY/공구"
									name="sales_application[category--DIY/공구]"
									class="form-check category__checkbox" value="DIY/공구" /><span
									class="check-img"></span>DIY/공구</label>
							</div>
							<p class="sales-form__file__caption">
								※ ‘인테리어 시공, 건자재’ 관련 카테고리 입점문의 <a
									href="mailto:pro@bucketplace.net">pro@bucketplace.net</a>
							</p>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__about_product"
								class="form-label sales-form__form-label">상품 소개<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<textarea id="sales_application__about_product"
								name="sales_application[about_product]" class="form-control"
								placeholder="판매하시는 상품에 대한 설명을 입력해주세요."></textarea>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__other_market"
								class="form-label sales-form__form-label">타입점 쇼핑몰<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<input type="text" id="sales_application__other_market"
								name="sales_application[other_market]" class="form-control"
								placeholder="예시) 11번가, 쿠팡 등 현재 입점몰을 입력해주세요." value="" />
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__sale_file"
								class="form-label sales-form__form-label">판매 관련 파일 첨부</label>
						</div>
						<div class="col-8">
							<input type="hidden" id="sales_application__sale_file_url"
								name="sales_application[sale_file_url]" /><label
								class="btn btn-sm btn-priority sales-form__file__btn">파일
								업로드<input type="file" id="sales-form__file__uploader"
								class="sales-form__file--uploader" data-max-size="1048"
								accept=".png,.jpg,.jpeg,.pdf,.ppt" />
							</label>
							<p class="sales-form__file__name">선택된 파일이 없습니다.</p>
							<p class="sales-form__file__caption">
								※ 참고할 수 있는 파일을 10MB 용량 이하의 이미지, ZIP, PDF 등의 파일 형태로 첨부해주세요.<br />첨부파일
								관련 URL주소가 있다면 상품 소개 입력창에 남겨주세요.
							</p>
						</div>
					</div>
				</div>
				<div class="row justify-center seller-layout__divider">
					<hr class="col-10 seller-layout__hr" />
				</div>
				<div class="sales-form__section">
					<div class="row">
						<div class="offset-1 col-10">
							<p class="sales-form__section__title">개인정보 수집 및 이용 동의</p>
						</div>
					</div>
					<div class="row sales-form__private-policy">
						<div class="offset-1 col-10">
							<p class="sales-form__private-policy__caption">㈜버킷플레이스는
								개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련 법령상의 개인정보보호 규정을 준수하며,
								판매자님이 입점신청 시 필요한 최소한의 개인 정보를 수집합니다.</p>
							<table class="sales-form__private-policy__info">
								<thead>
									<tr>
										<td>목적</td>
										<td>항목</td>
										<td>보유기간</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>판매자 식별, 입점 검토, 공지사항의 전달</td>
										<td>영업담당자의 이름/전화번호/이메일</td>
										<td>입점 처리기간이 종료되는 시점</td>
									</tr>
								</tbody>
							</table>
							<div id="sales-form__private-policy__agree"
								class="form-check sales-form__private-policy__agree">
								<label class="form-check-label"
									for="sales-form__private-policy__agree__check"><input
									type="checkbox" id="sales-form__private-policy__agree__check"
									class="form-check" /><span class="check-img"></span>입점신청을 위한
									개인정보 수집 및 이용에 동의 <span
									class="sales-form__private-policy__agree__require">(필수)</span></label>
							</div>
						</div>
					</div>
				</div>
				<div class="sales-form__btn-apply">
					<button class="btn btn-lg btn-priority" type="submit">상품등록 완료</button>
				</div>
			</form>
		</div>
	</div>
</div>


<script src="https://static.ohou.se/dist/js/4-17bf1875b96b532caa79.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/10-b59309a75c6f37163459.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/SalesApplication-7bd86ec6ca41aa0a5f90.js"></script>
