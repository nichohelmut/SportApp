class AddDescritptionToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :description, :text
  end
end
