class User < ApplicationRecord
<<<<<<< HEAD
  has_many :pets, dependent: :destroy
  has_one :address, dependent: :destroy
  has_one :subscription
=======
  has_many :pet_infos
>>>>>>> a459d4407bfd0e82b369a6bc57faa8c47d04e3de
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :adress, presence: true
end
