class Trainer < ApplicationRecord
  belongs_to :user

  # fix rocket operator 
  has_many :services, :dependent => :delete_all

  has_one_attached :cover

  def full_name
    return "#{first_name}#{last_name}"
  end
end
