/**/
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById('myBtn');

// Get the <span> element that closes the modal
var span = document.getElementsByClassName('close-button')[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "flex";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}



// 메뉴창 하버
$(document).ready(function() {
  $('.navBar, .dummy').hover(
      function() {
          $('.navBar ul').stop().slideDown(150); 
          $('.dummy').css('display', 'flex'); 
      },
      function() {
          $('.navBar ul').stop().slideUp(150); 
          $('.dummy').css('display', 'none'); 
      }
  );
});




