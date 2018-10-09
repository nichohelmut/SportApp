class CreateSportlers < ActiveRecord::Migration[5.2]

  def change
    create_table :sportlers do |t|
      t.string :sportler_type
      t.references :trainer, foreign_key: true
      t.references :customer, foreign_key: true
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end

end
