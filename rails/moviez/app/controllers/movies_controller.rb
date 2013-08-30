class MoviesController < ApplicationController

  def index

  end

  # GET
  # /todos/search
  # todos_search path
  def movies
    # @todos = Todo.where(task: params[:task])
  @movies = Imdb::Search.new(params[:name]).movies
#     render "index"

  end

  def show
    @name = params[:id]
    @movie = Imdb::Search.new(params[:id]).movies.first
  end


end

