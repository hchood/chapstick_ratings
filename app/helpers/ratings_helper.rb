module RatingsHelper
  def rating(user, value, chapstick)
    user_rating = chapstick.ratings.where(user: user).take || ''

    if user_rating.blank?
      user_rating_id = ''
    else
      user_rating_id = user_rating.id
    end
    star_id = "chapstick_#{chapstick.id}_#{value}"

    if user_rating.blank? || value > user_rating.stars
      star_class = "fa fa-star-o star"
    else
      star_class = "fa fa-star star"
    end

    content_tag(:a, "",
      class: star_class,
      id: star_id,
      value: value,
      data: {
        chapstick_id: chapstick.id,
        user_rating_id: user_rating_id
        }
      )
  end
end
