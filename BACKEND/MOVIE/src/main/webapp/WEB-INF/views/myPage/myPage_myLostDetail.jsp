<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>내 분실물 문의</title>

<script src="https://kit.fontawesome.com/dc6e43e0ad.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="https://kit.fontawesome.com/dc6e43e0ad.js"
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="${contextPath}/resources/css/common/outline.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/myPage/myPage_aSide.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/myPage/myPage_myLostDetail.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/myPage/myPage_randomEvent.css">

</head>

<body>
	<div id="wrap">

		<!-- header -->
		<jsp:include page="/WEB-INF/views/common/header.jsp" />

		<main>
			<section>
				<div class="asideAconatiner">

					<!-- aSide -->
					<jsp:include page="/WEB-INF/views/myPage/myPage_aSide.jsp" />

					<div class="container">
						<div class="content-wrap">

							<h2>내 분실물 문의</h2>

							<div class="notice-contents">
								<div>
									<span>${lostdetail.lostTitle}</span>
								</div>
								<div>
									<span><span>${lostdetail.lostWriter}</span> <span>|</span>
										<span>${lostdetail.lostDate} </span></span>
								</div>
								<div class="contentText-wrap">${lostdetail.lostContent}</div>
							</div>
						</div>
						<div class="imageArea">
							<img src="${lostdetail.lostFile}" onclick="showImage('${lostdetail.lostFile}')">
						</div>
						<c:if test="${lostdetail.lostRepSt == 'Y'}">

							<div class="reply">
								<div class="reply-info">
									<p>${lostdetail.lostWriter}님답변드립니다.</p>
									<span class="reply-writer-info"><span>${lostdetail.lostRepWriter}</span><span>|</span><span>${lostdetail.lostRepDate}</span></span>
								</div>
								<div>
									<div class="reply-content">${lostdetail.lostRepContent}</div>
								</div>
							</div>
							<c:if
								test="${loginUser.userNo != null && loginUser.userManagerSt == 'Y'}">
								<button class="reply_delete" data-lostno="${lostdetail.lostNo}"
									id="reply_deleteBtn">
									<a>답변 삭제하기</a>
								</button>
							</c:if>
						</c:if>

						<div class="btn_wraper">
							<c:if
								test="${not empty loginUser.userNo and loginUser.userManagerSt == 'Y' or loginUser.userNo == lostdetail.userNo}">
								<button id="deleteLost" data-lostno="${lostdetail.lostNo}">
									<input type="hidden" id="cp" value="${cp}"> <a>삭제</a>
								</button>
							</c:if>

							<button class="goback">
								<a href="${contextPath}/myPage/myLostList?cp=${param.cp}">목록으로</a>
							</button>

						</div>
					</div>
				</div>
			</section>
		</main>

	</div>

	<!-- footer -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<script src="${contextPath}/resources/js/common/header.js"></script>
	<script src="${contextPath}/resources/js/myPage/myPage_myLost.js"></script>
	<script src="${contextPath}/resources/js/myPage/myPage_randomEvent.js"></script>
	<script src="${contextPath}/resources/js/myPage/myPage_swiper.js"></script>
</body>

</html>