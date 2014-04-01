$(function() {
  $('.star').click( function(e) {
    // create the variables I'll need for my POST or PUT request
    var starClicked  = $(e.target);
    var numStars     = starClicked.attr('value');
    var chapstickId  = starClicked.attr('data-chapstick-id');
    var userRatingId = starClicked.attr('data-user-rating-id');
    var ratingData   = {
      chapstick_id: chapstickId,
      stars: numStars
    };

    // if the user has not yet rated the chapstick,
    // set route variables to "POST /ratings"
    // Otherwise, send request to "PUT /ratings/:chapstick_id"
    if ( userRatingId === "") {
      requestType = "POST";
      path = "/ratings";
    } else {
      requestType = "PUT";
      path = "/ratings/" + chapstickId;
    }

    // highlight the appropriate stars & submit or update vote
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
