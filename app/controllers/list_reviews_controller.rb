class ListReviewsController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @list_review = ListReview.new
  end

  def create
    @list_review = ListReview.new(list_review_params)
    @list = List.find(params[:list_id])
    @list_review.list = @list
    @list_review.save
    redirect_to list_path(@list)
  end

  private

  def list_review_params
    params.require(:list_review).permit(:comments, :rating)
  end
end
