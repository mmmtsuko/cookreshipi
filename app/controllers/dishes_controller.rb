class DishesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
     Dish.new(dish_params)
   if 
    Dish.create(dish_params)
    redirect_to root_path
   else
     render :new
    end
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def edit
    @dish = Dish.find(params[:id])
    unless @dish.user.id == current_user.id
      redirect_to action: :index
    end
  end


  def update
    @dish = Dish.find(params[:id])
    @dish.update(dish_params)
  end

  def destroy
    dish = Dish.find(params[:id])
    dish.destroy
    redirect_to root_path
  end

  private

  def dish_params
    params.require(:dish).permit(:title, :arerugi, :material, :procedure,:image, :user).merge(user_id: current_user.id)
  end
end
