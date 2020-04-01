# == Schema Information
#
# Table name: shops
#
#  id                 :bigint           not null, primary key
#  email              :string(255)      default(""), not null
#  encrypted_password :string(255)      default(""), not null
#  name               :string(255)      not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_shops_on_email  (email) UNIQUE
#

class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
