class AddSportlerIdToSportlers < ActiveRecord::Migration[5.2]
  def change
    add_column :sportlers, :sportler_id, :integer
  end
end
