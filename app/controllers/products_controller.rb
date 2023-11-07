class ProductsController < ApplicationController
  before_action :set_product, only: [:destroy]
  
  def index
    @products = Product.all
    # render "index"
  end

  def new
    @product = Product.new(
      name: params[:p_name],
      price: params[:p_price])
    if @product.save
      redirect_to root_path
    else
      render 'index'
    end
  end

  def create
  end

  def destroy
    @product.destroy
    
    redirect_to root_path
  end
  
  def set_product
    @product = Product.find(params[:id])
  end
end
