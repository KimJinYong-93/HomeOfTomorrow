<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%-- <%@ page import="java.util.List"%>
<%	List<String> categories = (List<String>)request.getAttribute("category"); %> --%>	

  <meta name="csrf-param" content="authenticity_token" />
  <!-- <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script> -->
  <script src="https://static.ohou.se/dist/js/vendor-9bc9135a2316948b78ce.js"></script>
  <script src="https://static.ohou.se/dist/js/10-b59309a75c6f37163459.chunk.js"></script>
  <script src="https://static.ohou.se/dist/js/utils-9c0aa47b7fb8865bdda8.js"></script>
  <link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/layout/application_simplified-292aaabc44d7729c34b0c1af5b3aa9b030c551b99804d8f9ee75b0a53eaf76a2.css" />
<!--   <script src="https://static.ohou.se/assets/v3/application_simplified-7c49b9558856963801e50da5cfe6272c49dbc59dd45eef774b17918cf85db7ef.js"></script> -->
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
				<h1 class="seller-layout__header__title">상품등록</h1>
<!-- 				<div class="row seller-layout__header__explain">
					<ul class="seller-layout__header__explain__list">
						<li>작성해주신 정보를 바탕으로 카테고리별 관리자가 상품을 검토하여 이메일을 드립니다.</li>
						<li>상품 등록 불가에 대한 통보는 불가 사유와 함께 이메일로 보내드립니다. 회신을 주셔도 답변이 불가한 점 양해
							부탁드립니다.</li>
					</ul>
				</div>
 -->			</div>
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
								<input type="text" id="cname" name="cname" class="form-control"
									placeholder="내일의집" value="${loginUserDetail.name }" />
							</div>
						</div>
					</div>
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__license1"
								class="form-label sales-form__form-label">기업아이디<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="cid" name="cid" class="form-control"
									 value="${loginUser.id }" />
									 <!-- <span class="sales-form__divider">-</span><input
									type="tel" id="sales_application__license2"
									name="sales_application[license2]" class="form-control"
									 value="" /><span class="sales-form__divider">-</span><input
									type="tel" id="sales_application__license3"
									name="sales_application[license3]" class="form-control"
									 value="" /> -->
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
								class="form-label sales-form__form-label">브랜드명<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="bname" name="bname" class="form-control"
									placeholder="미미컴퍼니 최고의 브랜드! 라꾸라꾸!" value="" />
							</div>
						</div>
					</div>
					
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__brand"
								class="form-label sales-form__form-label">상품명<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="gname" name="gname" class="form-control"
									placeholder="라꾸라꾸의 최고 침대!! 미미컴퍼니 미미베드" value="" />
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
							<div class="form__form-control-wrap" >
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
							<label for="sales_application__brand"
								class="form-label sales-form__form-label">옵션<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="op_name" name="op_name" class="form-control"
									placeholder="ex) 색상/사이즈" value="" style="width: 300px;"/><span class="">※ "/" 로 구분해서 작성해 주세요.</span>
							</div>
						</div>
					</div>
					
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__brand"
								class="form-label sales-form__form-label">옵션값<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="op_val" name="op_val" class="form-control"
									placeholder="ex) 블루,레드/M,L,XL" value="" style="width: 300px;"/><span class="">※ 위에서 작성한 옵션을 "," 로 구분해서 작성해 주세요.</span>
							</div>
						</div>
					</div>
					
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__about_product"
								class="form-label sales-form__form-label">상품 소개<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<textarea name="content" class="form-control" id="content"
								placeholder="판매하시는 상품에 대한 설명을 입력해주세요."></textarea>
						</div>
					</div>
					
					<div class="row sales-form__form-group">
						<div class="offset-1 col-2">
							<label for="sales_application__brand"
								class="form-label sales-form__form-label">가격<span
								class="sales-form__form-group__required">*</span></label>
						</div>
						<div class="col-8">
							<div class="sales-form__form-control-wrap">
								<input type="text" id="sales_application__brand"
									name="price" class="form-control" id="price"
									placeholder="20000" value="" />&nbsp;원
							</div>
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
								class="btn btn-sm btn-priority sales-form__file__btn" for="inputFile">파일
								업로드</label>&nbsp;&nbsp;
							<span id="inputFileName">선택된 파일이 없습니다.</span>
							<p class="sales-form__file__caption">
								※ 상품 대표 이미지를 10MB 용량 이하의 JPG,JEPG 파일 형태로 첨부해주세요.
							</p>
							<div id="pictureView" style="height: 200px; width: 140px; margin: 0 auto; float:left;"></div>
						</div>
						<br><br>
						<button type="button" onclick="upload_go()">업로드</button>
					</div>
				</div>
				<div class="row justify-center seller-layout__divider">
					<hr class="col-10 seller-layout__hr" />
				</div>
				<div class="sales-form__btn-apply">
					<button class="btn btn-lg btn-priority" type="button" onclick="goodsSubmit_go()">상품등록</button>
				</div>
				<input type="hidden" name="picture">
				<input type="hidden" name="id" value="${loginUser.id }">
			</form>
		</div>
	</div>

<script src="https://static.ohou.se/dist/js/4-17bf1875b96b532caa79.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/10-b59309a75c6f37163459.chunk.js"></script>
<script src="https://static.ohou.se/dist/js/SalesApplication-7bd86ec6ca41aa0a5f90.js"></script>
 

<!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
<%-- <link href="<%=request.getContextPath() %>/resources/plugins/summernote/summernote.css" rel="stylesheet" />
<script src="<%=request.getContextPath() %>/resources/plugins/summernote/summernote.js"></script> --%>


<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath() %>/resources/plugins/summernote/summernote-lite.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/plugins/summernote/lang/summernote-ko-KR.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/plugins/summernote/summernote-lite.min.css"/>

<%@ include file="/WEB-INF/views/common/common_js.jsp" %>
<%@ include file="picture_js.jsp" %>
<%@ include file="/WEB-INF/views/common/summernote.jsp" %>
<script>
	function goodsSubmit_go(){
		var form = $('form[role="goodsRegistForm"]');
		var uploadCheck = $('input[name="checkUpload"]').val();
		 if(!(uploadCheck > 0)){
			 alert("이미지 업로드는 필수입니다.")
			 //$('input[name="pictureFile"]').click();
			 return;
		 }
		
		if($('input[name ="cname"]').val() == ""){
			 alert("회사이름은 필수 입니다.");
			 return;
		 }
		 if($('input[name ="cid"]').val() != checkedID){ //중복확인하고 다른아이디를 다시적을 경우가 있어서.
			 alert("기업아이디는 필수입니다.");
			 return;
		 }
		 if($('input[name ="gname"]').val() == ""){
			 alert("상품명은 필수입니다.");
			 return;
		 }
		 if($('input[name ="price"]').val() == ""){
			 alert("가격은 필수입니다.");
			 return;
		 }
		
		form.submit();
	}
</script>
