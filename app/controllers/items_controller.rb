class ItemsController < ApplicationController

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
