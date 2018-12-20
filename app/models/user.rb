class User < ApplicationRecord
  belongs_to :Orderdetail
  belongs_to :Order
end
