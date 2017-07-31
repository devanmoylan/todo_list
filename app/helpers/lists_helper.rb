module ListsHelper

  def active_item_count(list)
    list.items.where(status: 0).count
  end

end
