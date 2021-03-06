<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" align="center">
		<h2 class="text-primary">게시글 목록</h2>
		<table class="table table-striped table-bordered">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
			<c:if test="${empty list }">
				<tr>
					<td colspan="5">데이터가 없습니다</td>
				</tr>
			</c:if>
			<c:if test="${not empty list }">
				<c:forEach var="board" items="${list}">
					<tr>
						<td>${board.num }</td>
						<c:if test="${board.del == 'y' }">
							<td colspan="4">삭제된 글 입니다</td>
						</c:if>
						<c:if test="${board.del != 'y' }">
							<td title="${board.content}">
								<c:if test="${board.readcount > 30 }">
									<img src="images/hot.gif" alt="" />
								</c:if>
								<a href="view.do?num=${board.num}" class="btn btn-sm btn-success"></a>
								${board.subject }</td>
							<td>${board.writer }</td>
							<td>${board.reg_date}</td>
							<td>${board.readcount }</td>
						</c:if>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<a href="insertForm.do" class="btn btn-info">게시글 입력</a>
	</div>
</body>
</html>