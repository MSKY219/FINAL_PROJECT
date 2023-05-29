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
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login/login.css">
    <script src="https://kit.fontawesome.com/dc6e43e0ad.js" crossorigin="anonymous"></script>

</head>

<body>
    <div id="wrap">
        <header>
            <!-- 헤더 윗쪽 섹션 -->
            <section>

                <div>
                    <div>
                        <!-- 
                            contextpath 지정 必
                            이미지 태그 속 로고위치 제대로 작성
                         -->
                        <!-- <a href="${contextPath}">
				<img src="${contextPath}/resources/images/logo.jpg" id="home-logo">
			</a> -->
                        <a href="#"><img src="/images/logo3.png" alt="로고 이미지 삽입 w160 h70 "></a>
                    </div>
                    <div>
                        <span>K H T H E A T E R</span>
                    </div>
                </div>

                <div>
                    <div> <a href="#"><img src="" alt="광고 width:200px height:100px"></a></div>

                    <ul>
                        <li>
                            <a href="#">
                                <span><i class="fa-solid fa-lock"></i></span>
                                <p>SIGN IN</p>
                            </a>
                        </li>

                        <li>


                            <a href="#">
                                <span><i class="fa-regular fa-user"></i></span>
                                <p>MY PAGE</p>
                            </a>


                        </li>

                        <li>
                            <a href="#">
                                <span><i class="fa-solid fa-headset"></i></span>
                                <p>HELP</p>
                            </a>
                        </li>

                    </ul>
                </div>

            </section>

            <!-- nav bar-->
            <nav>

                <div>
                    <ul>
                        <li><a href="#">영화</a></li>
                        <li><a href="#">극장</a></li>
                        <li><a href="#">예매</a></li>
                        <li><a href="#">스토어</a></li>
                        <li><a href="#">이벤트</a></li>
                        <li><a href="#">혜택</a></li>
                    </ul>

                    <div>
                        <form action="">

                            <input type="text" placeholder="오늘의 영화를 찾아보세용">
                            <button><i class="fa-solid fa-magnifying-glass"></i></button>
                        </form>
                    </div>

                </div>

            </nav>

        </header>

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
                                                <i class="circle"></i>
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
                        <li><a href="#">회원가입</a></li>
                    </ul>
                </div>
            </div>
            <!-- 여기까지 작업하세요. -->
        </main>

    </div>
    <footer>

        <section>

            <div>

                <ul>
                    <li><a href="#">회사소개</a></li><span>|</span>
                    <li><a href="#">조원소개</a></li><span>|</span>
                    <li><a href="#">이용약관</a></li><span>|</span>
                    <li><a href="#">개인정보처리방침</a></li><span>|</span>
                    <li><a href="#">편성기준</a></li>
                </ul>

            </div>

            <div>
                <span>Channel_KGV | 사업자등록번호: 110-372-404490(신한) </span>
                <span>조장 : 김민수 | 조원 : 권지훈 / 김윤석 / 이도근 / 정지민 / 최영탁</span>
                <span>강남상영관 : 서울특별시 강남구 테헤란로14길 6 남도빌딩 2F, D Class
                </span>
                <span>
                    Copyright © 2023-2023 Channel_KGV All Right Reserved
                </span>
            </div>

        </section>

    </footer>
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

    <script src="../../js/loginpage/loginpage.js"></script>
</body>

</html>