class Portfolio < ApplicationRecord
  has_and_belongs_to_many :stock
  belongs_to :user
end
