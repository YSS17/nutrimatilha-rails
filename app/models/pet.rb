class Pet < ApplicationRecord
  belongs_to :breed
  belongs_to :user
  has_one :subs_product
end
