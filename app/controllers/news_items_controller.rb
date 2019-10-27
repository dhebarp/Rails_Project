class NewsItemsController < ApplicationController
  def new
    news_api = ENV["NEWS_API_KEY"]
    @news_item = HTTParty.get("https://newsapi.org/v2/everything?apiKey=#{news_api}&qInTitle=#{params[:title]}")
    resHash = JSON.parse(@news.body)
    @articles = resHash["articles"].first(3)
  end

  def update
  end
end
