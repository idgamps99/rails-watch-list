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
    params.require(:list).permit(:name)
  end
end

# <h2><%= @list.name %></h2>
# <% @bookmarks.each do |bm| %>
# <%= @movies.find(bm.movie_id).title %>
# <%= @movies.find(bm.movie_id).rating %> <%# This seems very inefficient %>
# <%= bm.comment %>
# <% end %>
