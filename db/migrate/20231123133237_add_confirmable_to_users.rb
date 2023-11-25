class AddConfirmableToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmed, :boolean, default: false, null: false
  end
end
