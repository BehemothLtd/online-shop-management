# == Schema Information
#
# Table name: orders
#
#  id               :bigint           not null, primary key
#  canceled_at      :datetime
#  done_at          :datetime
#  note             :text(65535)
#  number           :string(255)      not null
#  ordered_at       :datetime         not null
#  receiver_address :string(255)      not null
#  receiver_phone   :string(255)      not null
#  shipper_name     :string(255)
#  shipper_phone    :string(255)
#  shipping_fee     :integer          default(0)
#  status           :string(255)
#  total            :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  customer_id      :string(255)      not null
#  shop_id          :integer          not null
#
# Indexes
#
#  index_orders_on_number  (number) UNIQUE
#

class Order < ApplicationRecord
end
