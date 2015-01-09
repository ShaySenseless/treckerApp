class CreateMitarbeiters < ActiveRecord::Migration
  def change
    create_table :mitarbeiters do |t|
      t.string :vorname
      t.string :nachname
      t.string :handy
      t.string :festnetz
      t.decimal :az_monat
      t.decimal :az_konto

      t.timestamps null: false
    end
  end
end
