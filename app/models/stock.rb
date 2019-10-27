class Stock < ApplicationRecord
  has_many :news_item
  has_and_belongs_to_many :portfolio
end
