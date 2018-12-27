class Category < ApplicationRecord
  has_many :items, dependent: :destroy
  validates :name, presence: true, length: { minimum: 1, message: 'Too short to name' }
  validates :code, presence:true,uniqueness: true

  def self.search(search)
    if search
     Category.where(['name Like ?',"%#{search}%"])
    else
     Category.all
    end
  end
end
