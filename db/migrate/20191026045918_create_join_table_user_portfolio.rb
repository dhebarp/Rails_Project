class CreateJoinTableUserPortfolio < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :portfolios do |t|
      t.references :users, index: true, foreign_key: true
      t.references :portfolios, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
