module RatingsHelper
  def rating(user, value, chapstick)
    user_rating_id = chapstick.ratings.where(user: user).take.id || ''
    star_id = "chapstick_#{chapstick.id}_#{value}"

    content_tag(:a, "",
      class: 'fa fa-star-o star',
      id: star_id,
      value: value,
      data: {
        chapstick_id: chapstick.id,
        user_rating_id: user_rating_id
        }
      )
  end
end
