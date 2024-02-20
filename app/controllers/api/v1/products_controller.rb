class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.where(deleted: false).order(created_at: 'desc')
    render json: @products, each_serializer: ProductsSerializer
  end

  def show
    @product = Product.find(params[:id])
    puts @product
    render json: @product, serializer: ProductSerializer  
  end
end

#, include: %w[images stocks colors sizes] 
