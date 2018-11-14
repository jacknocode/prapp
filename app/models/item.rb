class Item < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, length: { minimum: 1, message: 'Too short to name' }
end
