class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end


def create
  @product = Product.new
  if @product.save
  render json: @product
  else
  render json: {errors: product.errors}, status: 422
  end
end


end
