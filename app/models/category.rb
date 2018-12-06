class Category < ApplicationRecord
  has_many :items
  validates :name, presence: true, length: { minimum: 1, message: 'Too short to name' }

  def self.search(search)
    if search
     Category.where(['name Like ?',"%#{search}%"])
    else
     Category.all
    end
  end
end
