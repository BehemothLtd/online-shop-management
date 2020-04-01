# == Schema Information
#
# Table name: customers
#
#  id         :bigint           not null, primary key
#  address    :text(65535)      not null
#  name       :string(255)      not null
#  note       :text(65535)
#  phone      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_customers_on_phone  (phone) UNIQUE
#

class Customer < ApplicationRecord
end
