class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update]

  def index
    @carts = Cart.all
  end

  def show
  end

  def new
    @cart = Cart.new
  end

  def edit
  end

  def create
    @cart = Cart.new(cart_params)
    if @cart.save
      redirect_to carts_path
    else
      render :new
    end
  end

  def update
    if @cart.update(cart_params)
      redirect_to carts_path
    else
      render :edit
    end
  end

  def dsestroy
    Cart.find(params[:id]).destroy
    redirect_to carts_path
  end

  private

  def set_cart
    @card = Cart.find(params[:id])
  end

  def cart_params
    params.require(:cart).permit(:name)
  end
end
