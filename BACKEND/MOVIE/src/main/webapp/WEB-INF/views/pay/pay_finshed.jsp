<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제완료 페이지</title>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        
    <link rel="stylesheet" href="${contextPath}/resources/css/common/outline.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/pay/pay.css">
    

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- jQuery 라이브러리 추가(CDN) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    

</head>

<body>
    <div id="wrap">
        
        <!-- header -->
		<jsp:include page="/WEB-INF/views/common/header.jsp" />


        <!-- 예매 페이지  -->

        <main>
            <section>
                <div>
                    <div>
                        <!-- 타이틀 영역-->
                        <div>
                            <span>결제</span>
                            <div>
                                <input type="hidden" id="userNo" value="${loginUser.userNo}">
                                <input type="hidden" id="bookNo" value="${Session.bookNo}">
                            </div>
                        </div>


                        <!-- 할인&혜택 영역 -->
                        <div class="discount_step">
                            <span>${finalMap.payOrder}</span>
                        </div>

                        <!-- 결제 api 전 단계 영역-->
                        <div class="pay_step">
                            
                        </div>

                        <!-- 결제하기 영역 -->
                        <div>
                            <div>
                                <button class="goMain">메인으로 가기</button>
                            </div>
                        </div>



                    </div>
                </div>


            </section>

            

        </main>

    </div>
    
    <!-- footer -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <script src="${contextPath}/resources/js/pay/pay_finshed.js"></script>

</body>

</html>