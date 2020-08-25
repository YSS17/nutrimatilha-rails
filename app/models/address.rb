class Address < ApplicationRecord
  belongs_to :user
  validates :zip_code, :city, :state, :number, :neighborhood, :state, presence: true
end
