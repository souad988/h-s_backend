class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.includes(:category, :images).where(deleted: false).order(created_at: 'desc')
    render json: @products, each_serializer: ProductSerializer, include: %w[category images]
  end

  def show
    @product = Product.includes(stocks: [:size, :color]).where(stocks: {quantity: 1..}).find(params[:id])
    puts @product
    render json: @product, serializer: ProductSerializer, include: %w[images stocks colors sizes]   
  end
end
