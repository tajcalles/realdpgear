class ItemsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def destroy
    @item.destroy
    redirect_to items_index_path
  end
end
