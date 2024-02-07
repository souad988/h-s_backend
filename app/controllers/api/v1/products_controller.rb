class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.includes(:category, :images).where(deleted: false).order(created_at: 'desc')
    render json: @products, each_serializer: ProductSerializer, include: %w[category images]
  end
end
