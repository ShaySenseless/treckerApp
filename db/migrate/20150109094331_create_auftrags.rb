class CreateAuftrags < ActiveRecord::Migration
  def change
    create_table :auftrags do |t|
      t.date :von
      t.date :bis
      t.references :kunde, index: true

      t.timestamps null: false
    end
    add_foreign_key :auftrags, :kundes
  end
end
