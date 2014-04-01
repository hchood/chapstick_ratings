$(function() {
  $('.star').click( function(e) {
    var starClicked  = $(e.target);
    var numStars     = starClicked.attr('value');
    var chapstickId  = starClicked.attr('data-chapstick-id');
    var userRatingId = starClicked.attr('data-user-rating-id');
    var ratingData   = {
      chapstick_id: chapstickId,
      stars: numStars
    };

    if ( userRatingId === "") {
      requestType = "POST";
      path = "/ratings";
    } else {
      requestType = "PUT";
      path = "/ratings/" + chapstickId;
    }

    highlightStars(numStars, chapstickId);
    submitVote(requestType, path, ratingData);
  });
});

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

var highlightStars = function(stars, chapstickId) {
  for(i = 1; i <= 5; i++) {
    star = $('#chapstick_' + chapstickId + '_' + i);
    if (i <= stars) {
      star.addClass('fa-star');
      star.removeClass('fa-star-o');
    } else {
      star.addClass('fa-star-o');
      star.removeClass('fa-star');
    }
  }
};
