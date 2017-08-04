class AccountsController < ApplicationController

  def index
    if params[:search]
      account = Account.find(params[:search])
      redirect_to account_path(account)
    end
  end

  def show
    @account = Account.find(params[:id])
  end

end
