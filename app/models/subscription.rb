class Subscription < ApplicationRecord
  belongs_to :user
  has_many :subs_products
end
