class Stock < ApplicationRecord
  has_many :news_items
  has_and_belongs_to_many :portfolios
end
