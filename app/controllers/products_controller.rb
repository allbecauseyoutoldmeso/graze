class ProductsController < ApplicationController

  def show
    account = Account.find(params[:account_id])
    product = Product.find(params[:id])
    @rating = account.product_rating(product.id)
  end


end
