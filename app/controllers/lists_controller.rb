class ListsController < ApplicationController
  before_action :set_list, only: [:show, :update]


  def index
    @lists = List.all
    @list = List.new
  end

  def show

    if params[:completed]
      #completed items
      @items = @list.items.where(status: 1)
    elsif params[:active]
      #incomplete items
      @items = @list.items.where(status: 0)
    else
      #all items
      @items = @list.items
    end
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      redirect_to lists_path
    end
  end

  def update
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render :show
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, items_attributes: [:name])
  end

  def set_list
    @list = List.find(params[:id])
  end

end



