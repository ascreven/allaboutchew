class DogsController < ApplicationController

  # before_action :set_dog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @dogs = Dog.all.order(session[:sort_by])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create!(dog_params)
    redirect_to "/dogs/#{@dog.id}"
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to '/dogs/'
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to "/dogs"
  end

  def test_ajax
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age)
  end
end
