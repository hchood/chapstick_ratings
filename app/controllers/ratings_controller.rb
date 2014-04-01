class RatingsController < ApplicationController
  def create
    @rating = Rating.new(rating_params)
    respond_to do |format|
      if @rating.save
        format.json { render json: @rating, status: :created }
      else
        puts "ERROR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      end
    end
  end

  def update
    @rating = Rating.find_by(user: current_user, chapstick_id: rating_params[:chapstick_id])
    respond_to do |format|
      if @rating.update(rating_params)
        format.json { render json: @rating, status: :created }
      else
        puts "ERROR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      end
    end
  end

  private
  def rating_params
    params.require(:rating).permit(:chapstick_id, :stars).merge(user: current_user)
  end
end
