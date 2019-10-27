class CreateJoinTableStockNews < ActiveRecord::Migration[6.0]
  def change
    create_join_table :stocks, :news do |t|
      # t.index [:stock_id, :news_id]
      # t.index [:news_id, :stock_id]
    end
  end
end
