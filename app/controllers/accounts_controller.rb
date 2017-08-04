class AccountsController < ApplicationController

  def index
    # @accounts = Account.all
    if params[:search]
      account = Account.find(params[:search])
      redirect_to account_path(account)
    end
  end

end
