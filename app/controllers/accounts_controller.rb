class AccountsController < ApplicationController

  def index
    if params[:search]
      account = Account.find_by_id(params[:search])
      if account == nil
        flash[:error] = 'There is no Account with that ID.'
        redirect_to accounts_path
      else
        redirect_to account_path(account)
      end
    end
  end

  def show
    @account = Account.find(params[:id])
  end

end
