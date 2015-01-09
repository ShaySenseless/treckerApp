class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :name
      t.decimal :benzin
      t.boolean :available

      t.timestamps null: false
    end
  end
end
