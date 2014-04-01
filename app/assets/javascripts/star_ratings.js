$(function() {
  // $('.rating_star').click(function() {
  //   var starClicked = $(this);
  //   var stars = starClicked.attr('value');
  //   var chapstickId = starClicked.attr('data-chapstick-id');

  //   for(i = 1; i <= 5; i++) {
  //     star = $('#chapstick_' + chapstickId + '_' + i);
  //     if (i <= stars) {
  //       star.addClass('activated');
  //     } else {
  //       star.removeClass('activated');
  //     }
  //   }
});

var rates = function(isNew) {
  var star = $(window.event.srcElement);
  var chapstickId = star.attr('data-chapstick-id');
  var ratingData = {
    chapstick_id: chapstickId,
    stars: star.attr('value')
  };

  if (isNew === "") {
    requestType = "POST";
    path = "/ratings";
  } else {
    requestType = "PUT";
    path = "/ratings/" + chapstickId;
  }

  submitVote(requestType, path, ratingData);
};

var submitVote = function(requestType, path, data) {
  $.ajax(
  {
    type: requestType,
    url: path,
    data: {
      rating: data
    }
  });
};
