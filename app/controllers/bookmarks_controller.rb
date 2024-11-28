class BookmarksController < ApplicationController
  # GET /lists/:list_id/bookmarks/new as: new_list_bookmark
  def new
    @bookmark = Bookmark.new
  end
end
