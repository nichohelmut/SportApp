class ChangeSportsToSportType < ActiveRecord::Migration[5.2]
  def change
    rename_column :trainers , :sports, :sport_type
  end
end
