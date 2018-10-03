class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.boolean :state
      t.references :customer, foreign_key: true
      t.references :trainer, foreign_key: true

      t.timestamps
    end
  end
end
