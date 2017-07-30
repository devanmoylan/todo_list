class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
