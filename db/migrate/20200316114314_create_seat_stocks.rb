class CreateSeatStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :seat_stocks do |t|
      t.references :seat, null: false, foreign_key: true
      t.references :screen, null: false, foreign_key: true
      t.decimal :price, default: 0.0, precision: 15, scale: 2
      t.boolean :filled, default: false

      t.timestamps
    end
  end
end
