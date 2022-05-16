class Trainer < ApplicationRecord
  belongs_to :user
  has_many :services

  has_one_attached :cover

  def full_name
    return "#{first_name}#{last_name}"
  end
end
