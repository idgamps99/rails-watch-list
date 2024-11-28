class ListsController < ApplicationController
  # GET /lists: lists
  def index
    @lists = List.all
  end
end
