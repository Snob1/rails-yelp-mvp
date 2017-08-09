class RestaurantsController < ApplicationController
  before_action :find_restaurant, only:[:show, :edit, :update]
  def index
    @restaurants = Restaurant.all
    @reviews = Review.all
  end

  def show
    @reviews = Review.where(restaurant_id: params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(params_restaurant)
    if @restaurant.save
     redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.new
    # redirect_to restaurant_path(@restaurant)
  end

  def update

    @restaurant.save
    redirect_to restaurants_path
  end
  def destroy
    redirect_to restaurants_path
  end

  protected
  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
