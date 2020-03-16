class CreateSeatReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :seat_reservations do |t|
      t.references :reservation, null: false, foreign_key: true
      t.references :seat, null: false, foreign_key: true
      t.decimal :price, default: 0.0, precision: 15, scale: 2

      t.timestamps
    end
  end
end
