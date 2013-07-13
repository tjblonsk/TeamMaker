class WelcomeController < ApplicationController

  def index
  end

  def stock
  end

  def show
    stock = Stock.new
    symbol = params[:symbol].upcase
    @price = stock.get_price(symbol)
  end

end
