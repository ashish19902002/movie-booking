class CreateScreens < ActiveRecord::Migration[6.0]
  def change
    create_table :screens do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :auditorium, null: false, foreign_key: true
      t.timestamp :start_time

      t.timestamps
    end
  end
end
