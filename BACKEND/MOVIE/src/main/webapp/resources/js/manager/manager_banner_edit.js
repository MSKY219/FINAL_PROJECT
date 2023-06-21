$(document).ready(function () {

    let movie_image1 = $('.movie_image1');

    movie_image1.on('change', function (e) {
        console.log(e.target.files); // 파일 목록 출력

        // 파일 업로드(다중업로드를 위해 반복문 사용)
        for (var i = 0; i < e.target.files.length; i++) {
            uploadImageFile1(e.target.files[i]); // 파일 전달
        }
    });

    let imageUrl1;

    function uploadImageFile1(file) {
        var data = new FormData();
        data.append("file", file);
        $.ajax({
            url: '/movie/manager/banner_list/edit/' + bannerNo.val() + '/uploadImageFile',
            type: "POST",
            data: data,
            cache: false,
            contentType: false,
            processData: false,
            success: function (data1) {
                console.log("성공 후 반환 메시지11", data1);
                let jsonArray = JSON.parse(data1); // JSON 문자열을 파싱하여 배열로 변환
                let imageObject = jsonArray[0]; // 배열의 첫 번째 요소 선택
                imageUrl1 = imageObject[""]; // 빈 키에 해당하는 이미지 URL 선택
                console.log("이미지 URL:", imageUrl1);
            },
            error: function (e) {
                console.log(e);
            }
        });
    }

    // ===============================================================================

    const submitBtn = $('.bottom_Submit');
    const eventTitle = $('.enter_Title > input');
    const enterUrl = $('.enter_url > input');
    const bannerNo = $('.bannerNo');
    const hiddenImg = $('.hiddenImg');

    submitBtn.on('click', (e) => {

        // 이미지 변경이 없을 경우
        if (movie_image1.val() == "") {

            console.log("이미지 변경 X 시 기존 값 : " + movie_image1.val());
            movie_image1 = hiddenImg.val();

            imageUrl1 = movie_image1

            console.log("이미지를 변경하지 않아 숨겨진 값을 추가함. : " + movie_image1);

        }
        // 이미지를 변경 할 경우
        // 기존 로직을 그대로 사용한다.
        // 이미지 삭제는 고려하지 않음. 반드시 이미지는 들어가야 함.





        e.preventDefault();
        console.log("제목 : " + eventTitle.val());
        console.log("URL : " + enterUrl.val());
        console.log("이미지 : " + imageUrl1);
        console.log("숨겨진 이미지 URL : " + hiddenImg.val());
        console.log("배너 번호 : " + bannerNo.val());

        if (!eventTitle.val()) {
            alert('제목이 입력되지 않았습니다.');
            eventTitle.focus();
            e.preventDefault();
            return false;
        };

        // if (!$('.movie_image1').val()) {
        //     alert('메인 이미지를 등록하지 않았습니다.');
        //     imageUrl1.focus();
        //     e.preventDefault();
        //     return false;
        // };

        // $.ajax({
        //     url: "/movie/manager/banner_list/edit/" + bannerNo.val() + "/edit",
        //     data: {
        //         "title": eventTitle.val()
        //         , "url": enterUrl.val()
        //         , "movieImg1": imageUrl1
        //     },
        //     type: "POST",
        //     success: function (result) {
        //         if (result > 0) {
        //             alert("이벤트 등록 성공");
        //             let url = "/movie/manager/banner_list";
        //             window.location.href = url;
        //         } else {
        //             alert("이벤트 등록 실패");
        //             window.location.reload();
        //         }
        //     },

        //     error: function () {
        //         console.log("에러 발생으로 인해 등록 실패");
        //     }
        // });
    });


});


function readURL(input) {

    if (input.files && input.files[0]) {

        const reader = new FileReader();

        reader.onload = function (e) {

            $('#imgSize')[0].src = e.target.result;

        };

        reader.readAsDataURL(input.files[0]);

    } else {

        $('#imgSize')[0].src = "";

    }
}