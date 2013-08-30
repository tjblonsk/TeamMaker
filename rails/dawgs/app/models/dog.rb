class Dog < ActiveRecord::Base

def index
  @dogs = Dog.all?
end

def new
end

def create
  name = params[:name]
  dog = Dog.new
  dog.name = name
  dog.save
  redirect_to '/dogs'
end


end
