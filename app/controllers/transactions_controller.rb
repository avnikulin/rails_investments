class TransactionsController < ApplicationController
  def index
    @portfolios = current_user.portfolios.order('created_at desc')
    
  end

  def show
  end
end
