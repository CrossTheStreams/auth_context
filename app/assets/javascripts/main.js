
$(document).ready(function() {

  $(".door").on("click",function() {
    var door = $(this).find("button").attr('data-door')
    FB.getLoginStatus(function(response) {
      if (response.status === 'connected') {
        FB.logout()
        console.log("asdf")
      }
    });
    FB.login(function(response) {
      if (response.authResponse) {
        document.location = '/auth/facebook?door='+door.toString()
      }
    });
  });
  
});

