<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    
    <link rel="stylesheet" href="${contextPath}/resources/css/login/login.css">
    <script src="https://kit.fontawesome.com/dc6e43e0ad.js" crossorigin="anonymous"></script>
	
	
</head>

<body>
    <div id="wrap">
    
        <!-- header -->
        <jsp:include page="/WEB-INF/views/common/header.jsp" />

        <main>
            <!-- 여기서 부터 작업하세요. -->
            <div>
                <div>
                    <!-- 프레임 -->
                    <div> 

                        <!-- 로고 영역 -->
                        <div>
                        <p>Login</p>
                        </div>

                        <!-- 로그인 영역 -->
                        <div> 
                            <form action="member/login" method="POST" onsubmit="return loginValidate()">
                                <div>
                                    <div>

                                        <div>
                                            <input type="text" placeholder="아이디" name="inputEmail" maxlength="41">
                                            <input type="password" placeholder="비밀번호" name="inputPw" maxlength="41">
                                            <label for="saveId">
                                                <input type="checkbox" id="saveId">
                                                <i class="circle" style="background-image: url(${contextPath}/resources/images/login_images/check_gray.png);"></i>
                                                <span class="text">아이디 저장하기</span>
                                            </label>        
                                        </div>
                                    </div>

                                    <div>
                                        <button>로그인</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <!-- SNS 로그인 -->
                        <ul>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/login_images/KakaoTalk_btn_icon_square.png" alt="카카오톡"></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/login_images/naver_btn_icon_square.png" alt="네이버"></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/login_images/google_btn_icon_square.png" alt="구글"></a></li>
                        </ul>

                    </div>

                     <!-- 하단 버튼 영역 -->
                    <ul>
                        <li><a href="findPw">비밀번호 찾기</a></li>
                        <span>|</span>
                        <li><a href="findEmail">아이디 찾기</a></li>
                        <span>|</span>
                        <li><a href="signUp">회원가입</a></li>
                    </ul>
                </div>
            </div>
            <!-- 여기까지 작업하세요. -->
        </main>

    </div>
    
    <!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    
    <!--
    <%-- session에 message 속성이 존재하는 경우 alert창으로 해당 내용을 출력 --%>
			<c:if test="${ !empty sessionScope.message }">
				<script>
					alert("${message}");
					// EL 작성 시 scope를 지정하지 않으면
					// page -> request -> session -> application 순서로 검색하여
					// 일치하는 속성이 있으면 출력
				</script>

				<%-- message 1회 출력 후 session에서 제거 --%>
				<c:remove var="message" scope="session" />
			</c:if>
            -->

    <script src="${contextPath}/resources/js/login/login.js"></script>
</body>

</html>