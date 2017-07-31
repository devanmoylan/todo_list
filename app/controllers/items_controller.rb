class ItemsController < ApplicationController
  before_action :set_item, only: [:update, :destroy]

  def new
  end

  def update
    if @item.update(item_params)
      redirect_to list_path(@item.list)
    end
  end

  def destroy
    @item.destroy
    redirect_to list_path(@item.list)
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :status)
  end

end


