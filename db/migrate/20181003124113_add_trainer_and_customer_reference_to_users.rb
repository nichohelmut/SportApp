class AddTrainerAndCustomerReferenceToUsers < ActiveRecord::Migration[5.2]

  def change
    add_reference :users, :trainer, foreign_key: true
    add_reference :users, :customer, foreign_key: true
    add_column :users, :role, :string
  end

end
