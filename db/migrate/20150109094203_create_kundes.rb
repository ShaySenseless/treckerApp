class CreateKundes < ActiveRecord::Migration
  def change
    create_table :kundes do |t|
      t.string :vorname
      t.string :nachname
      t.string :handynummer
      t.string :festnetz
      t.string :email

      t.timestamps null: false
    end
  end
end
