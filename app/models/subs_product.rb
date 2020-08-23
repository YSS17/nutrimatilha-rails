class SubsProduct < ApplicationRecord
  belongs_to :pet
  belongs_to :product
  belongs_to :subscription
end
