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
</style>
</head>
<body>
	<div id="header">
		<%@ include file="/header.jsp"%>
	</div>
	<div id="contents">
		<section class="page" id="page1">
			<div style="width: 1400px; margin: 0 auto;">
				<h3 class="page_title">공지사항 글 등록</h3>
				<form action="${path0 }/NotiIns.do" method="post">
					<table class="table">
						<tbody>
							<tr>
								<th><label for="title">제목</label></th>
								<td><input type="text" name="title" id="title"
									class="form-control" maxlength="100" required></td>
							</tr>
							<tr>
								<th><label for="content">내용</label></th>
								<td><textarea name="content" id="content" rows="8"
										cols="80" class="form-control"></textarea></td>
							</tr>
						</tbody>
					</table>
					<hr>
					<div class="btn-group">
						<button type="submit" class="btn btn-primary">글 등록</button>
						<!--  <a href="${path0 }/NotiList.do" class="btn btn-danger">취소</a>-->
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-danger" data-toggle="modal"
							data-target="#exampleModal">취소</button>

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
									<div class="modal-body">글 작성을 그만 두시겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">글 계속 작성</button>
										<a href="${path0 }/NotiList.do" class="btn btn-danger">글 작성 취소</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
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