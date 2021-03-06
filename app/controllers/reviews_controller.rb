class ReviewsController < ApplicationController
  # def index
  #   @review = Review.where(params[:restaurant_id])
  # end

  # def show
  #   @review = Review.find(params[:restaurant_id])
  # end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params_review)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  protected

  def params_review
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end

  # def restaurant_id
  #   @restaurant_id = Restaurant.find()
  # end
end
