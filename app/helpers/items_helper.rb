module ItemsHelper

  def li_class_for_item(item)
    "completed" if item.completed?
  end

  def form_for_item_status(item)
    form_for ([item.list, item]) do |f|
      f.check_box :status, :class => "toggle", :checked => item.completed?
    end
  end
end

