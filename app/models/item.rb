class Item < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, length: { minimum: 1, message: 'Too short to name' }
  # default_scope { order(created_at: :asc)}

  scope :search, ->(parameter) do
    result = Item
    parameters = parameter.split(/[[:blank:]]+/)
    parameters.each do |search|
      result = result.where(['name Like ? or note Like ?',"%#{search}%","%#{search}%"])
    end
    result
  end
end


# def self.search(search)
#   if search
#    Category.where(['name Like ?',"%#{search}%"])
#   else
#    Category.all
#   end
# end
# end

#keywordおろしてきて
#words = keyword.split('')
#words.each do |word|



# scope :search, ->(parameter) do
#   result = Item
#   parameters = parameter.split(/[[:blank:]]+/)
#   parameters.each do |search|
#     result = result.where(['name Like ? or note Like ?',"%#{search}%","%#{search}%"])
#   end
#   result
# end

# def search
#   search_keywords = params[:search].to_s.split(/[[:blank:]]+/)
#   category_id = params[:category]
#   search_query = create_search_query(search_keywords, category_id)
#   @items = Item.where(search_query)
# end
