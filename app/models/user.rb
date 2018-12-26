class User < ApplicationRecord
  has_many :Order

  def self.search(search)
    if search
     User.where(['name Like ?',"%#{search}%"])
    else
     User.all
    end
  end
end
