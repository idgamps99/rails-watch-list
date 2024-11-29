class ListsController < ApplicationController
  # GET /lists as: lists
  def index
    @lists = List.all
  end

  # GET /lists/:id as: list
  def show
    @list = List.find(params[:id])
    @movies = Movie.all
    @bookmarks = Bookmark.where(list_id: @list.id)
  end

  # GET /lists/new as: new_list
  def new
    @list = List.new
  end

  # POST /lists
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end

