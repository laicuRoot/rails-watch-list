class ListsController < ApplicationController
  def index
    @list = List.all
    @movies = Movie.all
  end

  def show
    @list = List.find(params[:id])
    @list_review = ListReview.new(list: @list)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :picture)
  end
end
