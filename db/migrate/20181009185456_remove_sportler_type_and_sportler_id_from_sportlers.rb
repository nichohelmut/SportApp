class RemoveSportlerTypeAndSportlerIdFromSportlers < ActiveRecord::Migration[5.2]

  def change
    remove_column :sportlers, :sportlerpoly_type
    remove_column :sportlers, :sportlerpoly_id
  end

end
