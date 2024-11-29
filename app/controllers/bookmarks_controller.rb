class BookmarksController < ApplicationController

  # GET /lists/:list_id/bookmarks list_bookmarks
  def index
  end

  # GET /lists/:list_id/bookmarks/new as: new_list_bookmark
  def new
    @list = List.find(params[:list_id])
    @movies = Movie.all
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list_id = params[:list_id]
    if @bookmark.save
      redirect_to list_path(@bookmark.list_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # DELETE /bookmarks/:id
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @list = List.find(@bookmark.list_id)
    @bookmark.destroy
    redirect_to list_path(@list), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
