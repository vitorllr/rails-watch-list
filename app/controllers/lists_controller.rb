class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  # GET method to get a product by id
  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  # GET method for the new product form
  def new
    @list = List.new()
  end

  # POST method for processing form data
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end


  private
  def list_params
    params.require(:list).permit(:name)
  end
end
