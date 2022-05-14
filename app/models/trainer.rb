class Trainer < ApplicationRecord
  belongs_to :user
  has_many :services


  def full_name
    return "#{first_name}#{last_name}"
  end
end
