class RatingsController < ApplicationController
  def create
    @rating = Rating.new(rating_params)
    binding.pry
  end

  private
  def rating_params
    params.require(:rating).permit(:user_id, :chapstick_id, :stars)
  end
end
