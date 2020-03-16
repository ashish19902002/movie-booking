class CreateAuditoriumCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :auditorium_categories do |t|
      t.references :auditorium, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
