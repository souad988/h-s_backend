class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :like_count, :category_id, :description, :deleted, :positive_stocks, :images, :category
  has_many :positive_stocks, Serializer: StockSerializer
  has_many :images, Serializer: ImageSerializer
  belongs_to :category, Serializer: CategorySerializer
  has_many :colors, through: :stocks
  has_many :sizes, through: :stocks

  def positive_stocks
    stocks = object.stocks.select { |stock| stock.quantity > 0 }
    puts('serializer positive stocks', stocks)
    stocks
  end
end
