class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :screen, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :status
      t.decimal :total_price, default: 0.0, precision: 15, scale: 2


      t.timestamps
    end
  end
end
