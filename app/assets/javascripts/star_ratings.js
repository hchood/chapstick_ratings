$(function() {
  $('.rating_star').click(function() {
    var starClicked = $(this);
    var stars = starClicked.attr('value');
    var chapstickId = starClicked.attr('data-chapstick-id');

    for(i = 1; i <= 5; i++) {
      star = $('#chapstick_' + chapstickId + '_' + i);
      if (i <= stars) {
        star.addClass('activated');
      } else {
        star.removeClass('activated');
      }
    }

  });
});
