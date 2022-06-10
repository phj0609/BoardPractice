 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jspf" %>
<div class="container">
	<div class="listData">
		<input type="hidden" name="bno" id="bno" value="">
		<input type="hidden" name="page" id="page" value="${pageMaker.criteria.page}">
		<input type="hidden" name="type" id="type" value="${pageMaker.criteria.type}">
		<input type="hidden" name="keyword" id="keyword" value="${pageMaker.criteria.keyword}">
	</div>
	<form action="${contextPath}/board/list" id="listForm">
		<select name="type">
			<option value="">====</option>
			<option value="T" ${pageMaker.criteria.type eq 'T' ? 'selected' : ''}>제목</option>
			<option value="C" ${pageMaker.criteria.type eq 'C' ? 'selected' : ''}>내용</option>
			<option value="W" ${pageMaker.criteria.type eq 'W' ? 'selected' : ''}>작성자</option>
		</select>
		<input type="text" name="keyword" value="${pageMaker.criteria.keyword}">
		<button class="btn btn-primary">검색</button>
	</form>
	<div class="jumbotron">
		<div class="container">
			<h2>자유게시판</h2>
		</div>
	</div>
	<a href="register" class="btn btn-primary">글쓰기</a>
	<table class="table">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>수정일</th>
		</tr>
		<c:forEach items="${list}" var="b">
		<tr>
			<td>${b.bno}</td>
			<td>
			<a href="${b.bno}" class="get">${b.title}</a>
			</td>
			<td>${b.writer}</td>
			<td>
				<fmt:parseDate var="regDate" value="${b.regDate}" pattern="yyyy-MM-dd'T'HH:mm:ss"/>
				<fmt:formatDate value="${regDate}" pattern="yyyy년MM월dd일 HH시mm분ss초"/>
			</td>
			<td>
				<fmt:parseDate var="updateDate" value="${b.updateDate}" pattern="yyyy-MM-dd'T'HH:mm:ss"/>
				<fmt:formatDate value="${updateDate}" pattern="yyyy년MM월dd일 HH시mm분ss초"/>
			</td>
		</tr>
		</c:forEach>
	</table>
	<div class="pagination justify-content-center">
		<c:if test="${pageMaker.prev}">
			<li class="page-item"><a class="page-link" href="${pageMaker.startPage - 1} ">이전페이지</a></li>
		</c:if>
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="pageNum">
			<li class="page-item ${pageMaker.criteria.page == pageNum ? 'on' : ''}"><a href="${pageNum}" class="page-link">${pageNum}</a>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<li class="page-item"><a class="page-link" href="${pageMaker.endPage + 1}">다음페이지</a></li>
		</c:if>
	</div>
</div>
<%@ include file="../layout/footer.jspf" %>

<script>
$(function() {
	let listForm = $('#listForm');
	$('.pagination a').on('click', function(e){
		e.preventDefault();
		$('.listData').find('#page').val($(this).attr('href'));
		
		if(listForm.find('input[name="keyword"]').val() == '') {
			listForm.find('input[name="keyword"]').remove();
			listForm.find('input[name="type"]').remove();
		}
		
		listForm.append($('#page')); // 태그 추가, 페이지 이동가능 
		listForm.submit();
	});
	
	$('.get').on('click',function(e){
		e.preventDefault();
		let bno = $(this).attr('href');
		$('#bno').val(bno);
		listForm.append($('#bno'));
		listForm.append($('#page'));
		listForm.attr("action","get");
		listForm.submit();
	})
	
})
</script>
<style>
.on {font-weight : 700; color : red; }
</style>