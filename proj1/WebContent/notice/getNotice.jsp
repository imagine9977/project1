<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path0" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp"%>
<style>
.container {
	width: 1400px;
}

.page {
	clear: both;
	height: 100vh;
}

#page1 {
	background-color: #ececec;
}

#page2 {
	background-color: #42bcf5;
}

.page_title {
	font-size: 36px;
	padding-top: 2em;
	text-align: center;
}

th.item1 {
	width: 8%;
}

th.item2 {
	width: 60%;
}

th.item3 {
	width: 20%;
}
</style>
</head>
<body>
	<div id="header">
		<%@ include file="/header.jsp"%>
	</div>
	<div id="contents">
		<section class="page" id="page1">
			<div style="width: 1400px; margin: 0 auto;">
				<h3 class="page_title">공지사항 상세보기</h3>
				<div>
					<table class="table">
					<tbody>
						<tr>
							<th>글 번호</th>
							<td>${noti.no }</td>
						</tr>
						<tr>
							<th>글 제목</th>
							<td>${noti.title }</td>
						</tr>
						<tr>
							<th>글 내용</th>
							<td>${noti.content }</td>
						</tr>
						<tr>
							<th>작성일시</th>		
							<td>${noti.resdate }</td>
						</tr>
						<tr>
							<th>조회수</th>
							<td>${noti.visited }</td>
						</tr>
					</tbody>
				</table>
					<hr>
					<div class="btn-group">
				  <a href="${path0 }/notice/noti_ins.jsp" class="btn btn-secondary">글 등록</a>
				  <a href="${path0 }/EditNotice.do?no=${noti.no }" class="btn btn-secondary">글 수정</a>
				  <button type="button" class="btn btn-danger" data-toggle="modal"
							data-target="#exampleModal">글 삭제</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">경고</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">해당 글을 삭제하시겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">취소</button>
										<a href="${path0 }/DelNotice.do?no=${noti.no }" class="btn btn-danger">네</a>
									</div>
								</div>
							</div>
						</div>
				  <!--<a href="${path0 }/DelNotice.do?no=${noti.no }" class="btn btn-secondary">글 삭제</a> -->
				  <a href="${path0 }/NotiList.do" class="btn btn-secondary">글 목록</a>
				</div>
				</div>
			</div>
		</section>
		<section class="page" id="page2">
			<div style="width: 1400px; margin: 0 auto;">
				<h3 class="page_title"></h3>

			</div>
		</section>
	</div>
	<div id="footer">
		<%@ include file="/footer.jsp"%>
	</div>
</body>
</html>