class PortfolioController < ApplicationController
  def view
    @portfolios = Portfolio.find(params[:id])
    @stocks = @portfolios.stock.all
  end

    def portfolio_stocks
      portfolio = Portfolio.find(params[:id])
      stocks = portfolio.stock.all

      render json: stocks
    end
  end
