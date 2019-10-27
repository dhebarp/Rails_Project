class CreateJoinTableUserPortfolio < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :portfolios do |t|
      # t.index [:user_id, :portfolio_id]
      # t.index [:portfolio_id, :user_id]
    end
  end
end
