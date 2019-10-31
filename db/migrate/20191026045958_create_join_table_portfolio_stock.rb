class CreateJoinTablePortfolioStock < ActiveRecord::Migration[6.0]
  def change
    create_join_table :portfolios, :stocks do |t|
      t.references :portfolios, index: true, foreign_key: true
      t.references :stocks, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
