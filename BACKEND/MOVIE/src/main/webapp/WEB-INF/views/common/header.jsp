<!-- header -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!-- 최신화 종료 건들일없음 -->

<header>
    <section>
        <div class="logo-section">
            <div>
                <a href="${contextPath}"><img src="" alt="암거나박아요"></a>
            </div>
            <span>KHTHEATER</span>
        </div>

        <div class="memberInfo_wrap">

            <%-- 로그인이 되어있지 않은 경우 --%>
            <c:if test="${empty loginUser.userNo}">
                <ul>
                    <div>
                        <img src="" alt="">
                    </div>
                    <li><a href="#" id="loginButton"> <span><img
                                src="${contextPath}/resources/images/headerPng/test.png" alt=""></span>
                            <span>로그인</span>
                    </a></li>
                    <li><a href="${contextPath}/signUp/signUp_sns"> <span><img
                                src="${contextPath}/resources/images/headerPng/test2.png" alt=""></span>
                            <span>회원가입</span>
                    </a></li>
                    <li><a href="${contextPath}/myPage/myPgMain"> <span><img
                                src="${contextPath}/resources/images/headerPng/test3.png" alt=""></span>
                            <span>MY KGV</span>
                    </a></li>
                    
                    <li><a href="${contextPath}/helpDesk/helpDesk_home"> <span><img
                                src="${contextPath}/resources/images/headerPng/test5.png" alt=""></span>
                            <span>고객센터</span>
                    </a></li>
                    
                </ul>
            </c:if>

            <%-- 로그인이 되어있는 경우 --%>
            <c:if test="${not empty loginUser.userNo}">
                <ul>
                    <div>
                        <img src="" alt="">
                    </div>
                    <li style="visibility: hidden"><a
                        href="${contextPath}/user/login"> <span><img
                                src="${contextPath}/resources/images/headerPng/test.png" alt=""></span>
                            <span>로그인</span>
                    </a></li>
                    <li><a href="${contextPath}/user/logout"> <span><img
                                src="${contextPath}/resources/images/headerPng/logout1.png"
                                alt=""></span> <span>로그아웃</span>
                    </a></li>
                    <li><a href="${contextPath}/myPage/info"> <span><img
                                src="${contextPath}/resources/images/headerPng/test3.png" alt=""></span>
                            <span>MY KGV</span>
                    </a></li>
                    <li><a href="${contextPath}/helpDesk/helpDesk_home"> <span><img
                                src="${contextPath}/resources/images/headerPng/test5.png" alt=""></span>
                            <span>고객센터</span>
                    </a></li>
                    <c:choose>
                        <c:when test="${loginUser.userManagerSt eq 'Y'}">
                            <li><a href="${contextPath}/manager/main"> <span><i
                                        class="fa-sharp fa-solid fa-gear"></i></span> <span>판리자페이지</span>
                            </a></li>
                        </c:when>
                        <c:otherwise>
                            <li style="display: none"><a
                                href="${contextPath}/manager/main"> <span><i
                                        class="fa-sharp fa-solid fa-gear"></i></span> <span>판리자페이지</span>
                            </a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </c:if>
        </div>
    </section>

    <!-- nav bar-->
    <nav>
        <div>
            <ul>
                <li class="navBar"><a href="#">영화</a>
                    <ul class="menuBar" style="display: none">
                        <li><a href="${contextPath}/movieList/movieList">무비 차트</a></li>
                    </ul></li>
                <li class="navBar"><a href="#">상영관</a>
                    <ul class="menuBar" style="display: none">
                        <!-- 지역별로 이동 -->
                        <li><a href="${contextPath}/theater/normalTheater">지역별</a></li>
                        <li><a href="${contextPath}/theater/specialTheater">특별관</a></li>
                    </ul></li>
                <li class="navBar"><a href="#">예매</a>
                    <ul class="menuBar" style="display: none">
                        <li><a href="${contextPath}/reserve/choicePlay">빠른 예매</a></li>
                    </ul></li>

                <li class="navBar"><a href="#">이벤트</a>
                    <ul class="menuBar" style="display: none">
                        <li><a href="">진행중 이벤트</a></li>
                        <li><a href="">지난 이벤트</a></li>
                        <li><a href="">당첨자 발표</a></li>
                    </ul></li>
                <li class="navBar"><a href="${contextPath}/store/storeMain">스토어</a></li>
                <li class="navBar"><a href="#">혜택</a>
                    <ul class="menuBar" style="display: none">
                        <li><a href="">멤버쉽</a></li>
                        <li><a href="">제휴/할인</a></li>
                    </ul></li>
            </ul>
            <div class="dummy" style="display: none"></div>
            <div>
                <form action="">
                    <input type="text" placeholder="아 영화 재밌는거 없나">
                    <button>
                        <img src="${contextPath}/resources/images/headerPng/test6.png"
                            alt="">
                    </button>
                </form>
            </div>
        </div>
    </nav>
    
    <!-- 모달 창 -->
    <div id="myModal" class="modal" style="display: none;">
        <div class="modal-content">
            <div class="close-button">&times;</div>
            <iframe src="${contextPath}/user/login1" frameborder="0" width="500px" height="500px"></iframe>
        </div>
    </div>
    
    <%-- request에 message 속성이 존재하는 경우 alert창으로 해당 내용을 출력 --%>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>

    <script src="${contextPath}/resources/js/main/header.js"></script>
    <script>
        const test = "${loginUser}";
        console.log(test + "+++++++++++++++++++++++++++++++++++++++++++++++++++++");
    </script>
    <script>
		$(document).ready(function () {
  			// 로그인 버튼 클릭 시 모달 창 보이기
  			$("a#loginButton").click(function (e) {
    			e.preventDefault(); // 기본 링크 동작 취소
    			$("#myModal").css("display", "block"); // 모달 창 보이기
	  		});

  			// 모달 닫기 버튼 클릭 시 모달 창 닫기
  			$(".close-button").click(function () {
    			$("#myModal").css("display", "none"); // 모달 창 숨기기
  			});
		});
	</script>
    
</header>
