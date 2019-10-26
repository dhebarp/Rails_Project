class StocksController < ApplicationController
  def new
    stock_api = ENV["STOCKS_API_KEY"]
    @stocks = HTTParty.get("https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=MSFT&apikey=#{stock_api}")
    resHash = JSON.parse(@stocks.body)
    symbol = resHash["Global Quote"]["01. symbol"]
    price = resHash["Global Quote"]["05. price"]
    @stock = {symbol: symbol, price: price} #object with hashed values
  end
  def search
    stocks_api = ENV["NEWS_API_KEY"]
    @search = HTTParty.get("https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=berkshire&apikey=#{stocks_api}")
    resHash = JSON.parse(@search.body)
    stock_name = resHash["Global Quote"]["01. symbol"]
    price = resHash["Global Quote"]["05. price"]

  end

  def create
  end

  def update
  end
end