class ShopController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end


  private
  def shop_params
    params.require(:shop).permit(:name)
  end
end
