$(document).ready(function(){
    $("#registLost").click(function(event){
        event.preventDefault();
        var title = $("#titleInput").val();
        var item = $("#lostItem").val();
        var area = $("#lostArea").val();
        var date = $("#lostDate").val();
        var file = $("#lostFile")[0].files[0];  // Gets the first selected file
        var details = $("#contentTextarea").val();

        $.ajax({
            url: '/movie/helpDesk/lost_form',
            type: "POST",
            data:{
               "titleInput": title,
               "lostItem": item,
               "lostArea":area,
               "lostDate":date,
               "lostFile":file,
               "contentTextarea":details
            },
            success: function(response){
                var lostNo = response.lostNo;
        alert("작성성공");
        var url = `/movie/helpDesk/lost_detail/${lostNo}`;
        location.href = url;
            },
            error: function(jqXHR, textStatus, errorMessage){
                alert("ㅗ");
            }
        });
    });
});