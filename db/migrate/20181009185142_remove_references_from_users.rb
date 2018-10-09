class RemoveReferencesFromUsers < ActiveRecord::Migration[5.2]

  def change
    remove_reference :users, :customer, foreign_key: true
    remove_reference :users, :trainer, foreign_key: true
  end

end
