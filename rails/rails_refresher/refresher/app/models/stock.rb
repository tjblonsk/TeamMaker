class Stock
  def get_price(symbol)
    quote = YahooFinance::get_standard_quotes( symbol )
    stock = quote[symbol]
    stock.lastTrade
  end

  def get_time(symbol)
    quote = YahooFinance::get_standard_quotes( symbol )
    stock = quote[symbol]
    stock.time
  end


end
