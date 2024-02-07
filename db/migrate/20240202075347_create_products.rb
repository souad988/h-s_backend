class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.integer :like_count
      t.references :category, null: false, foreign_key: true
      t.text :description
      t.boolean :deleted

      t.timestamps
    end
  end
end
