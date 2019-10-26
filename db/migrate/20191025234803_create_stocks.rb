class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.string :name
      t.string :type
      t.string :region
      t.string :currency
      t.string :open
      t.string :high
      t.string :low
      t.string :price
      t.string :previous_close
      t.string :change
      t.string :change_percent

      t.timestamps
    end
  end
end
