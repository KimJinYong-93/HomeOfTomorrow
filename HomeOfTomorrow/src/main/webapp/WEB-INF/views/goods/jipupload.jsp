<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

  <script src="https://static.ohou.se/dist/js/vendor-9bc9135a2316948b78ce.js"></script>
  <script src="https://static.ohou.se/dist/js/10-b59309a75c6f37163459.chunk.js"></script>
  <script src="https://static.ohou.se/dist/js/utils-9c0aa47b7fb8865bdda8.js"></script>
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/layout/application_simplified-292aaabc44d7729c34b0c1af5b3aa9b030c551b99804d8f9ee75b0a53eaf76a2.css" />
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/bucket_ui/components-e514064ef8cbfb4f627c4195455941a571fa4531e81bc40ff8fe62f4e2f13703.css" />
  <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/upload.css" />
  <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/upload2.css" />

  <script src="https://unpkg.com/react@15/dist/react.min.js"></script> <!--react -->
  <script src="https://unpkg.com/react-dom@15/dist/react-dom.min.js"></script> <!-- react-dom -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.38/browser.min.js"></script> <!-- babel -->	


	<div id="seller-layout--APPLICATION"
		class="seller-layout seller-layout--APPLICATION">
		<div class="container">
			<div class="justify-center seller-layout__header">
				<h1 class="seller-layout__header__title">집들이</h1>
				<span style="font-size: 16px">나만의 개성있는 집을 다른 회원들에게 소개시켜주세요💖 </span>
	</div>
			<div class="row justify-center seller-layout__divider">
				<hr class="col-10 seller-layout__hr" />
			</div>
		</div>
		<div class="container seller-layout__body">
			<form id="sales-form--application"
				class="sales-form sales-form--application"
				action="regist" method="post" accept-charset="UTF-8" role="goodsRegistForm">
				<input type="hidden" name="authenticity_token"
					value="MmsuVeAekNbl7xd7j8Bjv+Y0b/FlzZPM/CxswIE7t4WBKCNcCFjlqCG54llzGARFJTF6jUmqjQsYye+Nq2ljKQ==" />
				<div class="sales-form__section">
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__brand"
								class="form-label sales-form__form-label">제목<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="bname" name="bname" class="form-control"
									placeholder="우리집이 최고야 늘 짜릿해..!" value="" />
							</div>
						</div>
					</div>
					
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__product_categories"
								class="form-label sales-form__form-label">카테고리<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="form__form-control-wrap"  style="width: 20%;">
								<select class="goodsform-control" name="cg_code" id="cg_code">
									<c:forEach items="${categoryList }" var="category">
										<option value="${category.cg_code }">${category.name }</option>
									</c:forEach>	
								</select>
							</div>
						</div>
					</div>
					
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__about_product"
								class="form-label sales-form__form-label">내용<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<textarea name="content" class="form-control" id="content"
								placeholder="판매하시는 상품에 대한 설명을 입력해주세요."></textarea>
						</div>
					</div>
					
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__sale_file"
								class="form-label sales-form__form-label">미리보기 이미지</label>
						</div>
						<div class="col-8">
							<input type="hidden" id="sales_application__sale_file_url" name="sales_application[sale_file_url]" />
								<label class="btn btn-sm btn-priority sales-form__file__btn" for="inputFile">파일
								업로드</label>&nbsp;&nbsp;
							<span id="inputFileName">선택된 파일이 없습니다.</span>
							<p class="sales-form__file__caption">
								※ 상품 대표 이미지를 10MB 용량 이하의 JPG,JEPG 파일 형태로 첨부해주세요.
							</p>
							<div id="pictureView" style="height: 200px; width: 140px; margin: 10px auto; float:left;"></div>
						</div>
						<div class="col-12">
							<button id="thumUpload" type="button" onclick="upload_go()">대표이미지 등록</button>
						</div>
					</div>
				</div>
				<div class="row justify-center seller-layout__divider">
					<hr class="col-10 seller-layout__hr" />
				</div>
				<div class="sales-form__btn-apply">
					<button class="btn btn-lg btn-priority" type="button" onclick="goodsSubmit_go()">등록</button>
				</div>
				<input type="hidden" name="picture">
				<input type="hidden" name="id" value="${loginUser.id }">
			</form>
		</div>
	</div>

<script src="https://static.ohou.se/dist/js/4-17bf1875b96b532caa79.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/10-b59309a75c6f37163459.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/SalesApplication-7bd86ec6ca41aa0a5f90.js"></script>

<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath() %>/resources/plugins/summernote/summernote-lite.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/plugins/summernote/lang/summernote-ko-KR.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/plugins/summernote/summernote-lite.min.css"/>

<%@ include file="/WEB-INF/views/common/common_js.jsp" %>
<%@ include file="picture_js.jsp" %>
<%@ include file="/WEB-INF/views/common/summernote.jsp" %>
