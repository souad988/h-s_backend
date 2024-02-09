class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all.order(created_at: 'desc')
    render json: @categories, each_serializer: CategorySerializer, status: :ok
  end
end
