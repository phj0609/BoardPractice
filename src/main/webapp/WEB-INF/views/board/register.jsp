<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jspf" %>
<div class="container">
<form action="register" method="post"> <br>
	제목 : <input type="text" name="title">
	작성자 : <input type="text" name="writer"> <br><br>
	내용 : 
	<textarea rows="20" cols="57" name="content"></textarea><br>
	<button class="btn btn-success">등록</button>
</form>
</div>
<%@ include file="../layout/footer.jspf" %>