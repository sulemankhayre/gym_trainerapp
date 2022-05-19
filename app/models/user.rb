class User < ApplicationRecord
  rolify
  has_one :customer, dependent: :destroy
  has_one :trainer, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum :role, { is_customer: 1, is_trainer: 2, is_admin: 3 }
end
