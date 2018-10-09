class CreateTrainers < ActiveRecord::Migration[5.2]

  def change
    create_table :trainers do |t|
      t.string :name
      t.string :sports
      t.integer :price
      t.string :training_location
      t.datetime :time
      t.string :certification
      t.boolean :availiability
      t.string :picture
      t.string :city
      t.string :social_media

      t.timestamps
    end
  end

end
