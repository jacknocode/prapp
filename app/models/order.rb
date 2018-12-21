class Order < ApplicationRecord
  has_many :orderdetail
  belongs_to :user
  has_many :items through: :orderdetail
end
