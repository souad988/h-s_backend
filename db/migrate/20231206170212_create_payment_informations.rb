class CreatePaymentInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_informations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :payment_type
      t.string :card_number
      t.date :expiration_date
      t.integer :cvv

      t.timestamps
    end
  end
end
