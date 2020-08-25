class Subscription < ApplicationRecord
  belongs_to :user
  has_many :subs_products

  validates :user, :delivery_time, :order_price, :status, :payment_gateway, presence: true
end
