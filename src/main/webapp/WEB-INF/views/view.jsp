<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file="header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	$(function(){
		$('#boardListDisp').load('list.do');
	})
</script>

</head>
<body>

<div class="container" align="center">
 	<h2 class="text-primary">게시글 상세 내역</h2>
 	<table class="table table-striped table-boardered">
 		<tr>
 			<td>제목</td>
 			<td>${board.subject }</td>
 		</tr>
 		<tr>
 			<td>작성자</td>
 			<td>${board.writer }</td>
 		</tr>
 		<tr>
 			<td>이메일</td>
 			<td>${board.email }</td>
 		</tr>
 		<tr>
 			<td>조회수</td>
 			<td>${board.readcount }</td>
 		</tr>
 		<tr>
 			<td>내용</td>
 			<td>${board.content }</td>
 		</tr>
 		<tr>
 			<td colspan="2"><a href="list.do" class="btn btn-info">게시글 목록</a>
 				<a href="updateForm.do?num=${board.num}" class="btn btn-warning">수정</a>				
 				<a href="deleteForm.do?num=${board.num}" class="btn btn-danger">삭제</a>
 				<a href="insertForm.do?nm=${board.num}" class="btn btn-success">성공</a></td>
 		</tr>
 	</table>
 	<div id="boardListDisp"></div>
 	
</div>

</body>
</html>