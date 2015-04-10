class OrderProductsController < ApplicationController
  before_action :set_order_product, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @order_products = OrderProduct.all
    respond_with(@order_products)
  end

  def show
    respond_with(@order_product)
  end

  def new
    @order_product = OrderProduct.new
    respond_with(@order_product)
  end

  def edit
  end

  def create
    @order_product = OrderProduct.new(order_product_params)
    @order_product.save
    respond_with(@order_product)
  end

  def update
    @order_product.update(order_product_params)
    respond_with(@order_product)
  end

  def destroy
    @order_product.destroy
    respond_with(@order_product)
  end

  private
    def set_order_product
      @order_product = OrderProduct.find(params[:id])
    end

    def order_product_params
      params.require(:order_product).permit(:quantity, :unitCost)
    end
end
