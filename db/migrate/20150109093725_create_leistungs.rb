class CreateLeistungs < ActiveRecord::Migration
  def change
    create_table :leistungs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
