class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    respond_with(@orders)
  end

  def show
    respond_with(@order)
  end

  def new
    if not user_signed_in?
      redirect_to :controller=>'home', :action=>'index'
    end
    
    @order = Order.new
    respond_with(@order)
  end

  def edit
  end

  def create
    if not user_signed_in?
        redirect_to :controller=>'home', :action=>'index'
    end
    
    @order = Order.new(order_params)
    @order.user = current_user
    @order.save
    respond_with(@order)
  end

  def update
    @order.update(order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:orderDate, :product, :client, :quantity, :unitCost)
    end
end
