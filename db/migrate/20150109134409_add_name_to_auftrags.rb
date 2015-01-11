class AddNameToAuftrags < ActiveRecord::Migration
  def change
    add_column :auftrags, :name, :string
  end
end
