class MoviesController < ApplicationController
  def index
    @query = params[:query]
    if @query
      @movie = Movie.where("title LIKE '%#{@query}%'")
    else
      @movie = Movie.all
    end
  end
end
