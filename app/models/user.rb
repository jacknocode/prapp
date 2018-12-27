class User < ApplicationRecord
  has_many :Orders
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,presence: true,uniqueness: true
  validates :tel,presence: true,uniqueness: true,length: { maximum: 11 }
  validates :email,presence: true,uniqueness: true,length: { maximum: 100 },
            format: { with: VALID_EMAIL_REGEX }
  def self.search(search)
    if search
     User.where(['name Like ?',"%#{search}%"])
    else
     User.all
    end
  end
end
