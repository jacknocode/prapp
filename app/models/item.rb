class Item < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, length: { minimum: 1, message: 'Too short to name' }

  scope :search, ->(parameter) do
    result = Item
    parameter.split.each do |search|
      result = result.where(['name Like ?',"%#{search}%"])
    end
    result
  end
end
