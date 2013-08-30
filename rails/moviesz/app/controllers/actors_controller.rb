class ActorsController < ApplicationController
  def show
    @movie = Imdb::Search.new("Jobs").movies.first
  end


end
