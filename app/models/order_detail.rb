class OrderDetail < ApplicationRecord
  belongs_to :Order, through: :User,:Item
end
