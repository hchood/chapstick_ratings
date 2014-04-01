var rates = function(isNew) {
  var starClicked = $(window.event.srcElement);
  var stars = starClicked.attr('value');
  var chapstickId = starClicked.attr('data-chapstick-id');
  var ratingData = {
    chapstick_id: chapstickId,
    stars: stars
  };

  if (isNew === "") {
    requestType = "POST";
    path = "/ratings";
  } else {
    requestType = "PUT";
    path = "/ratings/" + chapstickId;
  }

  highlightStars(stars, chapstickId);
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

var highlightStars = function(stars, chapstickId) {
  for(i = 1; i <= 5; i++) {
    star = $('#chapstick_' + chapstickId + '_' + i);
    if (i <= stars) {
      star.addClass('activated');
    } else {
      star.removeClass('activated');
    }
  }
};
