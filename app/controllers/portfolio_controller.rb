class PortfolioController < ApplicationController
  def view
    @portfolios = Portfolio.find(params[:id])
    @stocks = @portfolios.stocks.all

    @symbol = params[:symbol]
  end

    def portfolio_stocks
      portfolio = Portfolio.find(params[:id])
      @stocks = portfolio.stocks.all

      render json: @stocks
    end

  def stocks_new
    @symbol = params[:symbol]
    @stocks = params[:stocks]
  end
  end
