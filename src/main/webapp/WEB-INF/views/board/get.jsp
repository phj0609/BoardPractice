<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jspf" %>
<div class="container">
	${board}
	<form id="getForm">
		<input type="hidden" name="bno" value="${board.bno}">
		<input type="hidden" name="title" value="${board.title}">
		<input type="hidden" name="writer" value="${board.writer}">
		<input type="hidden" name="regDate" value="${board.regDate}">
		<input type="hidden" name="updateDate" value="${board.updateDate}">
		<div>
			<h3>${board.title}</h3>
			<p>작성자 : ${board.writer}</p>
			<p>
				등록일 : 
				<fmt:parseDate var="regDate" value="${board.regDate}" pattern="yyyy-MM-dd'T'HH:mm:ss"/>
				<fmt:formatDate value="${regDate}" pattern="yyyy년MM월dd일 HH시mm분ss초"/>
		 		수정일 :
		 		<fmt:parseDate var="updateDate" value="${board.updateDate}" pattern="yyyy-MM-dd'T'HH:mm:ss"/>
				<fmt:formatDate value="${updateDate}" pattern="yyyy년MM월dd일 HH시mm분ss초"/>
		 	</p>
			<p>${board.content}</p>
		</div>
		<button class="btn btn-warning">수정</button>
		<button class="btn btn-danger">삭제</button>
		<button class="btn btn-primary">목록</button>
	</form>
</div>
<%@ include file="../layout/footer.jspf" %>
