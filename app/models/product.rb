# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  code        :string(255)      not null
#  description :text(65535)      not null
#  name        :string(255)      not null
#  price       :integer          not null
#  stock       :integer          not null
#  unit        :string(255)      not null
#  shop_id     :integer          not null
#
# Indexes
#
#  index_products_on_code  (code) UNIQUE
#

class Product < ApplicationRecord
  after_create :generate_random_number

  belongs_to :shop, optional: true

  def generate_random_number
    self.code = Digest::SHA256.hexdigest("#{shop.id}#{id}")[0..9]
    save!
  end
end
