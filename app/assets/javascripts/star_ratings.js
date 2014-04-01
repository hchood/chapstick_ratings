$(function() {
  $('.rating_star').click(function() {
    var starClicked = $(this);
    var stars = starClicked.attr('data-stars');
    var chapstickId = starClicked.attr('data-chapstick-id');

    starClicked.addClass('activated');

  });
});
