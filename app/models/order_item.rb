# == Schema Information
#
# Table name: order_items
#
#  id         :bigint           not null, primary key
#  amount     :float(24)        not null
#  note       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer          not null
#  product_id :integer          not null
#

class OrderItem < ApplicationRecord
end
