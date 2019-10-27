class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.string :source
      t.string :author
      t.string :title
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
