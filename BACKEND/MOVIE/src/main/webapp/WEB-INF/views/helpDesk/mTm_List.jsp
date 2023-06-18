<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 -->

<!-- 최신화 종료 건들일없음 -->


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>1:1문의</title>

<script src="https://kit.fontawesome.com/dc6e43e0ad.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="${contextPath}/resources/css/common/outline.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/helpDesk/mtm_List.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/common/notice_Aside.css">


</head>

<body>
	<div id="wrap">
		<jsp:include page="/WEB-INF/views/common/header.jsp" />

		<main>
			<section>

				<jsp:include page="/WEB-INF/views/common/noticeAside.jsp" />

				<div class="container">
					<div>
						<div class="notice-content-wrap">
							<div class="notice-header">
								<h2>1:1 문의</h2>
								<p>문의 사항이 있으실 경우 빠른 시일 내로 답변드리겠습니다.</p>
							</div>

							<div class="search-area">
								<p>
									1:1문의 게시글 총<span style="color: red">1</span><span>/</span><span>3</span>건
								</p>
							</div>

							<div class="table-wrap">
								<table>

									<thead>
										<th>번호</th>
										<th>내용</th>
										<th>등록일</th>
										<th>조회수</th>
									</thead>
									<tbody>

										<c:choose>
											<c:when test="${empty mtmList.mtmLists}">
												<tr>
													<th colspan="3">게시글이 존재하지 않습니다.</th>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach var="userMtmList" items="${mtmList.mtmLists}"
													varStatus="loop">
													<c:if test="${loop.index < 10}">
														<tr class="row">
															<td>${userMtmList.mtmNo}</td>
															<td><a href="${contextPath}/helpDesk/mtm_detail/${userMtmList.mtmNo}">${userMtmList.mtmTitle}</a></td>
															<td>${userMtmList.mtmRegdate}</td>
															<td>${userMtmList.mtmCount}</td>
														</tr>
													</c:if>
												</c:forEach>
											</c:otherwise>
										</c:choose>

									</tbody>

								</table>

								<div>
									<button>게시물 등록</button>
								</div>
								<!-- 10개씩 -->
								<ul class="pagination">
									<li><a href="#">&lt;&lt;</a></li>
									<li><a href="#">&lt;</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&gt;</a></li>
									<li><a href="#">&gt;&gt;</a></li>
								</ul>

							</div>
						</div>
					</div>
				</div>
			</section>
		</main>

	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script src="../../js/common/header.js"></script>


</body>

</html>