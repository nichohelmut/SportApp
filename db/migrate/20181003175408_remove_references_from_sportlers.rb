class RemoveReferencesFromSportlers < ActiveRecord::Migration[5.2]

  def change
    remove_reference :sportlers, :customer, foreign_key: true
    remove_reference :sportlers, :trainer, foreign_key: true
  end

end
