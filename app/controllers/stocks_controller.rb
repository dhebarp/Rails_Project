class StocksController < ApplicationController
  def new
    stock_new_api = ENV["STOCKS_API_KEY"]
    @stocks = HTTParty.get("https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=#{params[:symbol]}&apikey=#{stock_new_api}")
    resHash = JSON.parse(@stocks.body)
    symbol_show = resHash["Global Quote"]["01. symbol"]
    open_price = resHash["Global Quote"]["02. open"]
    high_price = resHash["Global Quote"]["03. high"]
    low_price = resHash["Global Quote"]["04. low"]
    price = resHash["Global Quote"]["05. price"]
    previous_close = resHash["Global Quote"]["08. previous close"]
    change = resHash["Global Quote"]["09. change"]
    change_percent = resHash["Global Quote"]["10. change percent"]
    @stock = {symbol: symbol_show, open_price: open_price, high_price: high_price, low_price: low_price, price: price, previous_close: previous_close, change: change, change_percent: change_percent} #object with hashed values

    stocks_search_api = ENV["NEWS_API_KEY"]
    @search = HTTParty.get("https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=#{params[:symbol]}&apikey=#{stocks_search_api}")
    search_resHash = JSON.parse(@search.body)
    search_name = search_resHash["bestMatches"][0]["2. name"]
    search_equity_type = search_resHash["bestMatches"][0]["3. type"]
    search_region = search_resHash["bestMatches"][0]["4. region"]
    search_currency = search_resHash["bestMatches"][0]["8. currency"]
    @search_form = {search_name: search_name, search_equity_type: search_equity_type, search_region: search_region, search_currency: search_currency}

  end

  def search
    stocks_search_api = ENV["NEWS_API_KEY"]
    @search = HTTParty.get("https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=microsoft&apikey=#{stocks_search_api}")
    search_resHash = JSON.parse(@search.body)
    search_symbol = search_resHash["bestMatches"][0]["1. symbol"]
    @search_form = {search_symbol: search_symbol}

  end

  def create
    stock1 = Stock.new
    stock1.symbol = params[:symbol]
    stock1.name = params[:search_name]
    stock1.stock_type = params[:search_equity_type]
    stock1.region = params[:search_region]
    stock1.currency = params[:search_currency]
    stock1.open = params[:open_price]
    stock1.high = params[:high_price]
    stock1.price = params[:price]
    stock1.previous_close = params[:previous_close]
    stock1.change = params[:change]
    stock1.change_percent = params[:change_percent]
    stock1.save
    redirect_to 'new_stocks'
  end

  def update
  end
end