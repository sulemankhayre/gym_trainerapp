class Service < ApplicationRecord
  belongs_to :trainer
  has_many :orders
  has_many :customers, through: :orders

end
