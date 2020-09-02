class ReviewsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(strong_params)
    @review.user = current_user
    @festival = Festival.find(params[:festival_id])
    @review.festival = @festival
    if @review.save
      redirect_to festival_path(@festival)
    else
      render 'festivals/partials/highlights', festival: @festival
    end
  end

  private

  def strong_params
    params.require(:review).permit(:rating, :content, photos: [])
  end
end
