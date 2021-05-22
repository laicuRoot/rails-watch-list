require 'open-uri'
require 'json'

class MoviesController < ApplicationController
  def index
    @query = params[:movie]
    @movie = Movie.new
    if @query.present?
      @movies = searchmovies(@query)
      respond_to do |format|
        format.html
        format.json{ render json: { movies: @movies } }
      end
    else
      @movies = searchmovies("London")
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to root_path
  end

  private

  def searchmovies(query)
    url = "https://www.omdbapi.com/?s=#{query}&apikey=365f2501"
    url_string = open(url).read
    movies = JSON.parse(url_string)
  end

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
