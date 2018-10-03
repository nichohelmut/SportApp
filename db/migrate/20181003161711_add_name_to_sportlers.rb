class AddNameToSportlers < ActiveRecord::Migration[5.2]
  def change
    add_column :sportlers, :name, :string
  end
end
