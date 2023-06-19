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
    <title>내 분실물 문의 내역</title>

    <script src="https://kit.fontawesome.com/dc6e43e0ad.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/dc6e43e0ad.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


    <link rel="stylesheet" href="../../css/common/outline.css">
    <link rel="stylesheet" href="../../css/mypage/myPage_aSide.css">
    <link rel="stylesheet" href="../../css/mypage/myPage_myLostItemList.css">
    <link rel="stylesheet" href="../../css/mypage/myPage_randomMovie.css">

</head>

<body>
    <div id="wrap">
        <header>

            <section>
                <div class="logo-section">
                    <div>
                        <a href="../../html/common/main.html"><img src="" alt="암거나박아요"></a>
                    </div>
                    <span>KHTHEATER</span>
                </div>

                <div class="memberInfo_wrap">
                    <ul>

                        <div>
                            <img src="" alt="">
                        </div>

                        <li class="login-btn-area">
                            <a href="#" id="myBtn">
                                <span><img src="../../images/headerPng/test.png" alt=""></span>
                                <span>로그인</span>
                            </a>
                        </li>
                        <li>
                            <a href="../signup/signup.html">
                                <span><img src="../../images/headerPng/test2.png" alt=""></span>
                                <span>회원가입</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span><img src="../../images/headerPng/test3.png" alt=""></span>
                                <span>MY KGV</span>
                            </a>
                        </li>
                        <li>
                            <a href="../notice/notice_home.html">
                                <span><img src="../../images/headerPng/test5.png" alt=""></span>
                                <span>고객센터</span>
                            </a>
                        </li>

                    </ul>
                </div>
            </section>

            <!-- nav bar-->
            <nav>
                <div>
                    <ul>
                        <li class="navBar"><a href="#">영화</a>
                            <ul class="menuBar" style="display:none">
                                <li><a href="../../html/introduce/movieList.html">무비 차트</a></li>
                            </ul>
                        </li>
                        <li class="navBar"><a href="#">상영관</a>
                            <ul class="menuBar" style="display:none">
                                <li><a href="../../html/introduce/theater.html">지역별</a></li>
                                <li><a href="../../html/introduce/theaterSpacial.html">특별관</a></li>
                            </ul>
                        </li>
                        <li class="navBar"><a href="#">예매</a>
                            <ul class="menuBar" style="display:none">
                                <li><a href="">빠른 예매</a></li>
                            </ul>
                        </li>

                        <li class="navBar"><a href="#">이벤트</a>
                            <ul class="menuBar" style="display:none">
                                <li><a href="">진행중 이벤트</a></li>
                                <li><a href="">지난 이벤트</a></li>
                                <li><a href="">당첨자 발표</a></li>
                            </ul>
                        </li>
                        <li class="navBar"><a href="#">스토어</a></li>
                        <li class="navBar"><a href="#">혜택</a>
                            <ul class="menuBar" style="display:none">
                                <li><a href="">멤버쉽</a></li>
                                <li><a href="">제휴/할인</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="dummy" style="display:none"></div>
                    <div>
                        <form action="">

                            <input type="text" placeholder="아 영화 재밌는거 없나">
                            <button><img src="../../images/headerPng/test6.png" alt=""></button>
                        </form>
                    </div>

                </div>

            </nav>
        </header>

        <main>
            <section>
                <div class="asideAconatiner">
                    <aside>
                        <div class="aside-ul-wrap">
                            <ul class="aslide-list">
                                <li>
                                    <a href="notice_home.html">
                                        <h1>MY PAGE</h1>
                                    </a>
                                </li>
                                <li>
                                    <a href="notice.html">내가 쓴 리뷰</a>
                                </li>
                                <li>
                                    <a href="#">내가 본 영화</a>
                                </li>
                                <li>
                                    <a href="question_homel.html">내 문의 내역</a>
                                </li>
                                <li>
                                    <a href="find-my-item.html">내 분실물 내역</a>
                                </li>
                                <li>
                                    <a href="#">개인정보 수정</a>
                                </li>
                                <li>
                                    <a href="#">비밀번호 변경</a>
                                </li>

                            </ul>
                        </div>
                    </aside>

                    <div class="container">
                        <div>
                            <div class="notice-content-wrap">
                                <div class="notice-header">
                                    <h2>내 분실물 문의 내역</h2>
                                    <p>내가 한 분실물 문의의 답변 상황을 확인할 수 있습니다.</p>
                                </div>

                                <div class="search-area">
                                    <p>내 분실물 게시글 총<span style="color:red">1</span><span>/</span><span>3</span>건</p>
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
                                            <tr class="row">
                                                <td>1</td>
                                                <th><a href="">내용123</a><span>...[0]</span></th>
                                                <td>2023.01.01</td>
                                                <td>1</td>
                                            </tr>
                                            <tr class="row">
                                                <td>2</td>
                                                <th><a href="">내용123</a><span>...[1]</span></th>
                                                <td>2023.01.01</td>
                                                <td>23</td>
                                            </tr>
                                            <tr class="row">
                                                <td>3</td>
                                                <th><a href="">내용123</a><span>...[1]</span></th>
                                                <td>2023.01.01</td>
                                                <td>456</td>
                                            </tr>
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
                </div>
            </section>
        </main>

    </div>
    <!-- ----------------------------------------------------------------------------------------- -->
    <div class="event-wrap">
        <div>
            <div class="event-title">
                <a href="">오늘 이 영화를 추천드립니다!<br>(영화 랜덤 뿌리기 기능 찾아보기 9개정도)</a>
                <div><button>전체보기</button></div>
            </div>

            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/eventList/event001.jpg" alt="" onmouseenter="zoomIn(event)"
                                onmouseleave="zoomOut(event)">
                            <strong>이벤트1</strong>
                            <span>2023.01.01 ~ 2023.02.02</span>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/eventList/event002.jpg" alt="" onmouseenter="zoomIn(event)"
                                onmouseleave="zoomOut(event)">
                            <strong>이벤트1</strong>
                            <span>2023.01.01 ~ 2023.02.02</span>
                        </a>
                    </div>

                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/eventList/event003.jpg" alt="" onmouseenter="zoomIn(event)"
                                onmouseleave="zoomOut(event)">
                            <strong>이벤트1</strong>
                            <span>2023.01.01 ~ 2023.02.02</span>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/eventList/event002.jpg" alt="" onmouseenter="zoomIn(event)"
                                onmouseleave="zoomOut(event)">
                            <strong>이벤트1</strong>
                            <span>2023.01.01 ~ 2023.02.02</span>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/eventList/event001.jpg" alt="" onmouseenter="zoomIn(event)"
                                onmouseleave="zoomOut(event)">
                            <strong>이벤트1</strong>
                            <span>2023.01.01 ~ 2023.02.02</span>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/eventList/event002.jpg" alt="" onmouseenter="zoomIn(event)"
                                onmouseleave="zoomOut(event)">
                            <strong>이벤트1</strong>
                            <span>2023.01.01 ~ 2023.02.02</span>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/eventList/event003.jpg" alt="" onmouseenter="zoomIn(event)"
                                onmouseleave="zoomOut(event)">
                            <strong>이벤트1</strong>
                            <span>2023.01.01 ~ 2023.02.02</span>
                        </a>
                    </div>
                </div>
                <div class="swiper-button-next swipe-nbtn"></div>
                <div class="swiper-button-prev swipe-pbtn"></div>
            </div>
        </div>
    </div>
    <div id="myModal" class="modal">
        <div class="modal-content">
            <div class="close-button">&times;</div>
            <iframe src="../login/login.html" frameborder="0" width="500px" height="500px"></iframe>
        </div>
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
    <div id="myModal" class="modal">
        <div class="modal-content">
            <div class="close-button">&times;</div>
            <iframe src="../login/login.html" frameborder="0" width="500px" height="500px"></iframe>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="../../js/common/header.js"></script>
    <script src="../../js/myPage/myPage_myLostItem.js"></script>
    <script src="../../js/myPage/myPage_randomMovie.js"></script>
    <script src="../../js/myPage/myPage_swiper.js"></script>

</body>

</html>