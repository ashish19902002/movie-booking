class CreateAuditoria < ActiveRecord::Migration[6.0]
  def change
    create_table :auditoria do |t|
      t.string :name
      t.integer :seat_count
      t.references :theater, foreign_key: true

      t.timestamps
    end
  end
end
