// 더보기 js
$(document).ready(function() {
  console.log("review 영역으로 들어옴");
  var cardsPerLoad = 5; // 한 번에 보여줄 카드의 개수
  var currentPage = 1; // 처음 짜를 5개 페이징
  var cards = $('.myreview'); // 카드 요소들을 선택합니다.
  var itemsToShow = 5;
  console.log("5개 보여주기");
  // ajax 후 처음에는 5개의 카드만 보이도록 설정
  function showNewCards() {
    console.log("slide실행");
    console.log("itemsToShow::::::::::::  " + itemsToShow);
    var startIndex = itemsToShow - cardsPerLoad;
    var endIndex = itemsToShow;
    $('.myreview').slice(startIndex, endIndex).slideDown(3000);
  }
  function loadReviewCards() {
    var startRow = (currentPage - 1) * cardsPerLoad + 1;
    var endRow = currentPage * cardsPerLoad;
    console.log("ajax실행됨?");
    // 서버에 요청을 보내어 추가 데이터를 받아옵니다.
    $.ajax({
      url: 'loadReviewCards', // 서버 엔드포인트 주소
      method: 'POST',
      data: { startRow: startRow
            , endRow: endRow
            }, // 로드된 카드의 개수와 한 번에 로드할 카드의 개수를 전달
      success: function(response) {
        // 서버로부터 받은 데이터(response)를 처리하여 화면에 추가합니다.
        console.log(response);
        console.log(response[1]);
        console.log(response[2]);
        if (response.length > 0) {
          response.forEach(function(review) {
            var cardData = review;
           
            // var contextPath = "${contextPath}";
            console.log("${cardData.movie.movieNo}::::" + cardData.movie.movieNo);
            console.log("${cardData.review.totalRow}::::앞:::" + cardData.review.totalRow);
            // 카드를 생성하고 데이터를 채워서 화면에 추가하는 코드 작성
            var cardHTML = `
              <li class="myreview">
                <div>
                  <div>
                    <a href="/movie/movieList/detail_List/introduce/${cardData.movie.movieNo}">
                      <img src="${cardData.movie.movieImg1}" alt="영화 포스터 w=186px,h=208px">
                    </a>
                  </div>
                  <div>
                    <div>
                      <div>${cardData.movie.movieTitle}</div>
                      <a class="delete-review-btn" data-revno="${cardData.review.revNo}">
                        <i class="fa-regular fa-circle-xmark"></i>
                      </a>
                    </div>
                    <div>
                      <ul>
                        <li>작성 날짜 :</li>
                        <li>작성 시간 :</li>
                      </ul>
                      <ul>
                        <li>${cardData.review.revDate}</li>
                        <li>${cardData.review.revTime}</li>
                      </ul>
                    </div>
                    <div>
                      <textarea>${cardData.review.revContent}</textarea>
                    </div>
                    <div>
                      <button id="updatereview-btn">내 리뷰 수정</button>
                    </div>
                  </div>
                </div>
              </li>
            `;
            $('.more-load').append(cardHTML); // 생성한 카드를 추가
            
            console.log("cards.length::::::slideDown:::::" + cards.length);

            console.log("response.review.totalRow:::뒤:::" + cardData.review.totalRow);
            console.log("response.length:::" + response.length);
          
            var resulttotalRow = cardData.review.totalRow;
            console.log("resulttotalRow::::::" + resulttotalRow);
            // 5보다 작은 값을 불러올 경우 더보기 숨김
            if (response.length < cardsPerLoad) {
              $('#list-more-btn').hide();
            // 전체 쿼리 수가 5의 배수라면 더보기 숨김
            } else if (response.length ===  resulttotalRow){
              $('#list-more-btn').hide();
            // 넘어오는 카드가 0 ~ 5일 경우에는 다숨기고 나머지 경우는 더보기 보임
            } else {
              $('#list-more-btn').show();
            }
          });
          cards = $('.myreview');
          console.log("$cards.length:::" + cards.length);
          showNewCards();
          // $('.myreview').slice(0, cards.length).slideDown("slow");
          // cards.slideDown(1000);
          // cards.slideDown('slow');
        } else {
          $('#list-more-btn').hide();
        }
      },
      error: function() {
        console.log('데이터를 불러오는데 실패했습니다.');
      }
    });
  }
  
  loadReviewCards();
  
  // 더보기 버튼 구현
  $('#list-more-btn').on('click', function() {
    console.log("더보기 버튼 누름");
    // 다음으로 보일 카드 개수만큼 선택하여 보이도록 설정
    itemsToShow += 5;
    currentPage++;
    loadReviewCards();
  });
  // 삭제 버튼 구현
  $('.more-load').on('click', '.delete-review-btn', function() {
  	window.console.log("삭제 버튼 누름");
    let revNo = $(this).data('revno');
    let url = `/movie/myPage/deleteReview/${revNo}`;
	  window.console.log("revNo:::" + revNo);
    if (confirm("정말로 삭제 하시겠습니까?")) {
      window.location.href = url; // get방식으로 url에 요청
    }
    
  });
});

    
     