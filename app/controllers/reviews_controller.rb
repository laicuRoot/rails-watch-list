class ReviewsController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(review_params)
    @review.movie = @movie
    @review.save

    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end
