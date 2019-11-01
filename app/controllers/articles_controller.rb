class ArticlesController < ApplicationController
  def new
    news_api = ENV["NEWS_API_KEY"]
    @news_item = HTTParty.get("https://newsapi.org/v2/everything?apiKey=#{news_api}&qInTitle=#{params[:title]}")
    resHash = JSON.parse(@news_item.body)
    @articles = resHash["articles"].first(10)
  end

  def create
    news1 = Article.new
    news1.source = params[:source_name]
    news1.author = params[:name]
    news1.title = params[:source_title]
    news1.description = params[:stock_type]
    news1.url = params[:stock_type]
    news1.save
    redirect_to "/articles/:title"
  end
end
