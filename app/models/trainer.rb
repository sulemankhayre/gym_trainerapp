class Trainer < ApplicationRecord
  belongs_to :user

  # fix rocket operator 
  has_many :services, :dependent => :delete_all

  has_one_attached :cover
  validates :first_name,:last_name, :description, presence: {message: 'Please provide a correct trainer'}

  # accepts_nested_attributes :services
  # view file:
  # form_for @trainer do |f|
  # *magic -> f.fields_for :services do |s|

 
  def full_name
    return "#{first_name}#{last_name}"

  end

end
