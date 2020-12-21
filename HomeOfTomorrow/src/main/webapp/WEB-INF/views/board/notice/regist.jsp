<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/plugins/bootstrap/plugins/fontawesome-free/css/all.min.css">
<style>
	.wrap{
		margin: 5% 15%;
	}
	.title, .content{
		display: flex;
		justify-content: center;
		align-items: center;
	}
	th, td{
		text-align: center;
	}
	.content{
		margin-top: 5%;
	}
	input[type=text]{
	    height: 28px;
	    width: 50%;
	    line-height: 24px;
	    padding: 2px 4px;
	    border: 1px solid #d5d5d5;
	    color: #111111;
	    font-size: 12px;
	    margin-bottom: 20px;
	}
	.title{
		font-size: 20px;
		float:left;
		margin-right: 10px;
	}
	.note-editable p{
		font-size: 18px;
	}

</style>
<div class="wrap">
	<div class="row">
        <button class="btn" style="color: white; font-size: 18px; float: right; background: #a5c1e6; margin-right: 1%;" onclick="list_go()">목록</button>
	</div>
	<hr>
	<form action="regist" role="noticeRegistForm" method="post">
		<input type="hidden" name="cg_code" value="${cg_code }">
		<input class="form-control" type="hidden" name="id" value="${loginUser.id }">
		<p class="title">제목 : </p> <input type="text" name="title" id="title">
		<textarea name="content" class="form-control" id="content"></textarea>
		<div class="row" style="margin-top: 5%;">
		</div>
	</form>
	<button type="button" class="btn" style="color: white; font-size: 18px; float: right; background: #a5c1e6; margin-right: 1%;" onclick="noticeSubmit_go()">등록</button>
	
</div>
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath() %>/resources/plugins/summernote/summernote-lite.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/plugins/summernote/lang/summernote-ko-KR.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/plugins/summernote/summernote-lite.min.css"/>

<%@ include file="/WEB-INF/views/common/common_js.jsp" %>
<%@ include file="/WEB-INF/views/common/summernote.jsp" %>
<script>
	function list_go(){
		history.go(-1);
	}
	function noticeSubmit_go(){
		var form = $('form[role="noticeRegistForm"]');
		
		if($('input[name ="title"]').val() == ""){
			 alert("제목은 필수 입니다.");
			 return;
		 }
		
		if($('#content').val() == ""){
			 alert("제목은 필수 입니다.");
			 return;
		 }
		
		form.submit();
	}
</script>