class Order < ApplicationRecord
  belongs_to :Item
  belongs_to :User
  has_one :Orderdetail
end
