class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @movie = Movie.find(params['bookmark'][:movie_id])
    @bookmark.movie = @movie
    @bookmark.list = @list
    @bookmark.save
    redirect_to lists_path(@list)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @list = List.find(params[:list_id])
    @bookmark.destroy
    redirect_to lists_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
