module ApplicationHelper
  def active_class(controller, action = nil)
    return "" unless controller_name == controller

    if action
      return "" unless action_name == action
    end

    "active"
  end
end
