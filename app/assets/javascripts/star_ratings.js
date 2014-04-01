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

    $.ajax({
      type: 'POST',
      url: '/ratings',
      data: {
        rating: {
          // user_id: can't actually pass this in
          chapstick_id: chapstickId,
          stars: stars
        }
      }
    });
  });
});
