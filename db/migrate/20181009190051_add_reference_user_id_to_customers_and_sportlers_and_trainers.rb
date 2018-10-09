class AddReferenceUserIdToCustomersAndSportlersAndTrainers < ActiveRecord::Migration[5.2]
  def change
    add_reference :customers, :user, foreign_key: true
    add_reference :trainers, :user, foreign_key: true
    add_reference :sportlers, :user, foreign_key: true
  end
end
