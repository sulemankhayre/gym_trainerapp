class Customer < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :services, through: :orders
end
