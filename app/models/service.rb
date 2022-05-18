class Service < ApplicationRecord
  belongs_to :trainer
  has_many :orders
  has_many :customers, through: :orders
    
  validates :product,:description, :location, presence: {message: 'Please provide a correct service'}

 
end
