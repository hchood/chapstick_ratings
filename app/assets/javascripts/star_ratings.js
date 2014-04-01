$(function() {
  $('.rating_star').click(function() {
    var starClicked = $(this);
    var stars = starClicked.attr('data-stars');
    var chapstickId = starClicked.attr('data-chapstick-id');

    for(i = 1; i <= stars; i++) {
      star = $('#chapstick_' + chapstickId + '_' + i);
      star.addClass('activated');
    }

  });
});
