class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new # (params[:restaurant])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
