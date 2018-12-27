class Order < ApplicationRecord
  has_many :orderdetails,dependent: :destory
  belongs_to :user
  has_many :items through: :orderdetails
end
