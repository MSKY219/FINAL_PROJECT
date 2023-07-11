## Project Channel_KGV


<p align="center"><img src="/img/kgv2.png" /></p>

## Team Channel KGV WEB
  KH정보교육원 자바개발 A10 3조 Team Channel_KGV<br>
  조장 - 김민수, 팀원 - 이도근, 김윤석, 권지훈, 최영탁, 정지민
  개발기간 : 2023.05.15 ~ 2023.07.10

## 배포주소
 [ kgv.co.kr / 웹 주소 ](https://kgv.co.kr)<br>
 [ gitHub / 깃허브 주소 ](https://github.com/MSKY219/FINAL_PROJECT)


## KGV소개

 국비지원 파이널 프로젝트로 영화관 예매 사이트를 제작하였습니다.<br>
 영화예매와, 영화리뷰, 마이페이지와<br> 고객센터를 통한 1:1 소통이 가능하도록 제작하였습니다.
 - HTML, CSS, JS와 Java, oracle 기반으로 제작하였으며 AWS EC2, RD5 를 적용하였습니다.
 - 보안을 위하여 xss, HTTPS를 적용하였으며 강제적 접근을 막기 위한 기능을 추가하였습니다.

## 사용기술 및개발환경 

 프론트엔드<br>
  <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">    <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">   <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">

 백앤드<br>
    <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">     

 프레임워크<br>
 <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white">  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">

 DB<br>
 <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">

 WAS<br>
 <img src="https://img.shields.io/badge/amazonaws-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white">  <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">

Collaboration<br>
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">

## 본인이 참여한 주요 기능
<h3>1. 전반적인 html작성과 css, 웹디자인</h3>

  - 헤더, 풋터, 메인, 영화 탭 전체
  - 상영관 탭 전체
  - 고객센터 홈/공지/1:1문의/자주 찾는 질문/분실물
  - 아이디 찾기, 비밀번호 찾기, 에러페이지 등 </h3>

<h3>2. 소셜 로그인 구현, 별점/리뷰 구현</h3>

 - 네이버, 카카오 로그인/가입(DB삽입) 구현
 - 영화상세페이지의 리뷰 JS구현, 삽입,삭제 구현
 - 리뷰 리스트 호출 시 ajax를 활용하여 5개씩 호출 + 무한스크롤기능 구현

<h4>3. Swiper.js를 통한 슬라이드 구현 </h4>

 - 메인페이지를 포함한 swiper.js가 필요한 모든 페이지를 구현

<h4>4. 검색기능 구현</h4>

 - 영화검색, 고객센터 전체 검색기능 구현게 박제되었다.
<p align="center"><img src="/img/babo.png" /></p>
XSS가 적용이 안되길래 엄청난 시간을 투자해서 코드를 추가하였지만 결국 .. escapeXml = "ture" 였던 것도 꽤..
인상적이였다...
```
<c:out value="${review.revContent}" escapeXml="ture" />
```


## 프로젝트 진행 후기

모두가 한마음 한뜻으로 뭉치기는 정말 어렵다는걸 다시한번 느꼈다.
밀어주고 끌어주고 격려하고 함께 으쌰으쌰 할 수 있도록 노력해야했었는데 그런 노력이 조금 부족했던 것 같다..
그래도 결과적으로는.. 무사히 종료되긴 하였지만.. 
