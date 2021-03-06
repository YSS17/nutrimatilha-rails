class User < ApplicationRecord
  has_many :pets, dependent: :destroy
  has_one :address, dependent: :destroy
  has_one :subscription
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :adress, presence: true
end
