<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<style>
	.wrap{
		margin: 5%;
	}
	.title{
		display: flex;
		justify-content: center;
		align-items: center;
	}
	th, td{
		text-align: center;
	}
</style>
<c:set var="pageMaker" value="${dataMap.pageMaker }"/>
<c:set var="boardList" value="${dataMap.boardList }"/>
<c:set var="listSize" value="${dataMap.listSize }"/>
<div class="wrap">
	<div class="title">
        <h1><font color="#555555">NOTICE</font></h1>
    </div>
	
	<div class="row">
        <c:if test="${loginUser.authority eq 'ROLE_ADMIN' }">
	        <button class="btn" style="color: white; font-size: 18px; float: right; background: #a5c1e6; margin-right: 1%;">글등록</button>
        </c:if>
	</div>        

	<div class="ec-base-table typeList gBorder">
		<table border="1" summary="">
			<caption>게시판 목록</caption>
			<thead style="text-align: center;">
				<tr>
					<th style="width: 10%;">NO</th>
                    <th style="width: 40%;">TITLE</th>
                    <th style="width: 10%;">POSTED BY</th>
                    <th style="width: 20%;" class="">DATE</th>
                    <th style="width: 10%;" class="">VIEW</th>
                </tr>
            </thead>
			<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
				<c:set value="${listSize }" var="size"/>
				<c:forEach items="${boardList }" var="board" varStatus="status">
					<tr style="background-color:#FFFFFF; color:#555555;" class="xans-record-">
						<td>${size }</td>
	                    <td class="subject center txtBreak">
		                    <strong>
		                    	<a href="/article/notice/1/986/page/1/" style="color:#555555;">${board.title }</a> 
		                    	<span class="txtEm"></span>
		                    </strong>
	                    </td>
	                    <td>센트몬스터</td>
	                    <td class=""><span class="txtNum"><fmt:formatDate value="${board.reg_dt }" pattern="yyyy-MM-dd"/></span></td>
	                    <td class=""><span class="txtNum">${board.viewcnt }</span></td>
	                </tr>
	            <c:set value="${size - 1}" var="size"/>
				</c:forEach>	
			</tbody>
		</table><p class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 message  ">검색결과가 없습니다.</p>
		<div id="keyword" class="row" style="width:350px;">
			<div class="input-group">						
				<select class="form-control col-md-4" name="searchType" id="searchType">
					<option value="tcw"  ${pageMaker.cri.searchType eq 'tcw' ? 'selected':'' }>전 체</option>
					<option value="t" ${pageMaker.cri.searchType eq 't' ? 'selected':'' }>제 목</option>
					<option value="w" ${pageMaker.cri.searchType eq 'w' ? 'selected':'' }>작성자</option>
					<option value="c" ${pageMaker.cri.searchType eq 'c' ? 'selected':'' }>내 용</option>
					<option value="tc" ${pageMaker.cri.searchType eq 'tc' ? 'selected':'' }>제목+내용</option>
					<option value="cw" ${pageMaker.cri.searchType eq 'cw' ? 'selected':'' }>작성자+내용</option>							
				</select>					
				<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
				<span class="input-group-append">
					<button class="btn btn-primary" type="button" onclick="searchList_go(1);" 
					data-card-widget="search">
						<i class="fa fa-fw fa-search"></i>
					</button>
				</span>
			</div>
		</div>
		<div><%@ include file="/WEB-INF/views/common/pagination.jsp" %></div>
    </div>
</div>
