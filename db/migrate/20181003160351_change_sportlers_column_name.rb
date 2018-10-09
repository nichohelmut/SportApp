class ChangeSportlersColumnName < ActiveRecord::Migration[5.2]

  def change
      change_table :sportlers do |t|
        t.rename :sportler_id, :sportlerpoly_id
        t.rename :sportler_type, :sportlerpoly_type
      end
  end

end
