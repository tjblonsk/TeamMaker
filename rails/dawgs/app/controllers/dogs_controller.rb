class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
  end

  def create

  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    dog = Dog.find(params[:id])
    dog.name = params[:name]
    dog.save
    redirect_to "/dogs/#{dog.id}"
end

  def destroy
    dog = Dog.find(params[:id])
    dog.destroy
    redirect_to('/dogs/')
  end
end
