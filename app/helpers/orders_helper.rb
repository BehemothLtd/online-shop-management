module OrdersHelper
  def order_new
    options = {}
    content_tag("order-new", nil, options, false)
  end
end