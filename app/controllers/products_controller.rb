class ProductsController < ApplicationController
  def index
    @cart = cart
  end

  def create
    product = params.require(:product)
    cart << product
    product
    redirect_to '/'
  end
end