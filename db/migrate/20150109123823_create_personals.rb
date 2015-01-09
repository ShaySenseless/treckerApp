class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :mitarbeiter
      t.string :machine
      t.string :leistung
      t.references :auftrag, index: true

      t.timestamps null: false
    end
    add_foreign_key :personals, :auftrags
  end
end
