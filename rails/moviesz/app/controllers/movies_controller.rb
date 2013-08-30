class MoviesController < ApplicationController

  def index
    @faves = Movie.all
  end


  def movies
  @movies = Imdb::Search.new(params[:name]).movies
#     render "index"
  end

  def display
    #@movie = Imdb::Movie.new(params[:id])
    @fave_movies = Movie.all
  end

  def show
    @movie = Imdb::Movie.new(params[:id])

    # @movie = Movie.find(params[:id])
  end


  def create
    movie = Imdb::Search.new(params[:title]).movies.first
    fave = Movie.new
    # Movie.all.include? fave.name redirect_to('/')
      fave.name = movie.title
      fave.plot = movie.plot
      fave.mpaa = movie.mpaa_rating
      fave.favorite = params[:favorite]
      if fave.favorite
        fave.rating = 100
      else
        fave.rating = 50
      end
      fave.save

    actors = movie.cast_members[0..2]
    actors.each do |actor|
      new_actor = Actor.find_or_create_by_name(actor)
      fave.actors << new_actor
    end

    redirect_to('/')
    end
  end




