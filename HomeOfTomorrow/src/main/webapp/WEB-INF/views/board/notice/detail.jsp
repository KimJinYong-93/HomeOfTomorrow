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
		margin: 5%;
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
</style>
<div class="wrap">
	
	<div class="row">
	        <button class="btn" style="color: white; font-size: 18px; float: right; background: #a5c1e6; margin-right: 1%;" onclick="list_go()">목록</button>
        <c:if test="${loginUser.authority eq 'ROLE_ADMIN' }">
	        <button class="btn" style="color: white; font-size: 18px; float: right; background: #a5c1e6; margin-right: 1%;" onclick="modify_go()">수정</button>
	        <button class="btn" style="color: white; font-size: 18px; float: right; background: #a5c1e6; margin-right: 1%;" onclick="remove_go()">삭제</button>
        </c:if>
	</div>        
	<hr>
	<div class="title">
        <h1>${board.title }</h1>
    </div>
    <div class="title" style="margin-top: 1%;">
        <h3>By. ${board.id }</h3>
    </div>
    <div class="content">
    	${board.content }
    </div>
</div>
<script>
	function list_go(){
		history.go(-1);
	}
	
	function modify_go(){
		location.href="modifyForm?bno=${board.bno}&cg_code=${cg_code}";
	}
	
	function remove_go(){
		location.href="remove?bno=${board.bno}&cg_code=${cg_code}";
	}
</script>